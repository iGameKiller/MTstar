; copia inteiro na fita X, fornecido na entrada , para as fitas Y e Z

$d = "0123456789"

; checa validade da entrada
inicio main 01
    01 X $d i -- 03 X $d i
    01 X * i -- 05 X * i
    03 copiaX 04
    04 aceita
    05 rejeita
fim main

; copia o inteiro em X para Y e Z
inicio copiaX 01
    01 X $d i -- 03 Y $d d
    01 X * i -- 02 X * i
    02 retorne
    03 X $d d -- 01 Z $d d
fim copiaX
