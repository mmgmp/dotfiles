#!/bin/sh

case "$1" in
	*.zip) unzip -l "$1" ;;
	*.rar) unrar l "$1" ;;
	*) cat "$1" ;;
esac
