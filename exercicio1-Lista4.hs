--Exercício1
--a) 
foo0 = compare 2 (mod 17 2) == EQ
--A função compare retorna uma expressão que diz se o primeiro termo eh:
--menor, maior ou igual ao segundo termo. 
--A funcao foo0 será sempre False, pois o resto de um numero dividido por dois
--nunca sera igual (EQ) a 2.

{-A classe de tipo Ordering tem como valores EQ, LT e GT, significando igual, menor que e maior
que. A função compare compara dois valores e determina se eles são iguais (EQ), se o primeiro é
menor que o segundo (LT) ou se é maior que o segundo (GT).
-}

--b)
foo1 = x + y
    where 
          x = y
          y = 2
--o where é interpretado antes, e define que "x" "vale" "y" e depois que "y" "vale" 2;
--desse modo é possivel definir o valor da funcao foo1

--c) 
--foo2 = x + yy
--   where x = y
--    where y = 2
--Não funciona pq tem 2 where
    --parse error on input ‘where’

--d)
foo3 x = if( x <= 30 ) then 'D'
         else if( x <= 50 ) then 'C'
         else if( x <= 80 ) then 'B'
         else 'A'
--Se a entrada for 30 ou menos a funcao retorna D;
--Se for maior que 30 e no máximo 50, retorna C;
--Se for maior que 50 e no máximo 80, retorna B;
--Para valores maiores que 30, a funcao retorna A.
