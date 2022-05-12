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

    def executa(self):
        self.memoria.carregaPalavra(self.entrada)
        print('\nexecutando...\n')
        self.start('main', None)
        self.run()
        return

    def start(self, bloco, retorno):

        try:
            inicial, comandos = self.blocos[bloco]
        except:
            print('Erro... bloco %s não encontrado' % bloco)
            raise SystemExit

        self.estado = inicial
        self.empilhaChamada(bloco, retorno)

    def empilhaChamada(self, bloco, retorno):

        if retorno == 'retorne':
            print('Error... double return to call %s' % bloco)
            raise SystemExit

        self.pilhaDeChamada.append([bloco, retorno])
        print("Pilha de chamada:", self.pilhaDeChamada)

    def run(self):
        self.resetaPassos()
        self.running = True
        self.aceita = False
        while self.running:
            comando = self.buscaComando()
            print("Comando lido:", comando)

            self.executaComando(comando)
            self.running = False

    def resetaPassos(self):
        if self.step == 0:
            self.step = TuringMachine.maxPassosSemIntervencao
        self.passos = self.step

    def buscaComando(self):
        bloco = self.blocoAtual()
        print("Bloco atual:", bloco)
        estado = self.estado
        fita1 = self.memoria.leFita1()
        fita2 = self.memoria.leFita2()
        fita3 = self.memoria.leFita3()
        inicial, comandos = self.blocos[bloco]

        print("Estado inicial:", self.estado)

        for c in comandos:

            tipo = c[0]
            if tipo == 'padrao':
                return c
            elif tipo == 'chamada':
                return c
            elif tipo == 'final':
                return c

    def blocoAtual(self):  # bloco atual é sempre a ultima posição da pilha de chamada
        return self.pilhaDeChamada[(-1)][0]  # primeira posição da ultima chamada de bloco

    def executaComando(self, c):
        if c is None:
            self.terminouExecucao(False)

        parada = c[(-1)]
        #c = c[0:-1]
        # self._debuga(c, parada)
        tipo = c[0]
        if tipo == 'padrao':
            t, estadoA, idFitaA, lidoA, direcaoA, estadoB, idFitaB, escritoB, direcaoB = c

        elif tipo == 'chamada':
            t, estadoIni, idBlocoAlvo, estadoRetorno = c

        elif tipo == 'final':
            print("final")



if __name__ == '__main__':
    parametros = vars(linhaDeComando())
    print("Parâmetros passados: ", parametros)

    MT = TuringMachine(**parametros)
    MT.carregaPrograma()
    # print('blocos: ', MT.blocos)

    MT.executa()
