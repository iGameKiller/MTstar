; copia inteiro na fita X, fornecido na entrada , para as fitas Y e Z

$d = "0123456789"
$e = "666"

; checa validade da entrada
inicio main 01
    01 X $d i -- 03 X $e i
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

;   Segue o significado dos termos apresentados na sintaxe do comando:
;       <estadoA> – número do estado atual.
;       <fitaA> – identificador da fita de leitura, uma dentre X, Y ou Z.
;       <simbA> – símbolo encontrado no cabeçote da <fitaA>.
;       <moveA> – tipo de movimento executado na <fitaA> caso seja executada a instrução.
;       <estadoB> – número do novo estado caso seja executada a instrução.
;       <fitaB> – identificador da fita de escrita, uma dentre X, Y ou Z.
;       <simbB> – símbolo escrito no cabeçote de <fitaB> caso seja executada a instrução.
;       <moveB> – tipo de movimento executado na <fitaB> caso seja executada a instrução.