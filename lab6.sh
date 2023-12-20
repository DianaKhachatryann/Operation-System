Laboratory work 6

#1
echo "Enter a number: "
read number

if [[ $number -gt 0 ]]; then
    echo "Positive number."
elif [[ $number -lt 0 ]]; then
    echo "Negative number."
else
    echo "The number is 0."
fi

#2
echo "Enter a number: "
read number

if (( number > 0 )); then
    echo "Positive number."
elif (( number < 0 )); then
    echo "Negative number."
else
    echo "The number is 0."
fi

#3
echo "Enter a number: "
read number

if (( number % 2 == 0 )) && (( number % 3 == 0 )) && (( number % 5 == 0 )); then
    echo "$number is a multiple of 2, 3, and 5."
else
    echo "$number is not a multiple of 2, 3, and 5."
fi

#4
echo "Enter a number: "
read number

if (( number % 2 == 0 )) || (( number % 3 == 0 )) || (( number % 5 == 0 )); then
    echo "$number is a multiple of 2, 3, or 5."
else
    echo "$number is not a multiple of 2, 3, or 5."
fi

#5
touch newFile.txt
chmod +rwx newFile.txt

#6
[ -d dir ] || mkdir dir

#7
read -r -p "Enter a number: " number

if ((number >= 10 && number <= 20)); then
	echo "The number is within the range of 10 to 20."
else
	echo "The number is not within the range of 10 to 20."
fi

#8
echo -n "Enter a word: "
read -s word

if [[ $word == "Secret" ]]; then
    echo -e "\nCorrect! The word is 'Secret'."
else
    echo -e "\nIncorrect! The word does not match 'Secret'."
fi

#9
read -r -p "Enter a filename: " filename

if [[ "$fileName" =~ ^[A-Za-z0-9._-]+$ ]]; then
	touch "$fileName"
	echo "File $fileName has been created."
else
	echo "Invalid fileName."
fi

#10
read -r -p "Enter the first number: " num1
read -r -p "Enter the operator (+, -, *, /, **): " operator
read -r -p "Enter the second number: " num2

case $operator in
"+") result=$((num1 + num2));;
    "-") result=$((num1 - num2));;
    "*") result=$((num1 * num2));;
    "/") result=$((num1 / num2));;
    "**") result=$((num1 ** num2));;
*) echo "Invalid operator." ;;
esac
echo "Result: $result"
