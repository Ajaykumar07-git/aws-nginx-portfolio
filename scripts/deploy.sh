#!/bin/bash

echo "========== AWS Nginx Deployment =========="

SOURCE_DIR="$HOME/projects/aws-nginx-portfolio/website"
TARGET_DIR="/usr/share/nginx/html"
BACKUP_DIR="$HOME/nginx-backup"

echo "Checking source directory..."

if [ ! -d "$SOURCE_DIR" ]; then
    echo "ERROR: Source directory not found."
    exit 1
fi

echo "Creating backup directory..."
mkdir -p "$BACKUP_DIR"

echo "Backing up existing website..."
cp -r "$TARGET_DIR"/* "$BACKUP_DIR"/

echo "Deploying website..."
sudo cp -r "$SOURCE_DIR"/* "$TARGET_DIR"/

echo "Checking Nginx configuration..."
sudo nginx -t

if [ $? -ne 0 ]; then
    echo "Nginx configuration test failed."
    exit 1
fi

echo "Reloading Nginx..."
sudo systemctl reload nginx

echo "Deployment completed successfully."
