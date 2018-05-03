la x = 0 < x && x < 100 && mod x 3 == 0 && mod x 5 == 0

lb a b = if a == True && b == True 
	 then False 
	 else a || b

lc d1 m1 a1 d2 m2 a2 = (d2 - d1) + (m2 - m2)*30 + (a2 - a1)*12*30

ld l1 l2 l3 = l1 + l2 > l3 && l1 + l3 > l2 && l2 + l3 > l1

lei x y xe ye xd yd = x >= xe && x <= xd && y <= ye && y <= yd

leii x y xe ye xs ys = x >= xe && x <= 2*xs-xe && y < 
