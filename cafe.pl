% l,b,a,f,v,u,g,q,d,e,m,x,i,h,j son los salones y despues de la coma el tiempo que tarda en llegar de ese salon a la cafeteria.

distancia(l,203).
distancia(b,270).
distancia(a,105).
distancia(f,90).
distancia(v,72).
distancia(u,79).
distancia(g,58).
distancia(q,112).
distancia(d,198).
distancia(e,108).
distancia(m,130).
distancia(x,139).
distancia(i,103).
distancia(h,138).
distancia(j,163).

% beca,cafe,mostrador,desayunos,torta,moyete,tacos,ensaladas son los tipos de comida que venden y el tiempo que tarda aprox. en hacerlas.
compra(beca,300).
compra(cafe,100).
compra(mostrador,60).
compra(desayunos,300).
compra(torta,300).
compra(moyete,600).
compra(tacos,900).
compra(ensaladas,300).

bano(uno,120).
bano(dos,600).

% Ejemplo de salon de clases a cafeteria.
salon_inicial(X):-
	distancia(X,Y),
	write('Tardas '), write(Y), write(' segundos en llegar a la cafeteria'), nl,
	write('Que vas a comprar?').

% Ejemeplo de cuanto tarda en comprar el producto.
tipo_compra(X):-
	compra(X,Y),
	write('Tardas '), write(Y), write(' segundos en comprar tu producto'), nl,
	write('Hacia que salon vas?').
	
% Ejemplo de cafeteria a destino	
salon_final(X):-
	distancia(X,Y),
	write('Tardas '), write(Y), write(' segundos en llegar de la cafeteria a tu clase'), nl.
	
% Ejemplo de origen, compra y destino.
recorrido(SI,TC,SF):-
	
	distancia(SI,Y),
	compra(TC,X),
	distancia(SF,Z),
	A is X + Y + Z,
	write('Tardas '), write(A), write(' segundos en llegar de donde te encuentras a tu clase'), nl.

% Ejemplo final con varios casos	
% SI = Salon Inicial, TC = Tipo de compra, F = Tamaño de la fila, SF = Salon Final, si = si hay hora libre.	
recorrido(SI,TC,F,SF,si):-
	Fila is 60 * F,
	distancia(SI,X),
	compra(TC,Y),
	distancia(SF,Z),
	A is X + Y + Z + Fila,
	A < 4200,
	write('Tardas '), write(A), write(' segundos en llegar de donde te encuentras a tu clase'), nl,
	write('Si alcanzas a llegar a tu clase').

% Ejemplo final con varios casos	
% SI = Salon Inicial, TC = Tipo de compra, F = Tamaño de la fila, SF = Salon Final, si = si hay hora libre.		
recorrido(SI,TC,F,SF,si):-
	Fila is 60 * F,
	distancia(SI,X),
	compra(TC,Y),
	distancia(SF,Z),
	A is X + Y + Z + Fila,
	A > 4200,
	write('Tardas '), write(A), write(' segundos en llegar de donde te encuentras a tu clase'), nl,
	write('No alcanzas a llegar a tu clase').

% Ejemplo final con varios casos
% SI = Salon Inicial, TC = Tipo de compra, F = Tamaño de la fila, SF = Salon Final, no = no hay hora libre.		
recorrido(SI,TC,F,SF,no):-
	Fila is 60 * F,
	distancia(SI,X),
	compra(TC,Y),
	distancia(SF,Z),
	A is X + Y + Z + Fila,
	A < 600,
	Minutos is A/60,
	write('Tardas '), write(A), write(' segundos o '), write(Minutos), write(' minutos en llegar de donde te encuentras a tu clase'), nl,
	write('Si alcanzas a llegar a tu clase').
	
% Ejemplo final con varios casos
% SI = Salon Inicial, TC = Tipo de compra, F = Tamaño de la fila, SF = Salon Final, no = no hay hora libre.		
recorrido(SI,TC,F,SF,no):-
	Fila is 60 * F,
	distancia(SI,X),
	compra(TC,Y),
	distancia(SF,Z),
	A is X + Y + Z + Fila,
	Minutos is A/60,
	A > 600,
	write('Tardas '), write(A), write(' segundos o '), write(Minutos), write(' minutos en llegar de donde te encuentras a tu clase'), nl,
	write('No alcanzas a llegar a tu clase').
	
% SI = Salon Inicial, TC = Tipo de compra, F = Tamaño de la fila, SF = Salon Final, no = no hay hora libre, BU = Que fue al baño a hacer del uno.		
recorrido(SI,TC,F,SF,no,BU):-
	Fila is 60 * F,
	bano(BU,W),
	distancia(SI,X),
	compra(TC,Y),
	distancia(SF,Z),
	A is W + X + Y + Z + Fila,
	Minutos is A/60,
	A > 600,
	write('Tardas '), write(A), write(' segundos o '), write(Minutos), write(' minutos en llegar de donde te encuentras a tu clase'), nl,
	write('No alcanzas a llegar a tu clase').

% SI = Salon Inicial, TC = Tipo de compra, F = Tamaño de la fila, SF = Salon Final, no = no hay hora libre, BU = Que fue al baño a hacer del dos.			
recorrido(SI,TC,F,SF,no,BD):-
	Fila is 60 * F,
	bano(dos,BD),
	distancia(SI,X),
	compra(TC,Y),
	distancia(SF,Z),
	A is W + X + Y + Z + Fila,
	Minutos is A/60,
	A > 600,
	write('Tardas '), write(A), write(' segundos o '), write(Minutos), write(' minutos en llegar de donde te encuentras a tu clase'), nl,
	write('No alcanzas a llegar a tu clase').	
	
	

	
	
	