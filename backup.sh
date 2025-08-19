#!/bin/bash

SOURCE_DIR=$1
DEST_DIR=$2

BACKUP_NAME="$(basename "$SOURCE_DIR").tar.gz"


# check the two arguments

if [ "$#" -ne 2 ]; then

    echo "$0  <source_dir> <dest_dir> "
    exit 1
fi

# check if the source disectory exits or not

if [ ! -d "$SOURCE_DIR" ]; then

        echo "Error source '$SOURCE_DIR' does not exits."
        exit 1
fi

# create the destination 
mkider -p "$DEST_DIR"

# Create the backup

tar -czf "$DEST_DIR/$BACKUP_NAME" -C "$(dirname "$SOURCE_DIR")" "$(basename "$SOURCE_DIR")"

echo "Backup of '$SOURCE_DIR' created at '$DEST_DIR/$BACKUP_NAME'"

