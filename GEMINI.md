# nfsv4bat.org

This project maintains the `nfsv4bat.org` website, which provides information about NFSv4 interoperability testing events (Bake-A-Thons, Connect-A-Thons, etc.).

## Project Overview

The project is a static site generator using a fragment-based system. It is designed to be maintained with simple Linux tools (`make`, `cat`, `sed`, `date`).

### Technologies
- **Build System:** `GNU Make` (v3.82+ on CentOS 7).
- **Frontend:** HTML 4.01, Vanilla CSS.
- **Hosting:** CentOS 7.9 (Apache).

## Maintenance & Modernization

### Build Process (Modernized)
The build process is automated on the host via a cron job that runs `update.sh` every 8 hours.

**Key features:**
- **Auto-discovery:** The `src/Makefile` automatically finds and processes new `.html` files in the root source directory.
- **Last Built Timestamp:** Every build injects a current timestamp into the site's navigation menu.
- **Hand-editable:** All files are standard HTML fragments that can be edited with `vim`, `nano`, etc.

### Deployment Contact
For issues with the build or site updates, contact **loghyr@gmail.com**.

## Building Locally

To build the site locally:
```bash
make
```
This generates the final HTML files in the project root.

## Development Conventions

- **Source Files:** All editable content is in `src/`.
- **Fragments:** `pre_root.html` (header/nav) and `post_root.html` (footer).
- **Event Pages:** Named `batMMYY.html` in `src/`.
- **Generated Files:** Files in the root (like `index.html`) are **generated** by the build and should not be edited directly.

For more details on contributing, see [CONTRIBUTING.md](CONTRIBUTING.md).
