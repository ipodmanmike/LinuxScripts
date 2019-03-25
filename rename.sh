Here is a simple bash script for changing all extensions of files in the current directory from ext1 to ext2. Also outputs names of the files being renamed.

#!/bin/bash
for f in *.$1
do
    [ -f "$f" ] && mv -v "$f" "${f%$1}$2"
done
