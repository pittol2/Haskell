la x = 0 < x && x < 100 && mod x 3 == 0 && mod x 5 == 0

lb a b = if a == True && b == True 
         then False 
         else a || b

lc d1 m1 a1 d2 m2 a2 = (d2 - d1) + (m2 - m2)*30 + (a2 - a1)*12*30

ld l1 l2 l3 = l1 + l2 > l3 && l1 + l3 > l2 && l2 + l3 > l1

lei x y xe ye xd yd = x >= xe && x <= xd && y <= ye && y <= yd

leii x y xe ye xs ys = abaixodareta1 x y xe ye xs ys && 
                                           acimadareta2 x y xe ye xs ys && 
                                           abaixodareta3 x y xe ye xs ys && 
                                           acimadareta4 x y xe ye xs ys

abaixodareta1 x y xe ye xs ys = y <= (ys - ye)/(xs - xe)*(x - xs) + ys

acimadareta2 x y xe ye xs ys = y >= ((2*ye - ys) - ye)/(xs - xe)*(x - xe) + ye

abaixodareta3 x y xe ye xs ys = y <= (ye - ys)/((2*xs - xe) - xs)*(x - xs) + ys

acimadareta4 x y xe ye xs ys = y >= ((2*ye - ys) - ye)/(xs - (2*xs - xe))*(x - xs) + (2*ye - ys)

leiii x y xc yc r = r^2 <= (x - xc)^2 + (y - yc)^2

lf a b c = if a == b && b == c
                            then 3 else
                   if a == b && b /= c || a == c && b /= c || b == c && a /= b
                            then 2
                    else 1

lg xse yse xid yid = if xse*xid > 0 && yse*yid > 0
                                                then 1 else
                                         if xse*xid < 0 && yse*yid < 0
                                               then 4 else 2

lhi n x y = x <= n && y <= n

lhii n m x y = 

li a b c = if a > b && a > c 
                          then a else
                  if b > c then b
                          else c

lj a b c = succ (li a b c + 1)

lk
 
