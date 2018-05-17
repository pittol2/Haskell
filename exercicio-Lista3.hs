type Ponto = (Float, Float)

n1i :: Ponto -> Ponto -> Ponto -> Bool 
n1i p pe pd = fst p > fst pe && fst p < fst pd &&
                       snd p < snd pe && snd p > snd pd

n1ii :: Ponto -> Ponto -> Ponto -> Bool
n1ii p pe ps = abaix p pe ps && abaix p ps pd && acima p pe pb && acima p pb pd
                where
                    pb =(fst ps, 2 * snd pe - snd ps)
                    pd =(2 * fst ps - fst pe, snd pe) 

acima :: Ponto -> Ponto -> Ponto -> Bool  
abaix :: Ponto -> Ponto -> Ponto -> Bool  
acima p p1 p2 = snd p >= reta p p1 p2
abaix p p1 p2 = snd p <= reta p p1 p2

reta :: Ponto -> Ponto -> Ponto -> Float
reta p p1 p2 = a p1 p2 * fst p + b p1 p2

a :: Ponto -> Ponto -> Float 

b :: Ponto -> Ponto -> Float
a p1 p2 = (snd p2 - snd p1) / (fst p2 - fst p1)
b p1 p2 = snd p1 - a p1 p2 * fst p1

n1iii :: Ponto -> Ponto -> Float -> Bool
n1iii p pc r = r^2 >= (fst p - fst pc)^2 + (snd p - snd pc)^2

type Dist = (((Ponto, Ponto),Float),((Ponto, Ponto),Float),((Ponto, Ponto), Float))

n2 :: Ponto -> Ponto -> Ponto -> Dist
n2 p1 p2 p3 = (((p1,p2), dist p1 p2),((p2,p3), dist p2 p3),((p1,p3), dist p1 p3))

dist pa pb = sqrt((fst pb - fst pa)^2 + (snd pb - snd pa)^2)

n3 a b c = if delta < 0 then (False, (0,0))
                        else (True, (x1, x2))
           where
                  delta = b^2 - 4*a*c
                  x1 = (-b + sqrt delta)/(2*a)
                  x2 = (-b - sqrt delta)/(2*a)

n4i :: (Int, Int, Int) -> Char
n4i (a,b,c) = if (a,b,c) == (a,a,a) || (a,b,c) == (b,b,b) || (a,b,c) == (c,c,c) 
                 then 'A' 
                 else if (a,b,c) == (b,a,c) || (a,b,c) == (c,b,a) || (a,b,c) == (a,c,b) 
                         then 'B' 
                         else 'C'

n4ii :: Ponto -> Ponto -> Int
n4ii pse pid = if quad pse pdi == (True,True)
                    then 1
                    else if quad pse pdi == (False,True)
                         then 2
                         else if quad pse pdi == (False, False)

n4ii :: Ponto -> Ponto -> (Bool,Bool)
quad p1 p2 = (signum (fst p1) == signum (fst p2), signum (snd p1) == signum (snd p2))

