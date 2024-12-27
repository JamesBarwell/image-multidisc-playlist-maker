image-multidisc-playlist-maker
---

A script to automate creation of m3u playlists for game emulators.

To play multidisc games in some emulators the user is required to make an `m3u` playlist listing each disc image. This script automates this process by scanning a collection of images and creating the playlist files where appropriate.

It is intended to work with large collections of image files such as Redump sets in ISO or CHD format.


## How to use

The script assumes that your multidisc images are in the format `### (Disc X) ###.###`. Files not matching this pattern are ignored.

If there are existing `m3u` files in the target directory then they will be deleted. The script does not modify any other file types.


Install the script onto your system and give it executable permissions:
```
chmod +x image-multidisc-playlist-maker.sh
```

Run the script, specifying the directory containing your images.

```
image-multidisc-playlist-maker.sh <target-directory-containing-images>
```

## Notes

This script will not work if the disc images are numbered to 10 or above (due to its limited sorting capability). But I'm not aware of examples in the collections.
