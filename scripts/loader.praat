# loader.praat - load all of the (lowercase) .wav files from dir$
# into the Objects list
# Written by Kevin McGowan

dir$ = "stimuli/"
strings = do( "Create Strings as file list...", "list", dir$ + "/*.wav" )

numberOfFiles = do( "Get number of strings" )

for ifile to numberOfFiles
    selectObject( strings )
    fileName$ = do$( "Get string...", ifile )
    do( "Read from file...", dir$ + "/" + fileName$ )
endfor

removeObject( strings )
