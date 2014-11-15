# This script selects the TG HelloWorld
# Determines the midpoint of each vowel, adds a point
# Calculates the duration and prints to Info window

selectObject: "TextGrid ServusWoid"
nInt = Get number of intervals: 2

for i to nInt
    label$ = Get label of interval: 2, i

    if label$ <> ""
        intStart = Get start point: 2, i
        intEnd = Get end point: 2, i

        midpoint = (intEnd + intStart) / 2
        Insert point: 3, midpoint, ""

        duration = intEnd - intStart
        appendInfoLine: "The duration of """, label$, """ is: ", fixed$ (duration, 2), " seconds."
    endif
endfor

        
        
