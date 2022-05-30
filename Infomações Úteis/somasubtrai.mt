;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;   No bloco main, inicia-se a aplicação, então a primeira coisa a se fazer é   ;
;   verificar qual operação está sendo feita, + para soma, - para sub e x para  ;
;   multiplicação.                                                               ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
bloco main 1
    ;primeiro, encontra a operação
    1 encontra_operacao 5
    5 + -- * i 10
    5 - -- * i 15
    5 x -- * i 100

    ;caso soma
    10 soma 50

    ;caso subtracao necessario verificar qual o maior numero
    15 identifica_maior 20

    ;se na segunda fita retornar = indica que o primerio numero e maior
    20 [=] -- * i 25

    ;caso contrario indica que o segundo e maior
    20 * -- * i 21

    ;insere primeiro numero apos o =
    21 insere_primeiro_numero 25

    ;move ate o Inicio (ou I)
    25 move_inicio_sub 30

    ;Realiza subtracao a partir
    30 subtracao 31

    ;verifica se possui um I a esquerda
    31 verifica_i_esquerda 32

    ;caso possua I indica que o segundo numero e negativo e deve ser colocado o sinal de -
    32 I -- * i 33

    ;se nao existir indica que o primeiro numero e negativo
    32 _ -- * i 34

    ;caminha ate o sinal de subtracao
    33 anda_ate_menos 35
    34 anda_ate_menos 50

    ;caso necessario inserir o - move pra frente
    35 move_frente 40

    ;insere o menos
    40 _ -- - i 45

    ;apaga os numeros entre o I e o =
    45 apaga_i_ate_igual 50

    ; Transforma tudo para numero
    50 transforma_para_numero 55
    55 * -- * i aceite
fim

; Bloco Responsavel por Realizar o loop de soma e marcar numeros somados
bloco soma 1
    1 move_inicio 2
    2 insere_depois_igual 3
    3 move_ate_igual 4
    4 proximo_algarismo 5
    5 copiar 6
    6 transforma_numero_letra 7
    7 move_fim 8
    8 soma_numero 10
    10 proximo_algarismo 11
    11 + -- * i retorne
    11 0 -- * i 5
    11 1 -- * i 5
    11 2 -- * i 5
    11 3 -- * i 5
    11 4 -- * i 5
    11 5 -- * i 5
    11 6 -- * i 5
    11 7 -- * i 5
    11 8 -- * i 5
    11 9 -- * i 5
fim

;Bloco para somar 1 numero especfico

