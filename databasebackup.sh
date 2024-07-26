#!/bin/bash

# Variables
DB_NAME="mydatabase"
DB_USER="user"
DB_PASS="password"
BACKUP_DIR="/path/to/backup"
DATE=$(date +%Y%m%d%H%M%S)
BACKUP_FILE="db-backup-$DATE.sql"

# Backup database
mysqldump -u $DB_USER -p$DB_PASS $DB_NAME > $BACKUP_DIR/$BACKUP_FILE

echo "Database backup completed: $BACKUP_FILE"
