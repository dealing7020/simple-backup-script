#! /bin/bash
echo "Please specify which directory you want to backup.
Please use the following format: \"/your/directory/\"" #explain to the user what they have to do
echo "Directory to backup: " #ask them for the source directory
read origin #save their reply to a variable
if [ ! -d "$origin" ]; then #check whether their reply is actually a directory, if not, exit and give an error message
    echo "\"$origin\" is not a valid directory. Please try again."
    exit
fi
echo "Please specify to which directory the files should be backed up to. Please bear in mind that files in the specified directory could be overwritten." #ask the user for the direcotry they want their files backed up to
echo "Directory for backup: "
read backup #save their reply to a variable

if [ -d $origin ]; then
    cp -r $origin. "$backup"
fi
echo "The files in $origin have been backed up to $backup. Thank you for using my script!" #copy the files to the backup directory
