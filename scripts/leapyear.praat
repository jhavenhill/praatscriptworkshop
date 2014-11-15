form Give me a date:
    text date
endform

index = index_regex(date$, "[0-9][0-9][0-9][0-9]")

if index <> 0
    year = number (mid$ (date$, index, 4))
    if (((year mod 4 == 0) and (year mod 100 <> 0)) or (year mod 400 == 0))
        writeInfoLine (year, " is a leap year!")
    else
        writeInfoLine (year, " is not a leap year!")
    endif
else
    writeInfoLine ("Please enter a date with a 4-digit year.")
endif

