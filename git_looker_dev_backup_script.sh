#!/bin/bash

cd /home/looker/GDX-Analytics-Gazer-Looker-Dev-Integration
# Run the gzr space export commands
gzr space export 21 --no-verify-ssl --host=dev.analytics.gov.bc.ca
gzr space export 11 --no-verify-ssl --host=dev.analytics.gov.bc.ca
gzr space export 32 --no-verify-ssl --host=dev.analytics.gov.bc.ca


# Commit all changes with a customized message
git add .
git commit -m "Backup Looker data at $(date +"%Y-%m-%d %H:%M:%S")"

# Push changes to the dev-backup branch (verify that the branch exists)
git push origin dev-backup

