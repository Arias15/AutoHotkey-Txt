;Error
MsgBox, Selecciona los archivos que quieres copiar: `n  Pulsa Ctrl+1 para enviar los archivos seleccionados al destino 1 `n  Pulsa Ctrl+2 para enviar los archivos seleccionados al destino 2           ;Lanza una ventana con las instrucciones del script `n hace salto de línea


LCtrl & 1::   ; al pulsar Ctrl+1 se autoteclea Ctrl c (con lo que copia lo que tengamos seleccionado), y nos lo pone en una ventana
SendInput ^c
Sleep 500
MsgBox % Clipboard


Loop, Parse, Clipboard, `n, `r   
    {
     SplitPath, % A_LoopField, NombreArchivo    ;  extraigo el nombre del archivo (sin ruta) en la variable NombreArchivo
     RunWait "C:\Program Files\TeraCopy\TeraCopy.exe" Copy "%A_LoopField%" "Y:\Pruebas AutoHotkeys\Destino 1"  ;ejecuta Teracopy y copia cada archivo del clipboard a su destino
     ; FileCopy % A_LoopField, Y:\Pruebas AutoHotkeys\Destino 1
     FileAppend, % NombreArchivo "`n", log.txt  ;  Hago un registro de los archivos copiados "`n" me hace salto de línea
    }
Return