bloco soma_numero 1
    ;verifica se na fita principal tem letra (indica que numero ja foi somado)
    1 Z -- * e 1
    1 U -- * e 1
    1 D -- * e 1
    1 T -- * e 1
    1 Q -- * e 1
    1 C -- * e 1
    1 S -- * e 1
    1 L -- * e 1
    1 O -- * e 1
    1 N -- * e 1
    ;verifica se na fita principal tem o = indica que deve ser movido para frente
    1 = -- * i 2
    ;caso seja um valor a ser somado simplesmente soma
    1 * -- * i 5
    ;caso necessario mover os numeros para frente
    2 move_frente 4
    ;troca espaco em branco pelo numero 0 e executa soma
    4 _ -- 0 i 5
    ; verifica o que tem na segunda fita, para indicar como será feita a soma
    5 [0] -- * i 10
    5 [1] -- * i 20
    5 [2] -- * i 30
    5 [3] -- * i 40
    5 [4] -- * i 50
    5 [5] -- * i 60
    5 [6] -- * i 70
    5 [7] -- * i 80
    5 [8] -- * i 90
    5 [9] -- * i 100
    ;se tiver 0 na segunda fita
    10 0 -- 0 i 150
    10 1 -- 1 i 150
    10 2 -- 2 i 150
    10 3 -- 3 i 150
    10 4 -- 4 i 150
    10 5 -- 5 i 150
    10 6 -- 6 i 150
    10 7 -- 7 i 150
    10 8 -- 8 i 150
    10 9 -- 9 i 150
    ;se tiver 1 na segunda fita
    20 0 -- 1 i 150
    20 1 -- 2 i 150
    20 2 -- 3 i 150
    20 3 -- 4 i 150
    20 4 -- 5 i 150
    20 5 -- 6 i 150
    20 6 -- 7 i 150
    20 7 -- 8 i 150
    20 8 -- 9 i 150
    20 9 -- 0 i 200
    ;se tiver 2 na segunda fita
    30 0 -- 2 i 150
    30 1 -- 3 i 150
    30 2 -- 4 i 150
    30 3 -- 5 i 150
    30 4 -- 6 i 150
    30 5 -- 7 i 150
    30 6 -- 8 i 150
    30 7 -- 9 i 150
    30 8 -- 0 i 200
    30 9 -- 1 i 200
    ;se tiver 3 na segunda fita
    40 0 -- 3 i 150
    40 1 -- 4 i 150
    40 2 -- 5 i 150
    40 3 -- 6 i 150
    40 4 -- 7 i 150
    40 5 -- 8 i 150
    40 6 -- 9 i 150
    40 7 -- 0 i 200
    40 8 -- 1 i 200
    40 9 -- 2 i 200
    ;se tiver 4 na segunda fita
    50 0 -- 4 i 150
    50 1 -- 5 i 150
    50 2 -- 6 i 150
    50 3 -- 7 i 150
    50 4 -- 8 i 150
    50 5 -- 9 i 150
    50 6 -- 0 i 200
    50 7 -- 1 i 200
    50 8 -- 2 i 200
    50 9 -- 3 i 200
    ;se tiver 5 na segunda fita
    60 0 -- 5 i 150
    60 1 -- 6 i 150
    60 2 -- 7 i 150
    60 3 -- 8 i 150
    60 4 -- 9 i 150
    60 5 -- 0 i 200
    60 6 -- 1 i 200
    60 7 -- 2 i 200
    60 8 -- 3 i 200
    60 9 -- 4 i 200
    ;se tiver 6 na segunda fita
    70 0 -- 6 i 150
    70 1 -- 7 i 150
    70 2 -- 8 i 150
    70 3 -- 9 i 150
    70 4 -- 0 i 200
    70 5 -- 1 i 200
    70 6 -- 2 i 200
    70 7 -- 3 i 200
    70 8 -- 4 i 200
    70 9 -- 5 i 200
    ; se tiver 7 na segunda fita
    80 0 -- 7 i 150
    80 1 -- 8 i 150
    80 2 -- 9 i 150
    80 3 -- 0 i 200
    80 4 -- 1 i 200
    80 5 -- 2 i 200
    80 6 -- 3 i 200
    80 7 -- 4 i 200
    80 8 -- 5 i 200
    80 9 -- 6 i 200
    ; se tiver 8 na segunda fita
    90 0 -- 8 i 150
    90 1 -- 9 i 150
    90 2 -- 0 i 200
    90 3 -- 1 i 200
    90 4 -- 2 i 200
    90 5 -- 3 i 200
    90 6 -- 4 i 200
    90 7 -- 5 i 200
    90 8 -- 6 i 200
    90 9 -- 7 i 200
    ; se tiver 9 na segunda fita
    100 0 -- 9 i 150
    100 1 -- 0 i 200
    100 2 -- 1 i 200
    100 3 -- 2 i 200
    100 4 -- 3 i 200
    100 5 -- 4 i 200
    100 6 -- 5 i 200
    100 7 -- 6 i 200
    100 8 -- 7 i 200
    100 9 -- 8 i 200

    150 transforma_numero_letra 151
    151 * -- * i retorne

    ; trata o vai um a partir do 200
    200 transforma_numero_letra 201
	201 soma_vai_um 202
	202 * -- * i retorne
fim

;Bloco para Realizar o vai 1 caso necessario na soma
bloco soma_vai_um 1
	1 = -- * i 5
	1 0 -- 1 e retorne
    1 1 -- 2 e retorne
    1 2 -- 3 e retorne
    1 3 -- 4 e retorne
    1 4 -- 5 e retorne
    1 5 -- 6 e retorne
    1 6 -- 7 e retorne
    1 7 -- 8 e retorne
    1 8 -- 9 e retorne
    1 9 -- 0 e 1
	1 * -- * e 1
    5 move_frente 10
    10 * -- 1 i retorne

fim

