#!/bin/bash
outdir=/usr/share/vim/vim80

cp ./vimrc /etc/
cp ./p*.vim $outdir/syntax/
cp ./cs*.vim $outdir/syntax/
cp ./codedark.vim $outdir/colors/
