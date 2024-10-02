#!/bin/bash
# A script for basic file operations: create, rename, and delete

echo "Select an operation:"
echo "1. Create a file"
echo "2. Rename a file"
echo "3. Delete a file"
read operation

case $operation in
    1)  # Create a file
        echo "Enter the file name to create:"
        read filename
        if [ -f "$filename" ]; then
            echo "File already exists!"
        else
            touch "$filename"
            echo "File '$filename' created successfully."
        fi
        ;;
    2)  # Rename a file
        echo "Enter the current file name to rename:"
        read oldname
        if [ -f "$oldname" ]; then
            echo "Enter the new name for the file:"
            read newname
            mv "$oldname" "$newname"
            echo "File renamed to '$newname'."
        else
            echo "File '$oldname' does not exist!"
        fi
        ;;
    3)  # Delete a file
        echo "Enter the file name to delete:"
        read filename
        if [ -f "$filename" ]; then
            rm "$filename"
            echo "File '$filename' deleted."
        else
            echo "File '$filename' does not exist!"
        fi
        ;;
    *)  # Invalid option
        echo "Invalid operation selected."
        ;;
esac
