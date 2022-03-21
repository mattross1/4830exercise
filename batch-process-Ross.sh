#! /bin/sh
for f in "$1"; do
	if [ -f "$f" ]; then
		SIZE="$(du -sh "${f}" | cut -f1)"
		CMDS="$(wc -w "${f}" | cut -d' ' -f1)"
		echo "Processing $f file..."
		echo "Size of file is $SIZE"
		echo "Word count is $CMDS"
	fi
done