; bloco para mover numero apos o = para frente e deixar espaco em branco entre o numero e o =
bloco move_frente 1
    1 move_fim 5
    5 0 -- X d 100
    5 Z -- X d 105
    5 1 -- X d 110
    5 U -- X d 115
    5 2 -- X d 120
    5 D -- X d 125
    5 3 -- X d 130
    5 T -- X d 135
    5 4 -- X d 140
    5 Q -- X d 145
    5 5 -- X d 150
    5 C -- X d 155
    5 6 -- X d 160
    5 S -- X d 165
    5 7 -- X d 170
    5 L -- X d 175
    5 8 -- X d 180
    5 O -- X d 185
    5 9 -- X d 190
    5 N -- X d 195

    100 * -- 0 i 200
    105 * -- Z i 200
    110 * -- 1 i 200
    115 * -- U i 200
    120 * -- 2 i 200
    125 * -- D i 200
    130 * -- 3 i 200
    135 * -- T i 200
    140 * -- 4 i 200
    145 * -- Q i 200
    150 * -- 5 i 200
    155 * -- C i 200
    160 * -- 6 i 200
    165 * -- S i 200
    170 * -- 7 i 200
    175 * -- L i 200
    180 * -- 8 i 200
    185 * -- O i 200
    190 * -- 9 i 200
    195 * -- N i 200

    200 X -- * e 205
    200 * -- * e 200
    205 = -- * d 210
    205 * -- * i 5
    210 X -- _ i retorne

fim

; bloco para transformar um numero em letra
bloco transforma_numero_letra 1
    1 0 -- Z i retorne
    1 1 -- U i retorne
    1 2 -- D i retorne
    1 3 -- T i retorne
    1 4 -- Q i retorne
    1 5 -- C i retorne
    1 6 -- S i retorne
    1 7 -- L i retorne
    1 8 -- O i retorne
    1 9 -- N i retorne
fim

;bloco para encontrar operação
bloco encontra_operacao 1
    1 + -- * i retorne
    1 - -- * i retorne
    1 x -- * i retorne
    1 * -- * d 1
fim

;bloco para mover ate o =
bloco move_ate_igual 1
    1 = -- * i retorne
    1 * -- * d 1
fim

;bloco para mover ate o inicio
bloco move_inicio 1
    1 _ -- * d retorne
    1 * -- * e 1
fim

;bloco para mover ate o inicio da operação inteira ou ate o I (indicador para subtracao negativa)
bloco move_inicio_sub 1
    1 I -- * d retorne
    1 _ -- * d retorne
    1 * -- * e 1
fim

;bloco para mover ate o final da operação
bloco move_fim 1
    1 _ -- * e retorne
    1 * -- * d 1
fim

;bloco para inserir o primeiro numero depois do =
bloco insere_depois_igual 1
    1 copiar 5
    5 [0] -- Z i 10
    5 [1] -- U i 10
    5 [2] -- D i 10
    5 [3] -- T i 10
    5 [4] -- Q i 10
    5 [5] -- C i 10
    5 [6] -- S i 10
    5 [7] -- L i 10
    5 [8] -- O i 10
    5 [9] -- N i 10
    10 move_fim 15
    15 * -- * d 16
    16 colar 20
    20 move_inicio 25
    25 procura_numero 30
    30 + -- * d retorne
    30 - -- * d retorne
    30 x -- * d retorne
    30 * -- * i 1
fim

;bloco para procurar o proximo numero da direita
bloco procura_numero 1
    1 0  -- * i retorne
    1 1  -- * i retorne
    1 2  -- * i retorne
    1 3  -- * i retorne
    1 4  -- * i retorne
    1 5  -- * i retorne
    1 6  -- * i retorne
    1 7  -- * i retorne
    1 8  -- * i retorne
    1 9  -- * i retorne
    1 +  -- * i retorne
    1 -  -- * i retorne
    1 x  -- * i retorne
    1 =  -- * i retorne
    1 *  -- * d 1
fim

;bloco para procurar o proximo numero da esquerda
bloco proximo_algarismo 1
    1 = -- * e 5
    1 * -- * e 1
    5 0 -- * i retorne
    5 1 -- * i retorne
    5 2 -- * i retorne
    5 3 -- * i retorne
    5 4 -- * i retorne
    5 5 -- * i retorne
    5 6 -- * i retorne
    5 7 -- * i retorne
    5 8 -- * i retorne
    5 9 -- * i retorne
    5 + -- * i retorne
    5 - -- * i retorne
    5 x -- * i retorne
    5 * -- * e 5
fim

;bloco para transformar toda a operacao em numeros
bloco transforma_para_numero 1
	1 move_inicio 2
	2 Z -- 0 d 2
    2 U -- 1 d 2
    2 D -- 2 d 2
    2 T -- 3 d 2
    2 Q -- 4 d 2
    2 C -- 5 d 2
    2 S -- 6 d 2
    2 L -- 7 d 2
    2 O -- 8 d 2
    2 N -- 9 d 2
    2 _ -- * i retorne
    2 * -- * d 2
