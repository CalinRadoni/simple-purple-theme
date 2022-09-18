```sh
#!/bin/bash

# prepare destination directory
baseDir="$HOME/esp"
if [ -d "$baseDir" ]; then
    now=$(/bin/date +%s)
    newDir="${baseDir}.${now}"
    mv "$baseDir" "$newDir"
    echo "$baseDir was saved as $newDir"
fi
mkdir "$baseDir" || exit 1

# get the ESP-IDF repository
cd "$baseDir" || exit 2
git clone -b v4.1 --recursive https://github.com/espressif/esp-idf.git

# install the tools (compiler, debugger, Python packages, etc.)
cd "${baseDir}/esp-idf" || exit 3
./install.sh
```
