#!/bin/sh
# update.sh - Automates the site build and SSL renewal
# This script is intended to be run via cron on the hosting server.

# 1. Update the source code
cd /home/loghyr/nfsv4bat.org
git pull origin master

# 2. Rebuild the site (using the modernized Python build system)
make

# 3. Renew SSL Certificates
# Certbot only performs a renewal if the certificate is within 30 days of expiry.
# The --post-hook ensures Apache can read the new certs if they are updated.
certbot renew \
  --config-dir ~/certbot/config \
  --work-dir ~/certbot/work \
  --logs-dir ~/certbot/logs \
  --post-hook "chmod -R 755 ~/certbot/config/live ~/certbot/config/archive"
