#!/system/bin/sh

boardid=$(get-board-id)

# Disable proximity sensor on Helsinki EVT1 boards
if [ "$boardid" = "01001" ]; then
	log -t HSM "Disabling proximity sensor for board type"
	setprop hsm.prox.disable true
fi
