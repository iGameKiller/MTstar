inicio main 1
    1 acertaBrancos 2
    2 copiar 5
    5 X * i -- 10 X # i
    10 clonaCar 15
    15 colar 20
    20 X . i -- 30 X . i
    20 X * d -- 2 X * d
    30 restauraBrancos 35
    35 X * i -- aceite X * i
fim main

;------------------------
;   INICIA: cabecote no 1o car da entrada
;   TERMINA: cabecote no 1o car da entrada
; >> 
;   substitui branco por ~ 
;
inicio acertaBrancos 1
	1 X . i -- 5 X * i
	1 X _ d -- 1 X ~ d
	1 X * d -- 1 X * d
	5 X * e -- 10 X * e
	10 X _ d -- 11 X * d
	10 X * e -- 10 X * e
	11 retorne
fim acertaBrancos

;------------------------
;   INICIA: cabecote no 1o .
;   TERMINA: cabecote no 1o .
; >> 
;   substitui ~ por branco 
;
inicio restauraBrancos 1
	1 X . d -- 2 X . d
	2 X . e -- 5 X * e
	2 X ~ d -- 2 X _ d
	2 X * d -- 2 X * d
	5 X . e -- 6 X . e
	5 X * e -- 5 X * e
	6 X _ d -- 8 X * d
	6 X ~ e -- 6 X _ e
	6 X * e -- 6 X * e
	8 X * d -- 9 X * d
	9 retorne
fim restauraBrancos

;------------------------
;   INICIA: cabecote no #, car na 2a fita
;   TERMINA: cabecote no #, car na 2a fita
; >> 
;   move ate branco onde colar car da 2a fita
;   move ate . e depois ate branco
;   cola car, volta pro #
;

inicio clonaCar 1
	1 X [.] d -- 5 X * d
	1 X [*] i -- 3 X * i
	3 X . d -- 5 X * d
	3 X * d -- 3 X * d
	5 X _ i -- 10 X * i
	5 X * d -- 5 X * d
    10 fazCopia 15
    15 voltaRef 20
    20 X # i -- 21 X # i
    21 retorne
fim clonaCar

	
;------------------------
;   INICIA: cabecote no branco onde colar, car na 2a fita
;   TERMINA: cabecote no car colado
; >> 
;   cola alterando vogais
;
inicio fazCopia 1
	1 X [a] i -- 10 X 1 i
	1 X [e] i -- 10 X 2 i
	1 X [i] i -- 10 X 3 i
	1 X [o] i -- 10 X 4 i
	1 X [u] i -- 10 X 5 i
	1 X [A] i -- 10 X 1 i
	1 X [E] i -- 10 X 2 i
	1 X [I] i -- 10 X 3 i
	1 X [O] i -- 10 X 4 i
	1 X [U] i -- 10 X 5 i
	1 colar 10
    10 X * i -- 11 X * i
	11 retorne
fim fazCopia

;------------------------
;   INICIA: cabecote no car colado, car na 2a fita
;   TERMINA: cabecote no #, car na 2a fita
; >> 
;   move ate #
;
inicio voltaRef 1
    1 X # i -- 2 X * i
	1 X * e -- 1 X * e
	2 retorne
fim voltaRef
