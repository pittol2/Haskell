--Exercício1
--a) 
foo0 = compare 2 (mod 17 2) == EQ

{-A classe de tipo Ordering tem como valores EQ, LT e GT, significando igual, menor que e maior
que. A função compare compara dois valores e determina se eles são iguais (EQ), se o primeiro é
menor que o segundo (LT) ou se é maior que o segundo (GT).
-}

--b)
foo1 = x + y
    where 
          x = y
          y = 2

--c) 
--foo2 = x + y
--   where x = y
--    where y = 2
--Não funciona pq tem 2 where
    --parse error on input ‘where’

--d)
foo3 x = if( x <= 30 ) then 'D'
         else if( x <= 50 ) then 'C'
         else if( x <= 80 ) then 'B'
         else 'A'