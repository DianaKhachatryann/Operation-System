Laboratory work 4

#1
touch file.txt
chmod 744 file.txt

#2
chmod a+x file.txt

#3
chmod go-x file.txt

#4
chmod 600 file.txt

#5
mkdir dir
chmod 666 dir
touch dir/file.txt

#6
touch dir/file1.txt dir/file2.txt
chmod 766 dir/*

#7
umask 027

#8
umask 077
umask 022

#9
echo 'ls /home/student' > scr.sh
chmod 741 scr.sh
./scr.sh
chmod +x scr.sh

#10
mkdir ~/bin
mv scr.sh ~/bin
export PATH=$PATH:~/bin