fim

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Conjunto de Blocos para realizar subtracao
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;Bloco para realizar a subtracao inteira do numero (LOOP)
bloco subtracao 1
    1 [=] -- * i 11
    1 * -- * i 5
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
    50 - -- * i retorne
    50 0 -- * i 25
    50 1 -- * i 25
    50 2 -- * i 25
    50 3 -- * i 25
    50 4 -- * i 25
    50 5 -- * i 25
    50 6 -- * i 25
    50 7 -- * i 25
    50 8 -- * i 25
    50 9 -- * i 25
fim

; Bloco para subtrair um numero especfico
bloco subtrai_numero 1
    ;verifica se na fita principal tem letra (indica que numero ja foi subtraido)
    1 Z -- * e 1
    1 U -- * e 1
    1 D -- * e 1
    1 T -- * e 1
    1 Q -- * e 1
    1 C -- * e 1
    1 S -- * e 1
    1 L -- * e 1
    1 O -- * e 1
    1 N -- * e 1
    ;verifica se na fita principal tem o = indica que deve ser movido para frente
    1 = -- * i 2
    ;caso seja um valor a ser subtraido simplesmente subtrai
    1 * -- * i 5
    ;caso necessario mover os numeros para frente
    2 move_frente 4
    ;troca espaco em branco pelo numero 0 e executa subtracao
    4 _ -- 0 i 5
    ; verifica o que tem na segunda fita, para indicar como será feita a subtracao
    5 [0] -- * i 10
    5 [1] -- * i 20
    5 [2] -- * i 30
    5 [3] -- * i 40
    5 [4] -- * i 50
    5 [5] -- * i 60
    5 [6] -- * i 70
    5 [7] -- * i 80
    5 [8] -- * i 90
    5 [9] -- * i 100
    ;se tiver 0 na segunda fita
    10 0 -- 0 i 150
    10 1 -- 1 i 150
    10 2 -- 2 i 150
    10 3 -- 3 i 150
    10 4 -- 4 i 150
    10 5 -- 5 i 150
    10 6 -- 6 i 150
    10 7 -- 7 i 150
    10 8 -- 8 i 150
    10 9 -- 9 i 150
    ;se tiver 1 na segunda fita
    20 0 -- * i 200
    20 1 -- 0 i 150
    20 2 -- 1 i 150
    20 3 -- 2 i 150
    20 4 -- 3 i 150
    20 5 -- 4 i 150
    20 6 -- 5 i 150
    20 7 -- 6 i 150
    20 8 -- 7 i 150
    20 9 -- 8 i 150
    ;se tiver 2 na segunda fita
    30 0 -- * i 200
    30 1 -- * i 200
    30 2 -- 0 i 150
    30 3 -- 1 i 150
    30 4 -- 2 i 150
    30 5 -- 3 i 150
    30 6 -- 4 i 150
    30 7 -- 5 i 150
    30 8 -- 6 i 150
    30 9 -- 7 i 150
    ;se tiver 3 na segunda fita
    40 0 -- * i 200
    40 1 -- * i 200
    40 2 -- * i 200
    40 3 -- 0 i 150
    40 4 -- 1 i 150
    40 5 -- 2 i 150
    40 6 -- 3 i 150
    40 7 -- 4 i 150
    40 8 -- 5 i 150
    40 9 -- 6 i 150
    ;se tiver 4 na segunda fita
    50 0 -- * i 200
    50 1 -- * i 200
    50 2 -- * i 200
    50 3 -- * i 200
    50 4 -- 0 i 150
    50 5 -- 1 i 150
    50 6 -- 2 i 150
    50 7 -- 3 i 150
    50 8 -- 4 i 150
    50 9 -- 5 i 150
    ;se tiver 5 na segunda fita
    60 0 -- * i 200
    60 1 -- * i 200
    60 2 -- * i 200
    60 3 -- * i 200
    60 4 -- * i 200
    60 5 -- 0 i 150
    60 6 -- 1 i 150
    60 7 -- 2 i 150
    60 8 -- 3 i 150
    60 9 -- 4 i 150
    ;se tiver 6 na segunda fita
    70 0 -- * i 200
    70 1 -- * i 200
    70 2 -- * i 200
    70 3 -- * i 200
    70 4 -- * i 200
    70 5 -- * i 200
    70 6 -- 0 i 150
    70 7 -- 1 i 150
    70 8 -- 2 i 150
    70 9 -- 3 i 150
    ; se tiver 7 na segunda fita
    80 0 -- * i 200
    80 1 -- * i 200
    80 2 -- * i 200
    80 3 -- * i 200
    80 4 -- * i 200
    80 5 -- * i 200
    80 6 -- * i 200
    80 7 -- 0 i 150
    80 8 -- 1 i 150
    80 9 -- 2 i 150
    ; se tiver 8 na segunda fita
    90 0 -- * i 200
    90 1 -- * i 200
    90 2 -- * i 200
    90 3 -- * i 200
    90 4 -- * i 200
    90 5 -- * i 200
    90 6 -- * i 200
    90 7 -- * i 200
    90 8 -- 0 i 150
    90 9 -- 1 i 150
    ; se tiver 9 na segunda fita
    100 0 -- * i 200
    100 1 -- * i 200
    100 2 -- * i 200
    100 3 -- * i 200
    100 4 -- * i 200
    100 5 -- * i 200
    100 6 -- * i 200
    100 7 -- * i 200
    100 8 -- * i 200
    100 9 -- 0 i 150

    150 transforma_numero_letra 151
    151 * -- * i retorne

    ; trata o vai um a partir do 200
    200 sub_pede_emprestado 201
    201 transforma_numero_letra 202
    202 * -- * i retorne
