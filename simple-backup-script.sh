#! /bin/bash
echo "Please specify which directory you want to backup. Please bear in mind that files may be overwritten in the specified directory.
Please use the following format: \"/your/backup/directory/\""
echo "Directory to backup: "
read origin
if [ ! -d "$origin" ]; then
    echo "\"$origin\" is not a valid directory. Please try again."
    exit
fi
echo "Please specify to which directory the files should be backed up to"
echo "Directory for backup: "
read backup

if [ -d $origin ]; then
    cp -r $origin. "$backup"
fi
echo "The files in $origin have been backed up to $backup"
