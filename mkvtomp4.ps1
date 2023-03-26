$env:Path += ';C:\ffmpeg'

$fileNames = Get-ChildItem -Path $scriptPath -Recurse -Include *.mkv

for ($i=0; $i -lt $fileNames.Count; $i++) {
    $outfile = $fileNames[$i].FullName.subString(0, $fileNames[$i].FullName.length-3) + "mp4" 
	Write-Output $outfile;
    ffmpeg.exe -i $fileNames[$i] -loglevel error -map 0 -vcodec copy -acodec copy $outfile 
}


