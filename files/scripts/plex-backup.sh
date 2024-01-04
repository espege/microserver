#!/bin/bash

#DATE=$(date +%m-%d-%Y);
PLEX_PREFERENCES_PATH="/var/lib/plexmediaserver/Library/Application Support/Plex Media Server/Preferences.xml"
BACKUP_DESTINATION=/micropool/backups/plex

function backup_preferences() {
    sudo cp "$PLEX_PREFERENCES_PATH" $BACKUP_DESTINATION
}

sudo mkdir -p $BACKUP_DESTINATION
backup_preferences