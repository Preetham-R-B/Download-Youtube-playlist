@echo off

@GOTO Name

You can change videofilenames here:
%%(uploader)s - uploader's name
%%(title)s - title as seen on a youtube webpage
%%(ext)s - extension

For a full list run youtube-dl -h in cmd and check -o section.
Attention! Add extra %.
Ex: youtube-dl help says: %(ext)s
We need: %%(ext)s 

:Name

@set videoname=%%(upload_date)s - %%(title)s.%%(ext)s

@GOTO UserFolder

Asks channel name and stores it under a variable "user".

:UserFolder

call config.bat

@set /p user=Type channel to download:

@GOTO Download

Download every video from the channel.

:Download

@youtube-dl -%parameters% -o "%path%\%user%\%videoname%" ytuser:"%user%

)
@echo Job is done!
pause


