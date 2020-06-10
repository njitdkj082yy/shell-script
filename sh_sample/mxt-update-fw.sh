#!/system/bin/sh

mxt_sysfs=/sys/bus/i2c/devices/2-004a
mxt_file=$(ls /vendor/firmware/maxtouch_v*.fw)
mxt_file=${mxt_file##* }

installed_mxt_ver=$(cat ${mxt_sysfs}/fw_version)
file_mxt_ver=$mxt_file
file_mxt_ver=${file_mxt_ver#*maxtouch_v}
file_mxt_ver=${file_mxt_ver%.fw}

[ "$1" == "-f" ] && force="Forcing"

function logit() {
	echo $*
	log -t mxt-update-fw.sh $*
}

logit "Installed maxtouch fw version = $installed_mxt_ver"
logit "File maxtouch fw version = $file_mxt_ver"

[ -z "$installed_mxt_ver" -o -z "$file_mxt_ver" ] && logit "Cannot compare versions" && exit 1

if [ "$installed_mxt_ver" != "$file_mxt_ver" -o ${#force} -gt 0 ]; then
	logit "${force} Firmware update to $file_mxt_ver"
	mxt_file_basename=${mxt_file##*/}
	echo "$mxt_file_basename" > ${mxt_sysfs}/update_fw
	logit "Firmware update complete"
else
	logit "Firmware already up to date. Bye."
fi

