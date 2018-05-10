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
acima p p1 p2 = fst p >= reta p p1 p2
abaix p p1 p2 = fst p <= reta p p1 p2

reta :: Ponto -> Ponto -> Ponto -> Float
reta p p1 p2 = a p1 p2 * fst p + b p1 p2

a :: Ponto -> Ponto -> Float
b :: Ponto -> Ponto -> Float
a p1 p2 = (fst p2 - fst p1) / (snd p2 - snd p1)
b p1 p2 = snd p1 - a p1 p2 * fst p1