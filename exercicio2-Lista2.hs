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
                        then 4 
                        else 2

lhi n x y = x <= n && y <= n

-- mov1 ... mov 8 : c, b, d, e, cd, db, be, ec; respectivamente
--c = cima, b = baixo, e = esquerda, d = direita
lhii n m x y = if m == 1 then c y else
               if m == 2 then b y else
               if m == 3 then d x else
               if m == 4 then e x else
               if m == 5 then c y && d x else
               if m == 6 then d x && b y else
               if m == 7 then b y && e x else
               if m == 8 then e x && c y 
               else False
        where
                c y = y + 1 < n
                b y = y - 1 > 0
                d x = x + 1 < n
                e x = x - 1 > 0

li a b c = if a > b && a > c
              then a else
           if b > c 
              then b
              else c

lj a b c = (succ (li a b c))^2

lk p i = if i >= 60 then 0.60 * p else
         if i >= 2 && i <= 10 then 0.50 * p else 
         if i <  2  then 0.10 * p 
                    else p

--Refazer llr1 -> como escrever e mandar int sem tupla
llr1 a b c = if delta >= 0.0 then r1
                           else error "raíz complexa" 
                where 
                        delta = b^2 - 4*a*c
                        r1 = (-b + sqrt delta )/2*a

                        
llr2 a b c = if delta >= 0.0 then r2
                        else error "raíz complexa" 
             where 
                     delta = b^2 - 4*a*c
                     r2 = (-b - sqrt delta )/2*a

lm he hf = if p <  0            then 000.00 else
           if p >= 1 && p <= 10 then 100.00 else
           if p > 10 && p <= 20 then 200.00 else 
           if p > 20 && p <= 30 then 300.00 else     
           if p > 30 && p <= 40 then 400.00 
                                else 500.00
                where
                        p = he - 2/3*hf

lm2 he hf | p >  40 = 500.00
          | p >  30 = 400.00
          | p >  20 = 300.00
          | p >  10 = 200.00
          | p >=  1 = 100.00
          | p <   1 = 000.00
          where
                p = he - 2/3*hf





 












