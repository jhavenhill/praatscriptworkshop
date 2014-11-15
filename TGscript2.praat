# This script measures the sound sayXagain.wav
# For duration, F1, and F2, and exports the results
# to a tab-delimited text file
#
# Jon Havenhill - 15 Nov 2014 - jeh241@georgetown.edu


# Check whether results file is readable, create it if not
if fileReadable ("results.txt") == 1
    writeInfoLine("results file detected")
    appendFileLine("results.txt", newline$)    
else
    writeInfoLine("File not detected. Creating
    ... results.txt...")
    writeFileLine("results.txt", "word", tab$, "vowel", tab$, "duration", tab$, "F1", tab$, "F2") 
endif

# Set up Picture window
Select outer viewport... 0 6 0 5
Erase all
Black
18
Axes... 2500 200 1000 400
Draw inner box
Marks right every... 1 100 yes yes yes
Text right... yes F1 (Hz)
Marks top every... 1 300 yes yes yes
Text top... yes F2-F1 (Hz) 

# Create Formant object of sound for analysis
selectObject ("Sound sayXagain")
do ("To Formant (burg)...", 0.0, 5, 5500, 0.025, 50)

# Get number of intervals in TextGrid
selectObject ("TextGrid sayXagain")
nInt = do ("Get number of intervals...", 2)

for i to nInt
    selectObject ("TextGrid sayXagain")
    word$ = do$ ("Get label of interval...", 2, i)

    # Check whether interval is labeled, if yes, analyze
    if word$ <> ""
    	vowel$ = do$ ("Get label of interval...", 3, i)
    	vowelStart = do ("Get start point...", 3, i)
    	vowelEnd = do ("Get end point...", 3, i)
    	vowelDur = vowelEnd - vowelStart
    	vowelMid = (vowelEnd + vowelStart) / 2

    	# Select Formant so we can measure F1/F2
    	selectObject ("Formant sayXagain")

    	f1 = do ("Get value at time...", 1, vowelMid, "Hertz", "Linear")
    	f2 = do ("Get value at time...", 2, vowelMid, "Hertz", "Linear")

    	# Write results to File
    	appendFileLine("results.txt", word$, tab$, vowel$, tab$, fixed$ (vowelDur, 2), tab$, fixed$ (f1, 2), tab$, fixed$ (f2, 2))
    	# Write results to Info window
    	appendInfoLine(word$, tab$, vowel$, tab$, fixed$ (vowelDur, 2), tab$, fixed$ (f1, 2), tab$, fixed$ (f2, 2)) 
   		
   		# Bonus: plot vowels to picture window
		do ("Text...", f2-f1, "Centre", f1, "Half", vowel$)
   	endif
endfor

do ("Save as PDF file...", "vowelplot.pdf")