fim

; bloco Responsavel por pedir um numero emprestado no numero da esquerda
bloco sub_pede_emprestado 1

    1 = -- * i retorne
    1 0 -- z e 20
    1 1 -- u e 20
    1 2 -- d e 20
    1 3 -- t e 20
    1 4 -- q e 20
    1 5 -- c e 20
    1 6 -- s e 20
    1 7 -- l e 20
    1 8 -- o e 20
    1 9 -- n e 20
    1 * -- * e 1

    20 0 -- * e 20

    20 = -- * i 5
    20 1 -- 0 d 25
    20 2 -- 1 d 25
    20 3 -- 2 d 25
    20 4 -- 3 d 25
    20 5 -- 4 d 25
    20 6 -- 5 d 25
    20 7 -- 6 d 25
    20 8 -- 7 d 25
    20 9 -- 8 d 25

    25 procura_minusculo 29

    29 [0] -- * i 30
    29 [1] -- * i 31
    29 [2] -- * i 32
    29 [3] -- * i 33
    29 [4] -- * i 34
    29 [5] -- * i 35
    29 [6] -- * i 36
    29 [7] -- * i 37
    29 [8] -- * i 38
    29 [9] -- * i 39

    ;se tiver 1 na segunda fita
    31 z -- 9 i 150

    ;se tiver 2 na segunda fita
    32 z -- 8 i 150
    32 u -- 9 i 150

    ;se tiver 3 na segunda fita
    33 z -- 7 i 150
    33 u -- 8 i 150
    33 d -- 9 i 150

    ;se tiver 4 na segunda fita
    34 z -- 6 i 150
    34 u -- 7 i 150
    34 d -- 8 i 150
    34 t -- 9 i 150

    ;se tiver 5 na segunda fita
    35 z -- 5 i 150
    35 u -- 6 i 150
    35 d -- 7 i 150
    35 t -- 8 i 150
    35 q -- 9 i 150

    ;se tiver 6 na segunda fita
    36 z -- 4 i 150
    36 u -- 5 i 150
    36 d -- 6 i 150
    36 t -- 7 i 150
    36 q -- 8 i 150
    36 c -- 9 i 150

    ;se tiver 7 na segunda fita
    37 z -- 3 i 150
    37 u -- 4 i 150
    37 d -- 5 i 150
    37 t -- 6 i 150
    37 q -- 7 i 150
    37 c -- 8 i 150
    37 s -- 9 i 150

    ;se tiver 8 na segunda fita
    38 z -- 2 i 150
    38 u -- 3 i 150
    38 d -- 4 i 150
    38 t -- 5 i 150
    38 q -- 6 i 150
    38 c -- 7 i 150
    38 s -- 8 i 150
    38 l -- 9 i 150

    ;se tiver 9 na segunda fita
    39 z -- 1 i 150
    39 u -- 2 i 150
    39 d -- 3 i 150
    39 t -- 4 i 150
    39 q -- 5 i 150
    39 c -- 6 i 150
    39 s -- 7 i 150
    39 l -- 8 i 150
    39 o -- 9 i 150

    150 * -- * i retorne
fim

