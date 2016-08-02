#!/bin/bash

args=$#           # Number of args passed.
lastarg=${!args}
# Note: This is an *indirect reference* to $args ...
echo "lastarg is \"$lastarg\""

# Or:       lastarg=${!#}             (Thanks, Chris Monson.)
# This is an *indirect reference* to the $# variable.
# Note that lastarg=${!$#} doesn't work
