# mkvtomp4
mkv2mp4

support SMB, NFS, UNC path

Make sure FFMPEG is installed to C:/ffmpeg (if you installed it at a different location, you can edit the .bat file)
Place the mkvtomp4.ps1 file in a folder
Copy some .mkv files into the same folder
Run script

It should preserve all of the audio tracks and process fairly quickly. It isn't re-encoding, but just extracting and placing in a new container.
