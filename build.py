#!/usr/bin/env python
from __future__ import print_function
import os
import re
from datetime import datetime

# Configuration
SRC_DIR = 'src'
DEST_ROOT = '.'
LAYOUT_FILE = os.path.join(SRC_DIR, 'layout.html')

# Months mapping
MONTH_MAP = {
    '01': 'January', '02': 'Feb', '03': 'March', '04': 'Apr',
    '05': 'May', '06': 'June', '07': 'July', '08': 'August',
    '09': 'September', '10': 'October', '11': 'November', '12': 'December'
}

def load_layout():
    with open(LAYOUT_FILE, 'r') as f:
        return f.read()

def get_dest_path(filename):
    # Map Bakeathon filenames: batMMYY.html -> Events/YYYY/Month/BAT/index.html
    match = re.match(r'bat(\d{2})(\d{2})\.html', filename)
    if match:
        month_num, year_short = match.groups()
        year = "20" + year_short
        month = MONTH_MAP.get(month_num, 'Unknown')
        return os.path.join('Events', year, month, 'BAT', 'index.html')

    # Static mappings
    mappings = {
        'index.html': 'index.html',
        'links.html': 'links.html',
        'documents.html': os.path.join('Documents', 'index.html'),
        'events.html': os.path.join('Events', 'index.html'),
        'announce.html': os.path.join('Announcements', 'index.html'),
        'batreqs.html': os.path.join('Documents', 'Requirements', 'event_hosting.html')
    }
    return mappings.get(filename)

def get_event_list():
    events = []
    for filename in os.listdir(SRC_DIR):
        match = re.match(r'bat(\d{2})(\d{2})\.html', filename)
        if match:
            month_num, year_short = match.groups()
            year = int("20" + year_short)
            month_name = MONTH_MAP.get(month_num, 'Unknown')
            path = get_dest_path(filename)
            # Sortable key: (Year, MonthNum)
            events.append({
                'key': (year, int(month_num)),
                'label': "%s %s BAT" % (month_name, year),
                'url': "/" + path
            })
    # Sort newest first
    events.sort(key=lambda x: x['key'], reverse=True)
    return events

def build():
    layout = load_layout()
    build_date = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
    event_list = get_event_list()
    
    # Generate the HTML for the automated list
    auto_html = "<!-- AUTO_EVENTS_START -->\n"
    for ev in event_list:
        auto_html += '    <li><a href="%s">%s</a></li>\n' % (ev['url'], ev['label'])
    auto_html += "    <!-- AUTO_EVENTS_END -->"

    # Process all .html files in src/
    for filename in os.listdir(SRC_DIR):
        if not filename.endswith('.html') or filename in ['layout.html', 'pre_root.html', 'post_root.html']:
            continue
            
        dest_rel_path = get_dest_path(filename)
        if not dest_rel_path:
            continue
            
        src_path = os.path.join(SRC_DIR, filename)
        dest_path = os.path.join(DEST_ROOT, dest_rel_path)
        
        # Ensure directory exists
        dest_dir = os.path.dirname(dest_path)
        if not os.path.exists(dest_dir):
            os.makedirs(dest_dir)
            
        print("Building %s -> %s" % (src_path, dest_path))
        
        with open(src_path, 'r') as f:
            content = f.read()
            
        # Inject the automated event list if markers exist
        if "<!-- AUTO_EVENTS -->" in content:
            content = content.replace("<!-- AUTO_EVENTS -->", auto_html)
            
        final_html = layout.replace('{{ content }}', content)
        final_html = final_html.replace('{{ build_date }}', build_date)
        
        with open(dest_path, 'w') as f:
            f.write(final_html)

if __name__ == "__main__":
    build()
