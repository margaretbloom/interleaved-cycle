#!/usr/bin/env bash

sizes=(10 15 20 25 30 35 40 45 50 55 60 65 70 75 80 85 90 95 100)


for T in "${sizes[@]}"
do
	make T=$T 1>/dev/null
    echo -n "$T "
    res="$(ocperf.py stat -r 5 -e cycles:u '-x ' ./main-$T 2>&1 > /dev/null)"
    echo $res | cut '-d ' -f1

done
