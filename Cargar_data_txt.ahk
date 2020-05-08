Gui, Loader: New 
Gui, Loader: Add, Button, Default Center w220 vLOAD, LOAD
Gui, Loader: Show, AutoSize Center, Loader

return

LoaderButtonLOAD:
FileSelectFile, LoadedFile, , , ,

if ErrorLevel=1
{
return
}

else
{
    FileRead, content, %LoadedFile%
    msgbox %content%    
}

return