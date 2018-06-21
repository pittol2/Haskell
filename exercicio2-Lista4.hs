Exercício 2: Para cada uma das expressões abaixo, 
faça o que se pede:
I) Escreva descrições usando listas, para as seguintes 
listas constantes:

a) múltiplos de 5 maiores que 0 e menores que 80;
[x | x <- [0..79], mod x 5 == 0]

b) meses de um ano;
[1..12] ;
["JAN","FEV","MAR","ABR","MAI","JUN","JUL","AGO","SET","OUT","NOV","DEZ"]

c) número de dias por cada mês de um ano;
[31,28,31,30,31,30,31,31,30,31,30,31]

d) dias da semana;
[1..7]
["dom","seg","ter","qua","qui","sex","sab"]

e) relação das disciplinas em que você está matriculado.
["Prog1","IntroComp","Aspectos1"]

II) Escreva as listas resultantes das descrições abaixo 
e depois compare com a resposta da avaliação
da lista no interpretador:

a) [3*5, 4*5+2.. 100 - 5]
antes:  [15,22,29,36,43,50,57,64,71,78,85,92]
depois: [15,22,29,36,43,50,57,64,71,78,85,92]

b) [2, 2*2 .. 4 * 5]
antes:  [2,4,6,8,10,12,14,16,18,20]
depois: [2,4,6,8,10,12,14,16,18,20]

c) f x r t = [x, x + r .. t]
[x, x + r, x + 2*r, x + 3*r .. t]
onde t < x + n*r ; n = div t r - div t x