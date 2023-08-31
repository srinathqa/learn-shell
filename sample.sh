ls -a
ls -ltr

uname
uname -a
ls

mkdir test
cd test
touch abc.txt 123.txt

ls -ltr
List Files & Directories
ls
ls -l
ls -A
ls -A -l

Create Files
touch file.txt

Copy Files
cp file.txt new-file.txt

Rename Files
mv file.txt FILE.txt

Create Directories
mkdir demo

Copy Directory
cp -r dir1 dir2

Move files from one directory to another
mv file dir

Remove Directory
rm -rf demo

List Content
cat file

View top and end lines
head file
head -n 3 file
tail file
tail -n 3 file

Search for a word and print the lines
grep word file-name

Filter with colum
awk -F , '{print $1}' file.csv

Editor (vim)

Find the files

find / -name "passwd"

Browse and Download
curl -L google.com
curl -o file.zip http://domain.com/file.zip
curl -O http://domain.com/file.zip

Extract files
tar -xf sample.tar.gz
unzip file.zip

Check process running
ps -ef
ps -ef | grep nginx

User Management
useradd demo

Package Management
yum install nginx -y
yum list all | grep nginx

Service Management
systemctl start nginx
systemctl enable nginx
systemclt restart nginx

Permissiong Management
chmod u+x file.txt
chown demo:demo file.txt
chown demo:demo dir1 -R