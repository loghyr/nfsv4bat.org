# Contributing to nfsv4bat.org

This site is a static site generated from HTML fragments. It is designed to be easily editable with standard Linux text editors (vim, nano, emacs).

## How to Update the Site

1. **Edit or Add Source Files:** All source content is located in the `src/` directory.
   - For general pages, edit the corresponding `.html` file in `src/`.
   - For new events, create a new `batMMYY.html` file in `src/`.
2. **Commit and Push:** After making your changes, commit and push them to the GitHub repository.
3. **Wait for the Build:** The hosting site pulls changes and rebuilds the site every 8 hours via a cron job.

## Troubleshooting the Build

The build process runs on a CentOS 7.9 host. It uses a `Makefile` in the `src/` directory to assemble the pages by concatenating headers, content, and footers.

If you notice the site is not updating or there are build errors:
- **Contact:** loghyr@gmail.com
- **Check the "Last Built" link:** The left navigation menu on the live site shows the last time the build successfully ran.

## SSL Certificates (HTTPS)

The site uses Let's Encrypt via `certbot` in webroot mode. Because we don't have root access, certbot stores its data in `~/certbot`.

### Manual Renewal/Setup
```bash
certbot certonly --webroot -w ~/nfsv4bat.org -d nfsv4bat.org -d www.nfsv4bat.org --config-dir ~/certbot/config --work-dir ~/certbot/work --logs-dir ~/certbot/logs
```

### Automated Renewal
The automated build and renewal process is managed by the `update.sh` script in the root of the repository.

To set it up on the server:
1. Copy or symlink the script to your home directory: `ln -s ~/nfsv4bat.org/update.sh ~/update.sh`
2. Ensure it's executable: `chmod +x ~/update.sh`
3. Add it to your crontab: `13 */8 * * * ~/update.sh`


The `make` command:
1. Generates a timestamp.
2. Injects it into `src/pre_root.html` to create a temporary `pre_with_date.html`.
3. Concatenates fragments for every page into the root directory.
