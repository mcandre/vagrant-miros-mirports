#!/bin/sh
echo "#!/bin/mksh\nreadlink -f \"\$@\"" >/usr/bin/realpath &&
    chmod a+x /usr/bin/realpath
