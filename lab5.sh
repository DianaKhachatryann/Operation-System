Laboratory work 5

#1
str="Hello"
echo $str2 # str2
echo ${str}2 # Hello2

#2
echo $((5*5*4/10))

#3
echo "The balance for user $USER is: $5.00" # The balance for user Diana is: .00
echo "The balance for user $USER is: \$5.00" # The balance for user Diana is: $5.00

#4
echo '$USER $((2 + 2)) $(ls)' # $USER $((2 + 2)) $(ls)
echo "$USER $((2 + 2)) $(ls)" # Diana 4 labs main.sh

#5
current_dir=$(pwd)
num_files=$(ls -l | grep -c "^-")
cat <<EOF
Current directory: $current_dir
Number of files: $num_files
EOF

#6
add_numbers() {
    sum=$(( $1 + $2 ))
    echo "Sum: $sum"
}

add_numbers 3 5

#7
CountFiles() {
    directory=$1
    numFiles=$(ls -A "$directory" | wc -l)
    echo "Number of files in $directory: $numFiles"
}

CountFiles /path/to/directory

#8
touch newFile.txt
if [ -e newFile.txt ]; then
	chmod +rwx newFile.txt
	echo " There is a possibility to write, read, perform."
else
	echo "File newFile.txt doesn't exist."
fi

#9
Max(){
if [ $num1 -gt $num2 ]; then
    echo "$num1 is larger."
else
    echo "$num2 is larger."
fi
}
Max 5 10

#10
CheckEvenOdd(){
if [ $(($number % 2)) -eq 0 ]; then
    echo "$number is even."
else
    echo "$number is odd."
fi
}
CheckEvenOdd 11
CheckEvenOdd 22
