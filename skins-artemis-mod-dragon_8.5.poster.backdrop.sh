#!/bin/sh
echo "Installing skin: artemis-mod-dragon_poster-backdrop"

cd /tmp

if ! command -v curl >/dev/null 2>&1; then
    echo "Installing curl..."
    opkg update
    opkg install curl
    sleep 2
fi

echo "Downloading skin file..."
curl -k -L -m 60 "https://github.com/emil237/skins-openatv/raw/refs/heads/main/enigma2-plugin-skins-artemis-mod-dragon_8.5.poster.backdrop_all.ipk" -o enigma2-plugin-skins-artemis-mod-dragon_8.5.poster.backdrop_all.ipk

sleep 1
echo "Installing skin..."
if opkg install /tmp/enigma2-plugin-skins-artemis-mod-dragon_8.5.poster.backdrop_all.ipk; then
    echo "Skin installed successfully."
else
    echo "Skin installation failed!"
fi

sleep 1

rm -f /tmp/enigma2-plugin-skins-artemis-mod-dragon_8.5.poster.backdrop_all.ipk

sleep 2
exit

