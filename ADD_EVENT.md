# How to Add a New Event

Based on the historical pattern of event additions (e.g., Spring 2025, Fall 2025, and Fall 2024 Bakeathons), here is the step-by-step process for adding a new event to the site.

---

### Step 1: Create the Event Content File
Create a new HTML file in the `src/` directory following the naming convention `batMMYY.html` (e.g., `bat1026.html` for October 2026).

- **Source Location:** `src/batMMYY.html`
- **Content:** This file should only contain the **body content** of the page. Do not include `<html>`, `<head>`, or `<body>` tags, as the build process wraps this file in `pre_root.html` and `post_root.html`.

### Step 2: Register the Event in `src/Makefile`
You must tell the build system where the final file should be placed in the public directory structure.

1.  Open `src/Makefile`.
2.  Add the destination path to the `EVENTS` variable:
    ```make
    EVENTS = \
        ...
        $(DESTROOT)/Events/2026/October/BAT/index.html
    ```
3.  Add the specific build rule at the bottom of the file:
    ```make
    $(DESTROOT)/Events/2026/October/BAT/index.html: bat1026.html header_with_date $(POST)
        $(MKDIR) $(@D); $(CAT) pre_with_date.html $< $(POST) > $@
    ```

### Step 3: Update Navigation & Listings
To make the new event discoverable, update the following "summary" pages:

#### 1. Announcements (`src/announce.html`)
Add a link to the new event's `index.html` at the top of the announcements list.
```html
<p><a href="/Events/2026/October/BAT/index.html">October 2026 Bakeathon</a></p>
```

#### 2. Events List (`src/events.html`)
Add the new event to the main events table or list.
```html
<li><a href="/Events/2026/October/BAT/index.html">October 2026 Bakeathon</a></li>
```

---

### Step 4: Build and Verify
Run `make` in the root directory to generate the new files.

```bash
make
```

Verify that the new directory `Events/YYYY/Month/BAT/index.html` has been created and looks correct in your browser.

### Step 5: Commit and Push
Once verified, commit your changes to git. The automated build on the hosting server will pick up the changes within 8 hours.

```bash
git add src/batMMYY.html src/Makefile src/announce.html src/events.html
git commit -m "Add October 2026 Bakeathon event"
git push
```

---

### Note on Modernization
*Note: In the modernized build system, if you just want a page to appear at the root (e.g., `nfsv4bat.org/myevent.html`), you only need to create `src/myevent.html` and the Makefile will find it automatically. However, for the nested directory structure used for Bakeathons (`/Events/YYYY/Month/BAT/index.html`), the manual registration in `src/Makefile` (Step 2) is still required to maintain the specific URL structure.*
