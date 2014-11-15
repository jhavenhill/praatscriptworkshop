# This contains many of the example scripts
# shown during the GLSA Praat Scripting Workshop
# November 15, 2014

    f0 = 188
    a = f0 div 10
    b = f0 mod 10
writeInfoLine ("The value of a is ", a, ".")
appendInfoLine ("The value of b is ", b, ".")

        f0 = 233.23792719
        writeInfoLine ("The F0 is: ", percent$(f0, 2), " Hz.")
	f0$ = string$ (f0)
	f0 = number (f0$)

  	score = 87.3 / 100
        writeInfoLine ("Your score is: ", percent$(score, 2))

fileName$ = "vowels.wav"
      tgName$ = fileName$ - ".wav" + ".TextGrid"
      writeInfoLine("The name of the TextGrid
      ... is: ", tgName$)

    word$ = "exquisite"
    wordLength = length (word$)
    writeInfoLine("There are ", wordLength, " characters in ", word$)

    string$ = "5e6"
    value = number (string$) * 2
    writeInfoLine("The value is: ", value)

    word$ = "working"
    wordEnding$ = right$ (word$, 3)
    writeInfoLine("The last three letters are: ",
    ... wordEnding$)

    word$ = "working"
    wordEnding$ = right$ (word$, 3)
    wordStem$ = left$ (word$, 4)
    writeInfoLine("The last three letters are: ",
    ... wordEnding$)
    appendInfoLine("The word stem is: ", wordStem$)

    word$ = "working"
    preceding$ = mid$ (word$, 4, 1)
    writeInfoLine("The preceding segment is: ",
    ... preceding$)

    word$ = "working"
    vowel$ = "i"
    first = index (word$, vowel$)
    writeInfoLine("The first occurrence of ""o""
    ... is the ", first, "th character")

    word$ = "working"
    suffix$ = "ing"
    value = endsWith (word$, suffix$)
    writeInfoLine("This word ends in ""ing"":",
    ... value)

    word$ = "working"
    suffix$ = "ing"
    newSuffix$ = "ed"
    newWord$ = replace$ (word$, suffix$, newSuffix$, 1)
    writeInfoLine("The new word is: ",
    ... newWord$)

    f1 = 650
    f2 = 1500
    newSuffix$ = "ed"
    writeInfoLine("F1 is: ", f1, "Hz.",
    ... newline$, "F2 is:", f2, "Hz.")