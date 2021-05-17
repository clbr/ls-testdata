#!/bin/sh -e
git archive HEAD > out.tar
tar -f out.tar --delete .gitignore export.sh
xz -9 out.tar
echo "put out.tar.xz media-test-data.txz" | sftp ftp@libre-soc.org
rm out.tar.xz
