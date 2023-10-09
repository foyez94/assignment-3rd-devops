# assignment-3rd-devops
This documentation outlines the steps taken to create a new user, manage files and directories, modify permissions, create groups, and perform text file manipulation on an Ubuntu system.

User Creation

Adding a User

To create a new user named "user," the following commands were used:

sudo adduser user

# Verifying User Information
id user
Directory Management

Creating Directories

mkdir os-concepts
mkdir ubuntu-is-the-best
Creating and Listing Files

touch os-concepts/file{1..2}.txt
touch ubuntu-is-the-best/file{1..2}.txt

# listing files
ls -l ubuntu-is-the-best/
Modifying File Permissions

chmod 640 file2.txt
Group Management

groupadd second
# ownership to the newly created group
chown :second *.txt

# show last 3 lines of the group file
tail -3 /etc/group
Text File Manipulation

Creating and Editing Text Files

vim crash.in


#Searching for Files
find / -name crash.in
Replacing Text in Files

sed -i 's/crash/broken/gi' os-concepts/crash.in
sed -i 's/crash/broken/gi' ubuntu-is-the-best/crash.in
