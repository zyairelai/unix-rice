echo "Which session do you want to attach?"
echo "1. core-compounding"
echo "2. futures-omax"
read -p "Enter a number: " userinput

if [ "$userinput" -eq '1' ]
then
  tmux a -t core-compounding

elif [ "$userinput" -eq '2' ]
then
  tmux a -t futures-omax

else
  echo "Invalid Number"
fi
