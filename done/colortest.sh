#!/bin/sh

function RGBcolor {
    echo "16 + $1 * 36 + $2 * 6 + $3" | bc
}

fg=$(RGBcolor 1 0 2)  # Violet
bg=$(RGBcolor 5 3 0)  # Bright orange.

echo -e "\\033[1;38;5;$fg;48;5;${bg}mviolet on tangerine\\033[0m"
