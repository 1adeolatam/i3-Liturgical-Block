#!/bin/bash

TODAY=$(date +"%y%m%d")

ping -q -c 1 1.1.1.1 >/dev/null || exit 1
link="https://universalis.com/$TODAY/today.htm"
curl -s $link > ~/.cache/prayer

feastname=$(grep 'feast' ~/.cache/prayer | cut -d'>' -f3 | cut -d'<' -f1)

final=$(echo "✝" $feastname "📿")
echo $final

case $BLOCK_BUTTON in
	1) $BROWSER $link ;;
	2) $BROWSER $link ;;
	3) $BROWSER $link ;;
esac