;bloco para procurar indicador minusculo a direita
bloco procura_minusculo 1

    1 z -- * i retorne
    1 u -- * i retorne
    1 d -- * i retorne
    1 t -- * i retorne
    1 q -- * i retorne
    1 c -- * i retorne
    1 s -- * i retorne
    1 l -- * i retorne
    1 o -- * i retorne
    1 n -- * i retorne
    1 0 -- 9 d 1
    1 * -- * d 1
fim

; bloco para trasnformar letra minuscula em numero
bloco transforma_letra_minus_numero 1
    1 z -- 0 i retorne
    1 u -- 1 i retorne
    1 d -- 2 i retorne
    1 t -- 3 i retorne
    1 q -- 4 i retorne
    1 c -- 5 i retorne
    1 s -- 6 i retorne
    1 l -- 7 i retorne
    1 o -- 8 i retorne
    1 n -- 9 i retorne
fim

; bloco para pegar proximo_algarismo a direita
bloco proximo_algarismo_direita 1
    1 = -- * i retorne
    1 0 -- * i retorne
    1 1 -- * i retorne
    1 2 -- * i retorne
    1 3 -- * i retorne
    1 4 -- * i retorne
    1 5 -- * i retorne
    1 6 -- * i retorne
    1 7 -- * i retorne
    1 8 -- * i retorne
    1 9 -- * i retorne
    1 H -- * i retorne
    1 * -- * d 1
fim

; Bloco para identificar qual o maior numero de uma subtracao (numero antes do - ou depois do -)
bloco identifica_maior 1

    1 move_inicio_sub 2
    2 insere_depois_igual 3

    3 move_fim 4
    4 * -- * d 5
    5 _ -- H i 6

    6 - -- * i 7
    6 * -- * e 6

    7 proximo_algarismo_direita 8
    8 copiar 9

    9 0 -- Z i 10
    9 1 -- U i 10
    9 2 -- D i 10
    9 3 -- T i 10
    9 4 -- Q i 10
    9 5 -- C i 10
    9 6 -- S i 10
    9 7 -- L i 10
    9 8 -- O i 10
    9 9 -- N i 10
    9 [=] -- * i 10

    10 = -- * d 11
    10 * -- * d 10

    11 proximo_algarismo_direita 12

    12 [=] -- * i 16 ; indica que os lenght sao iguais
    12 H -- * i 20 ; o segundo numero eh maior

    12 [0] -- Z i 15
    12 [1] -- U i 15
    12 [2] -- D i 15
    12 [3] -- T i 15
    12 [4] -- Q i 15
    12 [5] -- C i 15
    12 [6] -- S i 15
    12 [7] -- L i 15
    12 [8] -- O i 15
    12 [9] -- N i 15

    16 H -- * i 17
    16 * -- * i 18
    17 identifica_maior_length_igual 19
    18 apaga_depois_igual 19
    19 * -- * i retorne

    15 * -- * i 6

    ; sobreescrevendo o H
    20 [0] -- Z i 21
    20 [1] -- U i 21
    20 [2] -- D i 21
    20 [3] -- T i 21
    20 [4] -- Q i 21
    20 [5] -- C i 21
    20 [6] -- S i 21
    20 [7] -- L i 21
    20 [8] -- O i 21
    20 [9] -- N i 21


    21 - -- * i 22
    21 * -- * e 21
    22 proximo_algarismo_direita 23

    23 - -- * i retorne
    23 = -- * i retorne
    23 * -- * i 24

    24 copiar 25

    25 0 -- Z i 30
    25 1 -- U i 30
    25 2 -- D i 30
    25 3 -- T i 30
    25 4 -- Q i 30
    25 5 -- C i 30
    25 6 -- S i 30
    25 7 -- L i 30
    25 8 -- O i 30
    25 9 -- N i 30

    ; cria um espaco vazio
    30 move_fim 31
    31 * -- * d 32

    32 [0] -- Z i 35
    32 [1] -- U i 35
    32 [2] -- D i 35
    32 [3] -- T i 35
    32 [4] -- Q i 35
    32 [5] -- C i 35
    32 [6] -- S i 35
    32 [7] -- L i 35
    32 [8] -- O i 35
    32 [9] -- N i 35

    35 * -- * i 21
fim

