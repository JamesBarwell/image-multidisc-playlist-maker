#!/bin/sh

target_dir=${1}

if [ ! -d "${target_dir}" ]; then
    echo "Error: no directory exists at: ${target_dir}"
    exit 1
fi

rm -f ${target_dir}/*.m3u

find ${target_dir} -maxdepth 1 -type f -regextype sed -regex ".* (Disc [0-9]\+).*" | sort | while read filepath; do
    filename="${filepath##*/}"
    group_path=$(echo $filepath | sed -r 's/ \(Disc [0-9]\)//g')
    group_path_no_ext="${group_path%.*}"
    playlist_filepath="${group_path_no_ext}.m3u"

    echo $filename >> $playlist_filepath

    echo "Add: [${filename}] to [${playlist_filepath}]"
done

