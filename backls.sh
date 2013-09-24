#!/bin/bash
ls /etc | grep "rc[0-9]" &
echo "The Script quits now!"
wait