;bloco para inserir o primeiro numero apos o =
bloco insere_primeiro_numero 1

    ; Transforma tudo para numero
    1 transforma_para_numero 2

    2 * -- * e 100

    100 move_inicio 3
    3 = -- I i 5
    3 * -- * d 3

    5 move_fim 10
    10 * -- * d 11
    11 _ -- = i 15

    15 move_inicio 16
    16 insere_depois_igual 20

    ; Troca o = por -
    20 = -- - i 25
    20 * -- * d 20

    ; Insere o = no final
    25 move_fim 26
    26 * -- * d 27
    27 _ -- = i 30

    30 * -- * i retorne

fim

;bloco para inserir o primeiro numero apos o = na subtracao

bloco insere_depois_igual_sub 1
    1 copiar 5
    5 [0] -- Z i 10
    5 [1] -- U i 10
    5 [2] -- D i 10
    5 [3] -- T i 10
    5 [4] -- Q i 10
    5 [5] -- C i 10
    5 [6] -- S i 10
    5 [7] -- L i 10
    5 [8] -- O i 10
    5 [9] -- N i 10
    10 move_fim 15
    15 * -- * d 16
    16 colar 20
    20 move_inicio_sub 25
    25 procura_numero 30
    30 + -- * d retorne
    30 - -- * d retorne
    30 x -- * d retorne
    30 * -- * i 1
fim

;Bloco para apagar os numeros entre o I e o =
bloco apaga_i_ate_igual 1
    1 move_inicio 5

    5 I -- * d 10
    5 * -- * d 5

    10 = -- * i 15
    10 * -- _ d 10

    15 volta_numeros_ate_i 20

    20 * -- * i retorne
fim

; Bloco para remover todos os espacos entre o I e os numeros do resultado
bloco volta_numeros_ate_i 1
    1 move_fim 2
    2 * -- * d 3
    3 * -- X i 4

    4 = -- * i 5
    4 * -- * e 4

    5 copiar 6
    6 * -- _ i 10

    10 I -- * i 20
    10 _ -- * e 10

    20 colar 25
    25 * -- * d 30
    30 _ -- I d 35

    35 _ -- * d 35
    35 X -- _ i 40
    35 * -- * i 5

    40 _ -- * e 40
    40 I -- _ e retorne
fim

; bloco para apagar todos caracteres apos o =
bloco apaga_depois_igual 1
    1 move_fim 2
    2 = -- * i 3
    2 * -- _ e 2
    3 move_inicio 4
    4 transforma_para_numero 5
    5 * -- * e retorne
fim
;bloco para verificar se existe letra I a esquerda
bloco verifica_i_esquerda 1
    1 I -- * i retorne
    ;se achar espaco em branco acabou a palavra
    1 _ -- * i retorne
    1 * -- * e 1
fim

; bloco para andar ate o sinal de -
bloco anda_ate_menos 1
    1 - -- * i retorne
    1 * -- * d 1
fim

