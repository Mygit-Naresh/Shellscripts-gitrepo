#!/bin/bash

SOURCEDIR=""
ACTION=""
DESTINATION=""
TIME=""
NAME=""
OPTIONS=":s:a:d:t:n:"
while getopts ${OPTIONS} option; do
    case $option in
        s) SOURCEDIR="$OPTARG" ;;
        a) ACTION="$OPTARG" ;;
        d) DESTINATION="$OPTARG" ;;
        t) TIME="$OPTARG" ;;
        n) NAME="$OPTARG" ;;
        ?) USAGE; exit 1 ;;
        :) echo "Option -$OPTARG requires an argument."; USAGE; exit 1 ;;
    esac
done

USAGE() {
    echo -e "Please specify:
    -s as source directory
    -a as action (archive or delete)
    -d as destination directory (for archive action)
    -t number of days for file modification time
    -n name pattern for files (optional)"
}

if [ -z "$SOURCEDIR" ] || [ -z "$ACTION" ] || [ -z "$TIME" ]; then
    echo "Missing required options."; USAGE; exit 1
fi

if [ "$ACTION" != "archive" ] && [ "$ACTION" != "delete" ]; then
    echo "Invalid action specified."; USAGE; exit 1
fi

if [ "$ACTION" = "archive" ]; then
    if [ -z "$DESTINATION" ]; then
        echo "Destination directory is required for archive action."; USAGE; exit 1
    fi
    echo "This will take action as $ACTION on $SOURCEDIR and move to $DESTINATION"
    zip -r $DESTINATION.zip  $SOURCEDIR
else
    echo "This will take action as $ACTION and delete files from $SOURCEDIR"
    # Implement delete action here
    find "$SOURCEDIR" -type f -mtime +"$TIME" -name "$NAME" #-exec rm -f {} +
    rm -rf $SOURCEDIR
fi
