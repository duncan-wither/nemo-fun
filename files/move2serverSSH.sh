#!/bin/sh

# This copies a file to a selectable server.

# Notice
# Comment or delete the next line, once the correct username, IPs and nicknames.
notify-send "Configure Server to Send" "This nemo action (move2serverSSH) needs to be configured." ; return 1 2>/dev/null || exit "1"

UNAME=you-name

# Providing list of IP addresses
RESP=$(zenity --list --radiolist \
  --title="Choose Server to Send to:" \
  --column="" --column="Server" --column="Nickname" \
    True 192.168.1.100 "Server 1" \
    False 192.168.1.100 "Server 2" \
    False "??" "Other" )

echo $RESP

# Alternative options
if [ "$RESP" = "??" ];then
    SERV=$(zenity --entry \
    --title="Alternative Server" \
    --text="Enter address of server:" \
    --entry-text "192.168.1.")

    if [ $SERV="" ]; then
        notify-send "Copy Cancelled" "Copy to server was cancelled"
        return 1 2>/dev/null || exit "1"
    fi
else
    SERV=$RESP
fi

# Making a downloards folder (~/Downloards/SCP/)
ssh $UNAME@$SERV "[ -d Downloads/SCP ] || mkdir Downloads/SCP "

# Making the transfer.
xterm -e "echo Transfering File \"$1\" ... ; scp -C \"$1\" $UNAME@$SERV:/home/$UNAME/Downloads/SCP; echo Done; sleep 3"
# The XTERM window allows for progress to be seen.

# Notification for when complete
notify-send "File Sent" "The following file has finished sending:\n $1"
