#TOKEN="<token>"
CHAT_ID="883360324"

read -p "Enter a token": TOKEN
read -p "Enter a message: " message

URL="https://api.telegram.org/bot$TOKEN/sendMessage"

curl -s -X POST $URL \
	-d chat_id=$CHAT_ID \
	-d text="$message"

echo "Message sent!"
