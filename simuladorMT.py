from interface import *
from memoria import *


class TuringMachine(object):
    maxPassosSemIntervencao = 1000

    def __init__(self, arquivo, entrada, resume=True, debug=False, step=0):
        self.interface = Interface(arquivo, entrada, resume, debug, step)
        self.memoria = Memoria()
        self.estado = None
        self.pilhaDeChamada = list()
        self.blocos = None
        return

    def carregaPrograma(self):
        carga = self.interface.entrada()
        self.entrada = carga['entrada']
        self.resume = carga['resume']
        self.debug = carga['debug']
        self.step = carga['step']
        self.blocos = carga['blocos']


if __name__ == '__main__':
    parametros = vars(linhaDeComando())
    print("Parâmetros passados: ", parametros)

    MT = TuringMachine(**parametros)
    MT.carregaPrograma()
    print('blocos: ', MT.blocos)
