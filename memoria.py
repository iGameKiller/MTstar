class Memoria(object):

    simboloBranco = '_'

    def __init__(self):
        self._esqFita1 = ''
        self._cabecote1 = Memoria.simboloBranco
        self._dirFita1 = ''

        self._esqFita2 = ''
        self._cabecote2 = Memoria.simboloBranco
        self._dirFita2 = ''

        self._esqFita3 = ''
        self._cabecote3 = Memoria.simboloBranco
        self._dirFita3 = ''

    @staticmethod
    def cb(c):
        if c == Memoria.simboloBranco:
            c = ' '
        return c

    def carregaPalavra(self, w):
        self._cabecote1 = w[0:1]
        self._dirFita1 = w[1:]

    def leFita1(self):
        return self._cabecote1

    def leFita2(self):
        return self._cabecote2

    def leFita3(self):
        return self._cabecote3




