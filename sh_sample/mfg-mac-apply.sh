#!/bin/sh

addr=`getprop ro.hsm.wlan.addr`

align_addr() {

  local tmp=$1
  local len=${#1}
  local delta

  if [ $len -gt 12 ]; then
    return 1
  elif [ $len -lt 12 ]; then
    let delta=12-$len
    while [ $delta -gt 0 ]; do
      let delta-=1
      tmp=`echo 0$tmp`
    done
  fi

  addr=$tmp

  return 0

}

format_addr() {

  local tmp
  local byte
  local start

  align_addr $1

  if [ $? -eq 1 ]; then
    return 1
  fi

  for start in 0 2 4 6 8 10
  do
    byte=${addr:$start:2}
    if [ -z $tmp ]; then
      tmp=$byte
    else
      tmp=`echo $tmp:$byte`
    fi
  done

  addr=$tmp

  return 0

}

format_addr $addr

if [ $? -eq 0 ]; then
  echo $addr > /sys/bus/platform/drivers/wcnss_wlan/fb000000.qcom,wcnss-wlan/wcnss_mac_addr
fi


addr=`getprop ro.hsm.bt.addr`

format_addr $addr

if [ $? -eq 0 ]; then
  /system/bin/btnvtool -b $addr
fi
