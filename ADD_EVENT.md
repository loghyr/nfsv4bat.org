# How to Add a New Event (Modernized)

Adding an event is now simpler. You only need to create the content; the build system handles the layout and directory structure automatically.

### Step 1: Create the Content File
Create a new HTML fragment in `src/`.
- **Name:** `batMMYY.html` (e.g., `bat1026.html` for Oct 2026).
- **Content:** Just the HTML body. No `<html>` or `<head>` tags.

### Step 2: Build
Run `make` in the root directory.
```bash
make
```
The `build.py` script automatically recognizes the `batMMYY.html` pattern and generates:
`Events/20YY/[Month]/BAT/index.html`

### Step 3: Update Summary Pages
Manually add links to the new event in:
1.  `src/announce.html`
2.  `src/events.html`

### Step 4: Commit and Push
```bash
git add src/batMMYY.html src/announce.html src/events.html
git commit -m "Add Oct 2026 Bakeathon"
git push
```
