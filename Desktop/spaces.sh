#!/bash/bin

echo "Ramesh"|sed 's/.\{1\}/& /g'
expr length "$1"
expr length "$2"
if [$2 = $1/2];
then 
echo "hurray"
else 
echo "not matched"
fi


