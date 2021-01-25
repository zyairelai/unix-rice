echo "Which session do you want to attach?"
echo "1. core-compounding-BTC"
echo "2. core-compounding-USD"
echo "3. futures-omax"
echo "4. heikin-ashi-10x"
read -p "Enter a number: " userinput

if [ "$userinput" -eq '1' ]
then
  tmux a -t core-compounding-BTC

elif [ "$userinput" -eq '2' ]
then
  tmux a -t core-compounding-USD

elif [ "$userinput" -eq '3' ]
then
  tmux a -t futures-omax

elif [ "$userinput" -eq '4' ]
then
  tmux a -t heikin-ashi-10x

else
  echo "Invalid Number"
fi
