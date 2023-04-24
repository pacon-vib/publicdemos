#!/bin/bash
#
# Wait for condition
#

echo "Step 1 before waiting"

# Do something in parallel that we can wait for
rm somefile.txt 2>/dev/null; (sleep 5; touch somefile.txt) &

# Wait
timeout=10
stopwatch=0
until cat somefile.txt 2>/dev/null; do
    echo Waiting
    stopwatch=$((stopwatch+1))
    if [[ $stopwatch -ge $timeout ]]; then echo Timed out; exit -1; fi
    sleep 1
done

echo "Step 2 after waiting"
