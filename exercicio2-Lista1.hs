la x = div x 500 + div (mod x 500) 100 + div (mod (mod x 500) 100) 50 + div (mod (mod (mod x 500) 100) 50) 10 + div (mod (mod (mod (mod x 500) 100) 50) 10) 1

lb a b = a*b

lc r = pi*r^2

ld xa ya xb yb = sqrt((xa-xb)^2 + (ya-yb)^2)

ler1 a b c = (-b + sqrt(b^2 - a*a*c))/(2*a)
ler2 a b c = (-b - sqrt(b^2 - a*a*c))/(2*a)

lf x y = 1/x^y

lg c = c*9/5+32

lh v = v*(1+0.5/100)**12

li r = lc (2*r) - lc r 

lk x y = x*y >= 0

ll x a b = (x >= a && x <= b) || (x >= b && x <= a)