#!/bin/bash

set -e

SOURCE_DIR="$HOME/projects/aws-nginx-portfolio/website"
TARGET_DIR="/usr/share/nginx/html"

BACKUP_DIR="$HOME/nginx-backup/$(date +%Y%m%d-%H%M%S)"
LOG_FILE="$HOME/deployment-logs/deploy-$(date +%Y%m%d).log"

GREEN="\e[32m"
RED="\e[31m"
BLUE="\e[34m"
NC="\e[0m"

log() {
    echo "$(date '+%F %T') : $1" | tee -a "$LOG_FILE"
}

echo -e "${BLUE}"
echo "========================================"
echo " AWS Nginx Deployment"
echo "========================================"
echo -e "${NC}"

log "Deployment started"

if [ ! -d "$SOURCE_DIR" ]; then
    echo -e "${RED}Source directory not found.${NC}"
    log "Source directory missing"
    exit 1
fi

mkdir -p "$BACKUP_DIR"

log "Creating backup"

cp -r "$TARGET_DIR"/* "$BACKUP_DIR"/

log "Deploying website"

sudo cp -r "$SOURCE_DIR"/* "$TARGET_DIR"/

log "Testing Nginx configuration"

sudo nginx -t

log "Reloading Nginx"

sudo systemctl reload nginx

log "Deployment completed successfully"

echo -e "${GREEN}"
echo "Deployment Successful"
echo -e "${NC}"
