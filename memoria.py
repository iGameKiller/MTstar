##################################################
##      MTStar - Máquina de Turing Doravante    ##
##      João Pedro Mendonça de Souza - 0035330  ##
##      Teoria da Computação - 2022             ##
###################################################


class Memoria(object):
    simboloBranco = '_'

    def __init__(self, nome, marcadoresCabecote='[]'):
        self._marcadores = marcadoresCabecote
        self._nome = nome

        self._esqFita1 = ''
        self._cabecote1 = Memoria.simboloBranco
        self._dirFita1 = ''

        self._cabecote2 = Memoria.simboloBranco

    @staticmethod
    def cb(c):
        if c == Memoria.simboloBranco:
            c = ' '
        return c

    def carregaPalavra(self, w):
        self._cabecote1 = w[0:1]  # posicionado em cima do cabeçote
        self._dirFita1 = w[1:]  # o que está a direita do cabeçote

    def leFita1(self):
        return self._cabecote1

    def leFita2(self):
        return self._cabecote2

    def escreveFita1(self, simbolo):
        self._cabecote1 = simbolo

    def escreveFita2(self, simbolo):
        self._cabecote2 = simbolo

    def moveFita1(self, dir):
        if dir.upper() == 'D':
            self._esqFita1 = self._esqFita1 + self._cabecote1
            if len(self._dirFita1) > 0:
                self._cabecote1 = self._dirFita1[0]
                self._dirFita1 = self._dirFita1[1:]
            else:
                self._cabecote1 = ' '
        elif dir.upper() == 'E':
            self._dirFita1 = self._cabecote1 + self._dirFita1
            if len(self._esqFita1) > 0:
                self._cabecote1 = self._esqFita1[(-1)]
                self._esqFita1 = self._esqFita1[:-1]
            else:
                self._cabecote1 = ' '
        elif dir.upper() == 'I':
            pass
        else:
            print('Error... tape movement invalid')
            raise SystemExit

    def atuaFita1(self, simbolo, dir):
        self.escreveFita1(simbolo)
        self.moveFita1(dir)

    def _head(self):
        str = self._marcadores
        msg = str[0] + self._cabecote1.replace(' ', Memoria.simboloBranco) + str[1]
        return msg.replace(' ', Memoria.simboloBranco)

    def _left(self, tam=20):
        mascara = '{:%c>' + str(tam) + '}'
        formato = mascara % Memoria.simboloBranco
        fita = self._esqFita1[-tam:]
        msg = formato.format(fita.replace(' ', Memoria.simboloBranco))
        return msg

    def _right(self, tam=20):
        mascara = '{:%c<' + str(tam) + '}'
        formato = mascara % Memoria.simboloBranco
        fita = self._dirFita1[:tam - 1]
        msg = formato.format(fita.replace(' ', Memoria.simboloBranco))
        return msg

    def __str__(self):
        linha = self._left() + self._head() + self._right()
        linha = linha + ' : ' + self._cabecote2.replace(' ', Memoria.simboloBranco)
        return linha

    def dump(self):
        linha = self._left(20) + self._head() + self._right(20)
        print(self._nome, ':', linha)
