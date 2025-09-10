#!/bin/bash
MAX=$(brightnessctl m)
CURRENT=$(brightnessctl g)
PERCENTAGE=$(awk "BEGIN { print $CURRENT / $MAX }")
echo $PERCENTAGE