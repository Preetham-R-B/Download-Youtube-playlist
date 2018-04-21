@echo off

@GOTO Name

You can change videofilenames here:
%%(uploader)s - uploader's name
%%(playlist)s - playlist's name
%%(playlist_index)s - video counter in XXXXX form, starts from 00001 for every playlist
%%(title)s - title as seen on a youtube webpage
%%(ext)s - extension

For a full list run youtube-dl -h in cmd and check -o section.
Attention! Add extra %.
Ex: youtube-dl help: %(ext)s
We need: %%(ext)s 

:Name

@set videoname=%%(playlist)s\%%(playlist_index)s - %%(title)s.%%(ext)s

call config.bat

@GOTO Download

Download every playlist from Playlists.txt.

:Download

@youtube-dl -%parameters% -o "%path%\%videoname%" --batch-file "Playlists.txt"

)
@echo Job is done!
pause


