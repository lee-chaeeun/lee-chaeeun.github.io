#!/bin/bash

start=5
end=15

# check if arguments are passed
if [ $# -eq 2 ]; then
    start=$1
    end=$2
fi

for i in $(seq $start $end); do
    # check if the photo number is divisible by 4 to close the previous container and start a new one
    if (( ($i - 5) % 4 == 0 )); then
        echo '</div>'
        echo '<div class="container">'
    fi
    echo '<a href="photos/photo'$i'.html"><img src="photos/files/photo'$i'.png" alt="Photo '$i'" class="photo"></a>'
done

echo '</div>'

