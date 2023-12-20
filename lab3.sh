laboratory work 3

#1
ls /etc | grep [0-9]

#2
echo "Hello" > textFile.txt
grep -E '\b[a-zA-Z]{5}lo\b' textFile.txt

#3
grep -h '[A-Z]' dirlist*.txt # Փնտրում է առնվազն մեկ մեծառառ պարունակող տողեր
grep -h '[-AZ]' dirlist*.txt # Փնտրում է «-»,«A»,«Z» նիշերից ցանկացածը պարունակող տողեր
grep -h'^[A-Z]' dirlist*.txt # Փնտրում է մեծատառով սկսվող տողեր
grep -h '[^A-Z]' dirlist*.txt # Փնտրում է տողեր, որտող կան նաև ուրիշ նիշեր բացի մեծատառերից

#4
grep -wE '^(bz|zip)' dirlist-bin.txt dirlist-sbin.txt

#5
grep -Eh '^(bz|gz|zip)' dirlist*.txt # Փնտրում է «bz»,«gz»,«zip» տողեր
grep -Eh '^bz|gz|zip' dirlist*.txt # Փնտրում է «bz»-ով սկսվող կամ «gz»,«zip» պարունակող տողեր

#6
echo "test@test.com" | grep -E '^[\w\.-]+@[a-zA-Z]+\.[a-zA-Z]{2,}$'

#7
echo "192.168.0.1" | grep -E '^((25[0-5]|2[0-4][0-9]|[0-1]?[0-9][0-9]?)\.){3}(25[0-5]|2[0-4][0-9]|[0-1]?[0-9][0-9]?)$'

#8
echo -e "Hello\nLevel\nWorld" > textFile.txt
grep -wE '\b([a-zA-Z])\w?\1\b' textFile.txt

#9
date -d "01/02/1970" +"%Y-%m-%d"

#10
echo "0xx 12-34-56" | sed -E 's/([0-9]{2})\s([0-9]{2}-[0-9]{2}-[0-9]{2})/(\1) \2/'
