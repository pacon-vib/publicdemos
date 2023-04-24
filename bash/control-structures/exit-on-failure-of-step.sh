#!/bin/bash

set -e # Bail on the first sign of trouble

echo Step 1
false # Non-zero exit code i.e. "failure"
echo Step 2 does not run
