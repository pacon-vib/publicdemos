#!/bin/bash
#
# Run a series of steps in sequence
#

echo Step 1
echo Step 2
echo "Step 3" && echo "Step 4 only if Step 3 was successful"
echo "Step 5" || echo "Step 6 only if Step 5 failed"
