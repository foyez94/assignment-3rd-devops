adduser user
# Adding user `user' ...
# Adding new group `user' (1002) ...
# Adding new user `user' (1002) with group `user' ...
# Creating home directory `/home/user' ...
# Copying files from `/etc/skel' ...
# Enter new UNIX password:
# Retype new UNIX password:
# passwd: password updated successfully

id user
# uid=1002(user) gid=1002(user) groups=1002(user)

ls /home
# ubuntu  user  vagrant


mkdir os-concepts
mkdir ubuntu-is-the-best


ls
# os-concepts  ubuntu-is-the-best

touch os-concepts/file{1..2}.txt
ls os-concepts/
# file1.txt  file2.txt

touch ubuntu-is-the-best/file{1..2}.txt
ls -l ubuntu-is-the-best/
# total 0
# -rw-r--r-- 1 root root 0 Oct  8 00:32 file1.txt
# -rw-r--r-- 1 root root 0 Oct  8 00:32 file2.txt

chmod 640 file2.txt
ls -l
# total 0
# -rw-r----- 1 root root 0 Oct  8 00:31 file1.txt
# -rw-r----- 1 root root 0 Oct  8 00:31 file2.txt


groupadd second
tail -2 /etc/group
# user:x:1002:
# second:x:1003:

/os-concepts# chown :second *.txt
/os-concepts# ls -l
# total 0
# -rw-r----- 1 user second 0 Oct  8 00:31 file1.txt
# -rw-r----- 1 user second 0 Oct  8 00:31 file2.txt


tail -3 /etc/group
# ubuntu:x:1001:
# user:x:1002:
# second:x:1003:user


id user
# uid=1002(user) gid=1002(user) groups=1002(user),1003(second)

(in both directory)
vim crash.in
cat ubuntu-is-the-best/crash.in
# Hello, this is a simple text file where crash is included.
# crash means faulty
# crash means bad

find / -name crash.in
# /home/user/ubuntu-is-the-best/crash.in
# /home/user/os-concepts/crash.in


sed -i 's/crash/broken/gi' os-concepts/crash.in
sed -i 's/crash/broken/gi' ubuntu-is-the-best/crash.in
