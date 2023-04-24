#!/bin/bash
#
# Branch on condition
#

# Simple demonstrations
if true; then echo True was true; fi
if false; then echo "This does not print because false is not true"; fi

# Demonstrate detecting substrings
needle="foo"
haystack1="The foo and the bar"
haystack2="The baz and the quz"

if [[ "$haystack1" =~ "$needle" ]]
then
    echo "Needle found in first haystack"
fi

if [[ "$haystack2" =~ "$needle" ]]
then
    echo "Needle found in second haystack"
else
    echo "Needle not found in second haystack"
fi
