; Programa reconhecedor da linguagem anbn
; Tupla de busca de comando: <estIni> <fitaLeitura> <simboloLeitura> <direcaoFitaLeitura>
; Tupla de execução de comando: <estAlvo> <fitaAlvo> <simboloEscrita> <direcaoFitaEscrita

inicio main 01

    ;   Estado 1
    01 X a d -- 02 X x d
    01 X b i -- 05 X * i
    01 X y i -- 06 X y i
    01 X _ i -- 05 X * i

    ;   Estado 2
    02 X a d -- 02 X a d
    02 X b d -- 02 X b d
    02 X _ e -- 03 X _ e
    02 X y e -- 03 X y e

    ; Estado 3
    03 X b e -- 04 X y e
    03 X x i -- 05 X _ i
    03 X a i -- 05 X _ i

    ;   Estado 4
    04 X a e -- 04 X a e
    04 X b e -- 04 X b e
    04 X x d -- 01 X x d

    05 rejeite
    06 aceite

fim main