bloco identifica_maior_length_igual 1
    1 move_inicio 2 ; move inicio
    2 transforma_para_numero 3
    3 _ -- * e 4
    4 H -- _ e 5
    5 move_inicio 6
    ;comeca a copiar numero para comparar
    6 0 -- * i 10
    6 1 -- * i 10
    6 2 -- * i 10
    6 3 -- * i 10
    6 4 -- * i 10
    6 5 -- * i 10
    6 6 -- * i 10
    6 7 -- * i 10
    6 8 -- * i 10
    6 9 -- * i 10
    6 * -- * d 6
    10 copiar 15
    15 transforma_numero_letra 20
    20 move_ate_igual 25
    ;Pega numero
    25 0 -- Z i 30 ; Ira comparar com 0
    25 1 -- U i 31 ; Ira comparar com 1
    25 2 -- D i 32 ; Ira comparar com 2
    25 3 -- T i 33 ; Ira comparar com 3
    25 4 -- Q i 34 ; Ira comparar com 4
    25 5 -- C i 35 ; Ira comparar com 5
    25 6 -- S i 36 ; Ira comparar com 6
    25 7 -- L i 37 ; Ira comparar com 7
    25 8 -- O i 38 ; Ira comparar com 8
    25 9 -- N i 39 ; Ira comparar com 9
    25 _ -- * i 110 ; Caso onde os numeros sao iguais
    25 * -- * d 25

    ;compara com 0
    30 [0] -- * i 5
    30 [1] -- * i 100
    30 [2] -- * i 100
    30 [3] -- * i 100
    30 [4] -- * i 100
    30 [5] -- * i 100
    30 [6] -- * i 100
    30 [7] -- * i 100
    30 [8] -- * i 100
    30 [9] -- * i 100

    ;compara com 1
    31 [0] -- * i 105
    31 [1] -- * i 5
    31 [2] -- * i 100
    31 [3] -- * i 100
    31 [4] -- * i 100
    31 [5] -- * i 100
    31 [6] -- * i 100
    31 [7] -- * i 100
    31 [8] -- * i 100
    31 [9] -- * i 100

    ;compara com 2
    32 [0] -- * i 105
    32 [1] -- * i 105
    32 [2] -- * i 5
    32 [3] -- * i 100
    32 [4] -- * i 100
    32 [5] -- * i 100
    32 [6] -- * i 100
    32 [7] -- * i 100
    32 [8] -- * i 100
    32 [9] -- * i 100

    ;compara com 3
    33 [0] -- * i 105
    33 [1] -- * i 105
    33 [2] -- * i 105
    33 [3] -- * i 5
    33 [4] -- * i 100
    33 [5] -- * i 100
    33 [6] -- * i 100
    33 [7] -- * i 100
    33 [8] -- * i 100
    33 [9] -- * i 100

    ;compara com 4
    34 [0] -- * i 105
    34 [1] -- * i 105
    34 [2] -- * i 105
    34 [3] -- * i 105
    34 [4] -- * i 5
    34 [5] -- * i 100
    34 [6] -- * i 100
    34 [7] -- * i 100
    34 [8] -- * i 100
    34 [9] -- * i 100

    ;compara com 5
    35 [0] -- * i 105
    35 [1] -- * i 105
    35 [2] -- * i 105
    35 [3] -- * i 105
    35 [4] -- * i 105
    35 [5] -- * i 5
    35 [6] -- * i 100
    35 [7] -- * i 100
    35 [8] -- * i 100
    35 [9] -- * i 100

    ;compara com 6
    36 [0] -- * i 105
    36 [1] -- * i 105
    36 [2] -- * i 105
    36 [3] -- * i 105
    36 [4] -- * i 105
    36 [5] -- * i 105
    36 [6] -- * i 5
    36 [7] -- * i 100
    36 [8] -- * i 100
    36 [9] -- * i 100

    ;compara com 7
    37 [0] -- * i 105
    37 [1] -- * i 105
    37 [2] -- * i 105
    37 [3] -- * i 105
    37 [4] -- * i 105
    37 [5] -- * i 105
    37 [6] -- * i 105
    37 [7] -- * i 5
    37 [8] -- * i 100
    37 [9] -- * i 100

    ;compara com 8
    38 [0] -- * i 105
    38 [1] -- * i 105
    38 [2] -- * i 105
    38 [3] -- * i 105
    38 [4] -- * i 105
    38 [5] -- * i 105
    38 [6] -- * i 105
    38 [7] -- * i 105
    38 [8] -- * i 5
    38 [9] -- * i 100

    ;compara com 9
    39 [0] -- * i 105
    39 [1] -- * i 105
    39 [2] -- * i 105
    39 [3] -- * i 105
    39 [4] -- * i 105
    39 [5] -- * i 105
    39 [6] -- * i 105
    39 [7] -- * i 105
    39 [8] -- * i 105
    39 [9] -- * i 5

    100 gravar = 101 ;caso onde o primeiro numero eh maior, grava o = indicando isso
    101 apaga_depois_igual 102
    102 transforma_para_numero 103
    103 = -- * i retorne ;retorna
    103 * -- * e 103

    105 * -- * i retorne ;caso onde o segundo numero eh maior

    110 * -- * e 111 ;caso onde o segundo numero eh maior
    111 gravar = 112 ;caso onde o primeiro numero eh maior, grava o = indicando isso
    112 apaga_depois_igual 113
    113 transforma_para_numero 114
    114 = -- * i retorne ;retorna
    114 * -- * e 114

fim

;bloco para inserir o segundo numero depois do =
bloco insere_segundo_depois_igual 1
    1 copiar 5
    5 [0] -- Z i 10
    5 [1] -- U i 10
    5 [2] -- D i 10
    5 [3] -- T i 10
    5 [4] -- Q i 10
    5 [5] -- C i 10
    5 [6] -- S i 10
    5 [7] -- L i 10
    5 [8] -- O i 10
    5 [9] -- N i 10
    10 move_fim 15
    15 * -- * d 16
    16 colar 20
    20 x -- * d 25
    20 * -- * e 20
    25 procura_numero 30
    30 = -- * i retorne
    30 * -- * i 1
fim

