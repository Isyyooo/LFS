s|[ 	][ 	]*| |g
s|\(.*\) [^ ]*header.sed.*|\1|
s|[^ ]*/||g
s|^ *|"|
s| |", "|g
s|$|"|
s|, \([^ ]*\)$| and \1|
s|^|/* DO NOT EDIT!  -*- buffer-read-only: t -*-  This file is automatically generated from |
s|\(.\{60\}[^ ]*\) |\1\
   |g
s|$|.\
   Run "make headers" in your build bfd/ to regenerate.  */\
|
