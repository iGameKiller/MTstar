;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;   No bloco main, inicia-se a aplicação, então a primeira coisa a se fazer é   ;
;   verificar qual operação está sendo feita, + para soma, - para sub e x para  ;
;   multiplicação.                                                               ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
inicio main 1
    1 encontra_operacao 5
	5 X + i -- 10 X * i
	5 X - i -- 15 X * i
	5 X x i -- 100 X * i
	
    10 soma 50
	
    15 identifica_maior 20
	
	20 X [=] i -- 25 X * i
	
	20 X * i -- 21 X * i
	
	;insere X primeiro o -- = X apos o
    21 insere_primeiro_numero 25
	
	;move X ate (ou -- I) X Inicio (ou
    25 move_inicio_sub 30
	
    30 subtracao 31
	
    31 verifica_i_esquerda 32
	
	32 X I i -- 33 X * i
	
	32 X _ i -- 34 X * i
	
	;caminha X ate de -- subtracao X sinal de
    33 anda_ate_menos 35
    34 anda_ate_menos 50
	
    35 move_frente 40
	
    ;insere o menos
	40 X _ i -- 45 X - i
	
    45 apaga_i_ate_igual 50
	
    50 transforma_para_numero 55
	55 X * i -- aceite X * i
fim main

	
; Bloco Responsavel por Realizar o loop de soma e marcar numeros somados
inicio soma 1
    1 move_inicio 2
    2 insere_depois_igual 3
    3 move_ate_igual 4
    4 proximo_algarismo 5
    5 copiar 6
    6 transforma_numero_letra 7
    7 move_fim 8
    8 soma_numero 10
    10 proximo_algarismo 11
	11 retorne
	11 X 0 i -- 5 X * i
	11 X 1 i -- 5 X * i
	11 X 2 i -- 5 X * i
	11 X 3 i -- 5 X * i
	11 X 4 i -- 5 X * i
	11 X 5 i -- 5 X * i
	11 X 6 i -- 5 X * i
	11 X 7 i -- 5 X * i
	11 X 8 i -- 5 X * i
	11 X 9 i -- 5 X * i
fim soma

	
;Bloco para somar 1 numero especfico
	
inicio soma_numero 1
	1 X Z e -- 1 X * e
	1 X U e -- 1 X * e
	1 X D e -- 1 X * e
	1 X T e -- 1 X * e
	1 X Q e -- 1 X * e
	1 X C e -- 1 X * e
	1 X S e -- 1 X * e
	1 X L e -- 1 X * e
	1 X O e -- 1 X * e
	1 X N e -- 1 X * e
	1 X = i -- 2 X * i
	1 X * i -- 5 X * i
    2 move_frente 4
	4 X _ i -- 5 X 0 i
	5 X [0] i -- 10 X * i
	5 X [1] i -- 20 X * i
	5 X [2] i -- 30 X * i
	5 X [3] i -- 40 X * i
	5 X [4] i -- 50 X * i
	5 X [5] i -- 60 X * i
	5 X [6] i -- 70 X * i
	5 X [7] i -- 80 X * i
	5 X [8] i -- 90 X * i
	5 X [9] i -- 100 X * i
	;se X tiver segunda -- fita X na segunda
	10 X 0 i -- 150 X 0 i
	10 X 1 i -- 150 X 1 i
	10 X 2 i -- 150 X 2 i
	10 X 3 i -- 150 X 3 i
	10 X 4 i -- 150 X 4 i
	10 X 5 i -- 150 X 5 i
	10 X 6 i -- 150 X 6 i
	10 X 7 i -- 150 X 7 i
	10 X 8 i -- 150 X 8 i
	10 X 9 i -- 150 X 9 i
	;se X tiver segunda -- fita X na segunda
	20 X 0 i -- 150 X 1 i
	20 X 1 i -- 150 X 2 i
	20 X 2 i -- 150 X 3 i
	20 X 3 i -- 150 X 4 i
	20 X 4 i -- 150 X 5 i
	20 X 5 i -- 150 X 6 i
	20 X 6 i -- 150 X 7 i
	20 X 7 i -- 150 X 8 i
	20 X 8 i -- 150 X 9 i
	20 X 9 i -- 200 X 0 i
	;se X tiver segunda -- fita X na segunda
	30 X 0 i -- 150 X 2 i
	30 X 1 i -- 150 X 3 i
	30 X 2 i -- 150 X 4 i
	30 X 3 i -- 150 X 5 i
	30 X 4 i -- 150 X 6 i
	30 X 5 i -- 150 X 7 i
	30 X 6 i -- 150 X 8 i
	30 X 7 i -- 150 X 9 i
	30 X 8 i -- 200 X 0 i
	30 X 9 i -- 200 X 1 i
	;se X tiver segunda -- fita X na segunda
	40 X 0 i -- 150 X 3 i
	40 X 1 i -- 150 X 4 i
	40 X 2 i -- 150 X 5 i
	40 X 3 i -- 150 X 6 i
	40 X 4 i -- 150 X 7 i
	40 X 5 i -- 150 X 8 i
	40 X 6 i -- 150 X 9 i
	40 X 7 i -- 200 X 0 i
	40 X 8 i -- 200 X 1 i
	40 X 9 i -- 200 X 2 i
	;se X tiver segunda -- fita X na segunda
	50 X 0 i -- 150 X 4 i
	50 X 1 i -- 150 X 5 i
	50 X 2 i -- 150 X 6 i
	50 X 3 i -- 150 X 7 i
	50 X 4 i -- 150 X 8 i
	50 X 5 i -- 150 X 9 i
	50 X 6 i -- 200 X 0 i
	50 X 7 i -- 200 X 1 i
	50 X 8 i -- 200 X 2 i
	50 X 9 i -- 200 X 3 i
	;se X tiver segunda -- fita X na segunda
	60 X 0 i -- 150 X 5 i
	60 X 1 i -- 150 X 6 i
	60 X 2 i -- 150 X 7 i
	60 X 3 i -- 150 X 8 i
	60 X 4 i -- 150 X 9 i
	60 X 5 i -- 200 X 0 i
	60 X 6 i -- 200 X 1 i
	60 X 7 i -- 200 X 2 i
	60 X 8 i -- 200 X 3 i
	60 X 9 i -- 200 X 4 i
	;se X tiver segunda -- fita X na segunda
	70 X 0 i -- 150 X 6 i
	70 X 1 i -- 150 X 7 i
	70 X 2 i -- 150 X 8 i
	70 X 3 i -- 150 X 9 i
	70 X 4 i -- 200 X 0 i
	70 X 5 i -- 200 X 1 i
	70 X 6 i -- 200 X 2 i
	70 X 7 i -- 200 X 3 i
	70 X 8 i -- 200 X 4 i
	70 X 9 i -- 200 X 5 i
	80 X 0 i -- 150 X 7 i
	80 X 1 i -- 150 X 8 i
	80 X 2 i -- 150 X 9 i
	80 X 3 i -- 200 X 0 i
	80 X 4 i -- 200 X 1 i
	80 X 5 i -- 200 X 2 i
	80 X 6 i -- 200 X 3 i
	80 X 7 i -- 200 X 4 i
	80 X 8 i -- 200 X 5 i
	80 X 9 i -- 200 X 6 i
	90 X 0 i -- 150 X 8 i
	90 X 1 i -- 150 X 9 i
	90 X 2 i -- 200 X 0 i
	90 X 3 i -- 200 X 1 i
	90 X 4 i -- 200 X 2 i
	90 X 5 i -- 200 X 3 i
	90 X 6 i -- 200 X 4 i
	90 X 7 i -- 200 X 5 i
	90 X 8 i -- 200 X 6 i
	90 X 9 i -- 200 X 7 i
	100 X 0 i -- 150 X 9 i
	100 X 1 i -- 200 X 0 i
	100 X 2 i -- 200 X 1 i
	100 X 3 i -- 200 X 2 i
	100 X 4 i -- 200 X 3 i
	100 X 5 i -- 200 X 4 i
	100 X 6 i -- 200 X 5 i
	100 X 7 i -- 200 X 6 i
	100 X 8 i -- 200 X 7 i
	100 X 9 i -- 200 X 8 i
	
    150 transforma_numero_letra 151
	151 retorne
	
    200 transforma_numero_letra 201
	201 soma_vai_um 202
	202 retorne
fim soma_numero

	
;Bloco para Realizar o vai 1 caso necessario na soma
inicio soma_vai_um 1
	1 X = i -- 5 X * i
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 X 9 e -- 1 X 0 e
	1 X * e -- 1 X * e
    5 move_frente 10
	10 retorne
	
fim soma_vai_um

	
; bloco para mover numero apos o = para frente e deixar espaco em branco entre o numero e o =
inicio move_frente 1
    1 move_fim 5
	5 X 0 d -- 100 X X d
	5 X Z d -- 105 X X d
	5 X 1 d -- 110 X X d
	5 X U d -- 115 X X d
	5 X 2 d -- 120 X X d
	5 X D d -- 125 X X d
	5 X 3 d -- 130 X X d
	5 X T d -- 135 X X d
	5 X 4 d -- 140 X X d
	5 X Q d -- 145 X X d
	5 X 5 d -- 150 X X d
	5 X C d -- 155 X X d
	5 X 6 d -- 160 X X d
	5 X S d -- 165 X X d
	5 X 7 d -- 170 X X d
	5 X L d -- 175 X X d
	5 X 8 d -- 180 X X d
	5 X O d -- 185 X X d
	5 X 9 d -- 190 X X d
	5 X N d -- 195 X X d
	
	100 X * i -- 200 X 0 i
	105 X * i -- 200 X Z i
	110 X * i -- 200 X 1 i
	115 X * i -- 200 X U i
	120 X * i -- 200 X 2 i
	125 X * i -- 200 X D i
	130 X * i -- 200 X 3 i
	135 X * i -- 200 X T i
	140 X * i -- 200 X 4 i
	145 X * i -- 200 X Q i
	150 X * i -- 200 X 5 i
	155 X * i -- 200 X C i
	160 X * i -- 200 X 6 i
	165 X * i -- 200 X S i
	170 X * i -- 200 X 7 i
	175 X * i -- 200 X L i
	180 X * i -- 200 X 8 i
	185 X * i -- 200 X O i
	190 X * i -- 200 X 9 i
	195 X * i -- 200 X N i
	
	200 X X e -- 205 X * e
	200 X * e -- 200 X * e
	205 X = d -- 210 X * d
	205 X * i -- 5 X * i
	210 retorne
	
fim move_frente

	
; bloco para transformar um numero em letra
inicio transforma_numero_letra 1
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 retorne
fim transforma_numero_letra

	
;bloco para encontrar operação
inicio encontra_operacao 1
	1 X + d -- 2 X + i
	1 X - d -- 2 X - i
	1 X x d -- 2 X x i
	1 X * d -- 1 X * d
    2 retorne
fim encontra_operacao

	
;bloco para mover ate o =
inicio move_ate_igual 1
	1 retorne
	1 X * d -- 1 X * d
fim move_ate_igual

	
;bloco para mover ate o inicio
inicio move_inicio 1
    1 X _ d -- 2 X * d
	1 X * e -- 1 X * e
	2 retorne
fim move_inicio

	
;bloco para mover ate o inicio da operação inteira ou ate o I (indicador para subtracao negativa)
inicio move_inicio_sub 1
	1 retorne
	1 retorne
	1 X * e -- 1 X * e
fim move_inicio_sub

	
;bloco para mover ate o final da operação
inicio move_fim 1
	1 retorne
	1 X * d -- 1 X * d
fim move_fim

	
;bloco para inserir o primeiro numero depois do =
inicio insere_depois_igual 1
    1 copiar 5
	5 X [0] i -- 10 X Z i
	5 X [1] i -- 10 X U i
	5 X [2] i -- 10 X D i
	5 X [3] i -- 10 X T i
	5 X [4] i -- 10 X Q i
	5 X [5] i -- 10 X C i
	5 X [6] i -- 10 X S i
	5 X [7] i -- 10 X L i
	5 X [8] i -- 10 X O i
	5 X [9] i -- 10 X N i
    10 move_fim 15
	15 X * d -- 16 X * d
    16 colar 20
    20 move_inicio 25
    25 procura_numero 30
	30 X * i -- 1 X * i
	30 X * i -- 1 X * i
	30 X * i -- 1 X * i
	30 X * i -- 1 X * i
fim insere_depois_igual

	
;bloco para procurar o proximo numero da direita
inicio procura_numero 1
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 X * d -- 1 X * d
fim procura_numero

	
;bloco para procurar o proximo numero da esquerda
inicio proximo_algarismo 1
	1 X = e -- 5 X * e
	1 X * e -- 1 X * e
	5 retorne
	5 retorne
	5 retorne
	5 retorne
	5 retorne
	5 retorne
	5 retorne
	5 retorne
	5 retorne
	5 retorne
	5 retorne
	5 retorne
	5 retorne
	5 X * e -- 5 X * e
fim proximo_algarismo

	
;bloco para transformar toda a operacao em numeros
inicio transforma_para_numero 1
	1 move_inicio 2
	2 X Z d -- 2 X 0 d
	2 X U d -- 2 X 1 d
	2 X D d -- 2 X 2 d
	2 X T d -- 2 X 3 d
	2 X Q d -- 2 X 4 d
	2 X C d -- 2 X 5 d
	2 X S d -- 2 X 6 d
	2 X L d -- 2 X 7 d
	2 X O d -- 2 X 8 d
	2 X N d -- 2 X 9 d
	2 retorne
	2 X * d -- 2 X * d
fim transforma_para_numero

	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Conjunto de Blocos para realizar subtracao
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	
;Bloco para realizar a subtracao inteira do numero (LOOP)
inicio subtracao 1
	1 X [=] i -- 11 X * i
	1 X * i -- 5 X * i
    5 move_inicio_sub 10
    10 insere_depois_igual_sub 15
    11 insere_depois_igual 15
    15 move_ate_igual 20
    20 proximo_algarismo 25
    25 copiar 30
    30 transforma_numero_letra 35
    35 move_fim 40
    40 subtrai_numero 45
    45 proximo_algarismo 50
	50 retorne
	50 X 0 i -- 25 X * i
	50 X 1 i -- 25 X * i
	50 X 2 i -- 25 X * i
	50 X 3 i -- 25 X * i
	50 X 4 i -- 25 X * i
	50 X 5 i -- 25 X * i
	50 X 6 i -- 25 X * i
	50 X 7 i -- 25 X * i
	50 X 8 i -- 25 X * i
	50 X 9 i -- 25 X * i
fim subtracao

	
; Bloco para subtrair um numero especfico
inicio subtrai_numero 1
	1 X Z e -- 1 X * e
	1 X U e -- 1 X * e
	1 X D e -- 1 X * e
	1 X T e -- 1 X * e
	1 X Q e -- 1 X * e
	1 X C e -- 1 X * e
	1 X S e -- 1 X * e
	1 X L e -- 1 X * e
	1 X O e -- 1 X * e
	1 X N e -- 1 X * e
	1 X = i -- 2 X * i
	1 X * i -- 5 X * i
    2 move_frente 4
	4 X _ i -- 5 X 0 i
	5 X [0] i -- 10 X * i
	5 X [1] i -- 20 X * i
	5 X [2] i -- 30 X * i
	5 X [3] i -- 40 X * i
	5 X [4] i -- 50 X * i
	5 X [5] i -- 60 X * i
	5 X [6] i -- 70 X * i
	5 X [7] i -- 80 X * i
	5 X [8] i -- 90 X * i
	5 X [9] i -- 100 X * i
	;se X tiver segunda -- fita X na segunda
	10 X 0 i -- 150 X 0 i
	10 X 1 i -- 150 X 1 i
	10 X 2 i -- 150 X 2 i
	10 X 3 i -- 150 X 3 i
	10 X 4 i -- 150 X 4 i
	10 X 5 i -- 150 X 5 i
	10 X 6 i -- 150 X 6 i
	10 X 7 i -- 150 X 7 i
	10 X 8 i -- 150 X 8 i
	10 X 9 i -- 150 X 9 i
	;se X tiver segunda -- fita X na segunda
	20 X 0 i -- 200 X * i
	20 X 1 i -- 150 X 0 i
	20 X 2 i -- 150 X 1 i
	20 X 3 i -- 150 X 2 i
	20 X 4 i -- 150 X 3 i
	20 X 5 i -- 150 X 4 i
	20 X 6 i -- 150 X 5 i
	20 X 7 i -- 150 X 6 i
	20 X 8 i -- 150 X 7 i
	20 X 9 i -- 150 X 8 i
	;se X tiver segunda -- fita X na segunda
	30 X 0 i -- 200 X * i
	30 X 1 i -- 200 X * i
	30 X 2 i -- 150 X 0 i
	30 X 3 i -- 150 X 1 i
	30 X 4 i -- 150 X 2 i
	30 X 5 i -- 150 X 3 i
	30 X 6 i -- 150 X 4 i
	30 X 7 i -- 150 X 5 i
	30 X 8 i -- 150 X 6 i
	30 X 9 i -- 150 X 7 i
	;se X tiver segunda -- fita X na segunda
	40 X 0 i -- 200 X * i
	40 X 1 i -- 200 X * i
	40 X 2 i -- 200 X * i
	40 X 3 i -- 150 X 0 i
	40 X 4 i -- 150 X 1 i
	40 X 5 i -- 150 X 2 i
	40 X 6 i -- 150 X 3 i
	40 X 7 i -- 150 X 4 i
	40 X 8 i -- 150 X 5 i
	40 X 9 i -- 150 X 6 i
	;se X tiver segunda -- fita X na segunda
	50 X 0 i -- 200 X * i
	50 X 1 i -- 200 X * i
	50 X 2 i -- 200 X * i
	50 X 3 i -- 200 X * i
	50 X 4 i -- 150 X 0 i
	50 X 5 i -- 150 X 1 i
	50 X 6 i -- 150 X 2 i
	50 X 7 i -- 150 X 3 i
	50 X 8 i -- 150 X 4 i
	50 X 9 i -- 150 X 5 i
	;se X tiver segunda -- fita X na segunda
	60 X 0 i -- 200 X * i
	60 X 1 i -- 200 X * i
	60 X 2 i -- 200 X * i
	60 X 3 i -- 200 X * i
	60 X 4 i -- 200 X * i
	60 X 5 i -- 150 X 0 i
	60 X 6 i -- 150 X 1 i
	60 X 7 i -- 150 X 2 i
	60 X 8 i -- 150 X 3 i
	60 X 9 i -- 150 X 4 i
	;se X tiver segunda -- fita X na segunda
	70 X 0 i -- 200 X * i
	70 X 1 i -- 200 X * i
	70 X 2 i -- 200 X * i
	70 X 3 i -- 200 X * i
	70 X 4 i -- 200 X * i
	70 X 5 i -- 200 X * i
	70 X 6 i -- 150 X 0 i
	70 X 7 i -- 150 X 1 i
	70 X 8 i -- 150 X 2 i
	70 X 9 i -- 150 X 3 i
	80 X 0 i -- 200 X * i
	80 X 1 i -- 200 X * i
	80 X 2 i -- 200 X * i
	80 X 3 i -- 200 X * i
	80 X 4 i -- 200 X * i
	80 X 5 i -- 200 X * i
	80 X 6 i -- 200 X * i
	80 X 7 i -- 150 X 0 i
	80 X 8 i -- 150 X 1 i
	80 X 9 i -- 150 X 2 i
	90 X 0 i -- 200 X * i
	90 X 1 i -- 200 X * i
	90 X 2 i -- 200 X * i
	90 X 3 i -- 200 X * i
	90 X 4 i -- 200 X * i
	90 X 5 i -- 200 X * i
	90 X 6 i -- 200 X * i
	90 X 7 i -- 200 X * i
	90 X 8 i -- 150 X 0 i
	90 X 9 i -- 150 X 1 i
	100 X 0 i -- 200 X * i
	100 X 1 i -- 200 X * i
	100 X 2 i -- 200 X * i
	100 X 3 i -- 200 X * i
	100 X 4 i -- 200 X * i
	100 X 5 i -- 200 X * i
	100 X 6 i -- 200 X * i
	100 X 7 i -- 200 X * i
	100 X 8 i -- 200 X * i
	100 X 9 i -- 150 X 0 i
	
    150 transforma_numero_letra 151
	151 retorne
	
    200 sub_pede_emprestado 201
    201 transforma_numero_letra 202
	202 retorne
fim subtrai_numero

	
; bloco Responsavel por pedir um numero emprestado no numero da esquerda
inicio sub_pede_emprestado 1
	
	1 retorne
	1 X 0 e -- 20 X z e
	1 X 1 e -- 20 X u e
	1 X 2 e -- 20 X d e
	1 X 3 e -- 20 X t e
	1 X 4 e -- 20 X q e
	1 X 5 e -- 20 X c e
	1 X 6 e -- 20 X s e
	1 X 7 e -- 20 X l e
	1 X 8 e -- 20 X o e
	1 X 9 e -- 20 X n e
	1 X * e -- 1 X * e
	
	20 X 0 e -- 20 X * e
	
	20 X = i -- 5 X * i
	20 X 1 d -- 25 X 0 d
	20 X 2 d -- 25 X 1 d
	20 X 3 d -- 25 X 2 d
	20 X 4 d -- 25 X 3 d
	20 X 5 d -- 25 X 4 d
	20 X 6 d -- 25 X 5 d
	20 X 7 d -- 25 X 6 d
	20 X 8 d -- 25 X 7 d
	20 X 9 d -- 25 X 8 d
	
    25 procura_minusculo 29
	
	29 X [0] i -- 30 X * i
	29 X [1] i -- 31 X * i
	29 X [2] i -- 32 X * i
	29 X [3] i -- 33 X * i
	29 X [4] i -- 34 X * i
	29 X [5] i -- 35 X * i
	29 X [6] i -- 36 X * i
	29 X [7] i -- 37 X * i
	29 X [8] i -- 38 X * i
	29 X [9] i -- 39 X * i
	
	;se X tiver segunda -- fita X na segunda
	31 X z i -- 150 X 9 i
	
	;se X tiver segunda -- fita X na segunda
	32 X z i -- 150 X 8 i
	32 X u i -- 150 X 9 i
	
	;se X tiver segunda -- fita X na segunda
	33 X z i -- 150 X 7 i
	33 X u i -- 150 X 8 i
	33 X d i -- 150 X 9 i
	
	;se X tiver segunda -- fita X na segunda
	34 X z i -- 150 X 6 i
	34 X u i -- 150 X 7 i
	34 X d i -- 150 X 8 i
	34 X t i -- 150 X 9 i
	
	;se X tiver segunda -- fita X na segunda
	35 X z i -- 150 X 5 i
	35 X u i -- 150 X 6 i
	35 X d i -- 150 X 7 i
	35 X t i -- 150 X 8 i
	35 X q i -- 150 X 9 i
	
	;se X tiver segunda -- fita X na segunda
	36 X z i -- 150 X 4 i
	36 X u i -- 150 X 5 i
	36 X d i -- 150 X 6 i
	36 X t i -- 150 X 7 i
	36 X q i -- 150 X 8 i
	36 X c i -- 150 X 9 i
	
	;se X tiver segunda -- fita X na segunda
	37 X z i -- 150 X 3 i
	37 X u i -- 150 X 4 i
	37 X d i -- 150 X 5 i
	37 X t i -- 150 X 6 i
	37 X q i -- 150 X 7 i
	37 X c i -- 150 X 8 i
	37 X s i -- 150 X 9 i
	
	;se X tiver segunda -- fita X na segunda
	38 X z i -- 150 X 2 i
	38 X u i -- 150 X 3 i
	38 X d i -- 150 X 4 i
	38 X t i -- 150 X 5 i
	38 X q i -- 150 X 6 i
	38 X c i -- 150 X 7 i
	38 X s i -- 150 X 8 i
	38 X l i -- 150 X 9 i
	
	;se X tiver segunda -- fita X na segunda
	39 X z i -- 150 X 1 i
	39 X u i -- 150 X 2 i
	39 X d i -- 150 X 3 i
	39 X t i -- 150 X 4 i
	39 X q i -- 150 X 5 i
	39 X c i -- 150 X 6 i
	39 X s i -- 150 X 7 i
	39 X l i -- 150 X 8 i
	39 X o i -- 150 X 9 i
	
	150 retorne
fim sub_pede_emprestado

	
;bloco para procurar indicador minusculo a direita
inicio procura_minusculo 1
	
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 X 0 d -- 1 X 9 d
	1 X * d -- 1 X * d
fim procura_minusculo

	
; bloco para trasnformar letra minuscula em numero
inicio transforma_letra_minus_numero 1
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 retorne
fim transforma_letra_minus_numero

	
; bloco para pegar proximo_algarismo a direita
inicio proximo_algarismo_direita 1
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 retorne
	1 X * d -- 1 X * d
fim proximo_algarismo_direita

	
; Bloco para identificar qual o maior numero de uma subtracao (numero antes do - ou depois do -)
inicio identifica_maior 1
	
    1 move_inicio_sub 2
    2 insere_depois_igual 3
	
    3 move_fim 4
	4 X * d -- 5 X * d
	5 X _ i -- 6 X H i
	
	6 X - i -- 7 X * i
	6 X * e -- 6 X * e
	
    7 proximo_algarismo_direita 8
    8 copiar 9
	
	9 X 0 i -- 10 X Z i
	9 X 1 i -- 10 X U i
	9 X 2 i -- 10 X D i
	9 X 3 i -- 10 X T i
	9 X 4 i -- 10 X Q i
	9 X 5 i -- 10 X C i
	9 X 6 i -- 10 X S i
	9 X 7 i -- 10 X L i
	9 X 8 i -- 10 X O i
	9 X 9 i -- 10 X N i
	9 X [=] i -- 10 X * i
	
	10 X = d -- 11 X * d
	10 X * d -- 10 X * d
	
    11 proximo_algarismo_direita 12
	
	
	12 X [0] i -- 15 X Z i
	12 X [1] i -- 15 X U i
	12 X [2] i -- 15 X D i
	12 X [3] i -- 15 X T i
	12 X [4] i -- 15 X Q i
	12 X [5] i -- 15 X C i
	12 X [6] i -- 15 X S i
	12 X [7] i -- 15 X L i
	12 X [8] i -- 15 X O i
	12 X [9] i -- 15 X N i
	
	16 X H i -- 17 X * i
	16 X * i -- 18 X * i
    17 identifica_maior_length_igual 19
    18 apaga_depois_igual 19
	19 retorne
	
	15 X * i -- 6 X * i
	
	20 X [0] i -- 21 X Z i
	20 X [1] i -- 21 X U i
	20 X [2] i -- 21 X D i
	20 X [3] i -- 21 X T i
	20 X [4] i -- 21 X Q i
	20 X [5] i -- 21 X C i
	20 X [6] i -- 21 X S i
	20 X [7] i -- 21 X L i
	20 X [8] i -- 21 X O i
	20 X [9] i -- 21 X N i
	
	
	21 X - i -- 22 X * i
	21 X * e -- 21 X * e
    22 proximo_algarismo_direita 23
	
	23 retorne
	23 retorne
	23 X * i -- 24 X * i
	
    24 copiar 25
	
	25 X 0 i -- 30 X Z i
	25 X 1 i -- 30 X U i
	25 X 2 i -- 30 X D i
	25 X 3 i -- 30 X T i
	25 X 4 i -- 30 X Q i
	25 X 5 i -- 30 X C i
	25 X 6 i -- 30 X S i
	25 X 7 i -- 30 X L i
	25 X 8 i -- 30 X O i
	25 X 9 i -- 30 X N i
	
    30 move_fim 31
	31 X * d -- 32 X * d
	
	32 X [0] i -- 35 X Z i
	32 X [1] i -- 35 X U i
	32 X [2] i -- 35 X D i
	32 X [3] i -- 35 X T i
	32 X [4] i -- 35 X Q i
	32 X [5] i -- 35 X C i
	32 X [6] i -- 35 X S i
	32 X [7] i -- 35 X L i
	32 X [8] i -- 35 X O i
	32 X [9] i -- 35 X N i
	
	35 X * i -- 21 X * i
fim identifica_maior

	
;bloco para inserir o primeiro numero apos o =
inicio insere_primeiro_numero 1
	
    1 transforma_para_numero 2
	
	2 X * e -- 100 X * e
	
    100 move_inicio 3
	3 X = i -- 5 X I i
	3 X * d -- 3 X * d
	
    5 move_fim 10
	10 X * d -- 11 X * d
	11 X _ i -- 15 X = i
	
    15 move_inicio 16
    16 insere_depois_igual 20
	
	; X Troca por -- - X = por
	20 X = i -- 25 X - i
	20 X * d -- 20 X * d
	
	; X Insere no -- final X = no
    25 move_fim 26
	26 X * d -- 27 X * d
	27 X _ i -- 30 X = i
	
	30 retorne
	
fim insere_primeiro_numero

	
;bloco para inserir o primeiro numero apos o = na subtracao
	
inicio insere_depois_igual_sub 1
    1 copiar 5
	5 X [0] i -- 10 X Z i
	5 X [1] i -- 10 X U i
	5 X [2] i -- 10 X D i
	5 X [3] i -- 10 X T i
	5 X [4] i -- 10 X Q i
	5 X [5] i -- 10 X C i
	5 X [6] i -- 10 X S i
	5 X [7] i -- 10 X L i
	5 X [8] i -- 10 X O i
	5 X [9] i -- 10 X N i
    10 move_fim 15
	15 X * d -- 16 X * d
    16 colar 20
    20 move_inicio_sub 25
    25 procura_numero 30
	30 retorne
	30 retorne
	30 retorne
	30 X * i -- 1 X * i
fim insere_depois_igual_sub

	
;Bloco para apagar os numeros entre o I e o =
inicio apaga_i_ate_igual 1
    1 move_inicio 5
	
	5 X I d -- 10 X * d
	5 X * d -- 5 X * d
	
	10 X = i -- 15 X * i
	10 X * d -- 10 X _ d
	
    15 volta_numeros_ate_i 20
	
	20 retorne
fim apaga_i_ate_igual

	
; Bloco para remover todos os espacos entre o I e os numeros do resultado
inicio volta_numeros_ate_i 1
    1 move_fim 2
	2 X * d -- 3 X * d
	3 X * i -- 4 X X i
	
	4 X = i -- 5 X * i
	4 X * e -- 4 X * e
	
    5 copiar 6
	6 X * i -- 10 X _ i
	
	10 X I i -- 20 X * i
	10 X _ e -- 10 X * e
	
    20 colar 25
	25 X * d -- 30 X * d
	30 X _ d -- 35 X I d
	
	35 X _ d -- 35 X * d
	35 X X i -- 40 X _ i
	35 X * i -- 5 X * i
	
	40 X _ e -- 40 X * e
	40 retorne
fim volta_numeros_ate_i

	
; bloco para apagar todos caracteres apos o =
inicio apaga_depois_igual 1
    1 move_fim 2
	2 X = i -- 3 X * i
	2 X * e -- 2 X _ e
    3 move_inicio 4
    4 transforma_para_numero 5
	5 retorne
fim apaga_depois_igual

;bloco para verificar se existe letra I a esquerda
inicio verifica_i_esquerda 1
	1 retorne
	1 retorne
	1 X * e -- 1 X * e
fim verifica_i_esquerda

	
; bloco para andar ate o sinal de -
inicio anda_ate_menos 1
	1 retorne
	1 X * d -- 1 X * d
fim anda_ate_menos

	
inicio identifica_maior_length_igual 1
	1 X move_inicio move -- inicio X ; move
    2 transforma_para_numero 3
	3 X _ e -- 4 X * e
	4 X H e -- 5 X _ e
    5 move_inicio 6
	;comeca X a para -- comparar X numero para
	6 X 0 i -- 10 X * i
	6 X 1 i -- 10 X * i
	6 X 2 i -- 10 X * i
	6 X 3 i -- 10 X * i
	6 X 4 i -- 10 X * i
	6 X 5 i -- 10 X * i
	6 X 6 i -- 10 X * i
	6 X 7 i -- 10 X * i
	6 X 8 i -- 10 X * i
	6 X 9 i -- 10 X * i
	6 X * d -- 6 X * d
    10 copiar 15
    15 transforma_numero_letra 20
    20 move_ate_igual 25
	25 X * d -- 25 X * d
	
    ;compara com 0
	30 X [0] i -- 5 X * i
	30 X [1] i -- 100 X * i
	30 X [2] i -- 100 X * i
	30 X [3] i -- 100 X * i
	30 X [4] i -- 100 X * i
	30 X [5] i -- 100 X * i
	30 X [6] i -- 100 X * i
	30 X [7] i -- 100 X * i
	30 X [8] i -- 100 X * i
	30 X [9] i -- 100 X * i
	
    ;compara com 1
	31 X [0] i -- 105 X * i
	31 X [1] i -- 5 X * i
	31 X [2] i -- 100 X * i
	31 X [3] i -- 100 X * i
	31 X [4] i -- 100 X * i
	31 X [5] i -- 100 X * i
	31 X [6] i -- 100 X * i
	31 X [7] i -- 100 X * i
	31 X [8] i -- 100 X * i
	31 X [9] i -- 100 X * i
	
    ;compara com 2
	32 X [0] i -- 105 X * i
	32 X [1] i -- 105 X * i
	32 X [2] i -- 5 X * i
	32 X [3] i -- 100 X * i
	32 X [4] i -- 100 X * i
	32 X [5] i -- 100 X * i
	32 X [6] i -- 100 X * i
	32 X [7] i -- 100 X * i
	32 X [8] i -- 100 X * i
	32 X [9] i -- 100 X * i
	
    ;compara com 3
	33 X [0] i -- 105 X * i
	33 X [1] i -- 105 X * i
	33 X [2] i -- 105 X * i
	33 X [3] i -- 5 X * i
	33 X [4] i -- 100 X * i
	33 X [5] i -- 100 X * i
	33 X [6] i -- 100 X * i
	33 X [7] i -- 100 X * i
	33 X [8] i -- 100 X * i
	33 X [9] i -- 100 X * i
	
    ;compara com 4
	34 X [0] i -- 105 X * i
	34 X [1] i -- 105 X * i
	34 X [2] i -- 105 X * i
	34 X [3] i -- 105 X * i
	34 X [4] i -- 5 X * i
	34 X [5] i -- 100 X * i
	34 X [6] i -- 100 X * i
	34 X [7] i -- 100 X * i
	34 X [8] i -- 100 X * i
	34 X [9] i -- 100 X * i
	
    ;compara com 5
	35 X [0] i -- 105 X * i
	35 X [1] i -- 105 X * i
	35 X [2] i -- 105 X * i
	35 X [3] i -- 105 X * i
	35 X [4] i -- 105 X * i
	35 X [5] i -- 5 X * i
	35 X [6] i -- 100 X * i
	35 X [7] i -- 100 X * i
	35 X [8] i -- 100 X * i
	35 X [9] i -- 100 X * i
	
    ;compara com 6
	36 X [0] i -- 105 X * i
	36 X [1] i -- 105 X * i
	36 X [2] i -- 105 X * i
	36 X [3] i -- 105 X * i
	36 X [4] i -- 105 X * i
	36 X [5] i -- 105 X * i
	36 X [6] i -- 5 X * i
	36 X [7] i -- 100 X * i
	36 X [8] i -- 100 X * i
	36 X [9] i -- 100 X * i
	
    ;compara com 7
	37 X [0] i -- 105 X * i
	37 X [1] i -- 105 X * i
	37 X [2] i -- 105 X * i
	37 X [3] i -- 105 X * i
	37 X [4] i -- 105 X * i
	37 X [5] i -- 105 X * i
	37 X [6] i -- 105 X * i
	37 X [7] i -- 5 X * i
	37 X [8] i -- 100 X * i
	37 X [9] i -- 100 X * i
	
    ;compara com 8
	38 X [0] i -- 105 X * i
	38 X [1] i -- 105 X * i
	38 X [2] i -- 105 X * i
	38 X [3] i -- 105 X * i
	38 X [4] i -- 105 X * i
	38 X [5] i -- 105 X * i
	38 X [6] i -- 105 X * i
	38 X [7] i -- 105 X * i
	38 X [8] i -- 5 X * i
	38 X [9] i -- 100 X * i
	
    ;compara com 9
	39 X [0] i -- 105 X * i
	39 X [1] i -- 105 X * i
	39 X [2] i -- 105 X * i
	39 X [3] i -- 105 X * i
	39 X [4] i -- 105 X * i
	39 X [5] i -- 105 X * i
	39 X [6] i -- 105 X * i
	39 X [7] i -- 105 X * i
	39 X [8] i -- 105 X * i
	39 X [9] i -- 5 X * i
	
    101 apaga_depois_igual 102
    102 transforma_para_numero 103
	103 X * e -- 103 X * e
	
	
    112 apaga_depois_igual 113
    113 transforma_para_numero 114
	114 X * e -- 114 X * e
	
fim identifica_maior_length_igual

	
;bloco para inserir o segundo numero depois do =
inicio insere_segundo_depois_igual 1
    1 copiar 5
	5 X [0] i -- 10 X Z i
	5 X [1] i -- 10 X U i
	5 X [2] i -- 10 X D i
	5 X [3] i -- 10 X T i
	5 X [4] i -- 10 X Q i
	5 X [5] i -- 10 X C i
	5 X [6] i -- 10 X S i
	5 X [7] i -- 10 X L i
	5 X [8] i -- 10 X O i
	5 X [9] i -- 10 X N i
    10 move_fim 15
	15 X * d -- 16 X * d
    16 colar 20
	20 X x d -- 25 X * d
	20 X * e -- 20 X * e
    25 procura_numero 30
	30 retorne
	30 X * i -- 1 X * i
fim insere_segundo_depois_igual

