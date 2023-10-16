#! /bin/bash
echo "Please specify which directory you want to backup. Please bear in mind that files may be overwritten in the specified directory.
Please use the following format: \"/your/backup/directory/\"" #explain to the user what they have to do
echo "Directory to backup: " #ask them for the source directory
read origin #save their reply to a variable
if [ ! -d "$origin" ]; then #check whether their reply is actually a directory, if not, exit and give an error message
    echo "\"$origin\" is not a valid directory. Please try again."
    exit
fi
echo "Please specify to which directory the files should be backed up to" #ask the user for the direcotry they want their files backed up to
echo "Directory for backup: "
read backup #save their reply to a variable

if [ -d $origin ]; then
    cp -r $origin. "$backup"
fi
echo "The files in $origin have been backed up to $backup" #copy the files to the backup directory
