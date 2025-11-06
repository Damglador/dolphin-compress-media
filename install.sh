#!/usr/bin/env bash

basedir="$(dirname "$0")"
if [ -f "${XDG_BIN_HOME:-$HOME/.local/bin}/resize-media" ] && [ "$1" != "-f" ]; then
    cat << EOF
File «${XDG_BIN_HOME:-$HOME/.local/bin}/resize-media» already exists.
EOF
    while true; do
        read -rp "Replace the file? [y/N] " input
        [ -z "$input" ] && input=n
        [ "${input,,}" == n ] && break
        [ "${input,,}" == y ] && \
            install -Dm755 "$basedir/resize-media" \
                "${XDG_BIN_HOME:-$HOME/.local/bin}/resize-media" && break
    done
else
    install -Dm755 "$basedir/resize-media" \
        "${XDG_BIN_HOME:-$HOME/.local/bin}/resize-media"
fi
install -Dm755 "$basedir/compress-media.desktop" \
    "${XDG_DATA_HOME:-$HOME/.local/share}/kio/servicemenus/compress-media.desktop"
