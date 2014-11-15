form How many primes do you want to find?
    integer Max 100
endform

writeInfoLine()

nprimes = 0
x = 1

while nprimes < max
x = x +1
not_prime = 0
for y from 2 to x-1
    if x mod y = 0
        not_prime += 1
    endif
endfor
if not_prime = 0
    appendInfoLine(x)
    nprimes += 1
endif
endwhile