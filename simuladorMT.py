from interface import *
from memoria import *


class TuringMachine():
    maxPassosSemIntervencao = 1000

    def __init__(self, arquivo, entrada, resume=True, debug=False, step=0):
        self.interface = Interface("escreve.mt", 'Pedro', False, True, 0) # Interface(arquivo, entrada, resume, debug, step)
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
        # print('\nexecutando...\n') TODO: Descomentar dps
        self.chamada('main', None)
        self.run()
        return

    def chamada(self, bloco, retorno):

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
        #print("Aliases:", self.interface.aliases)  # Mostra os aliases do programa

        for i in range(0, 1):
            comando = self.buscaComando()
            self.executaComando(comando)



    def resetaPassos(self):
        if self.step == 0:
            self.step = TuringMachine.maxPassosSemIntervencao
        self.passos = self.step

    def buscaComando(self):  # uma parte busca comando, a outra executa, esse busca
        bloco = self.blocoAtual()
        # print("Bloco atual:", bloco)
        estado = self.estado
        fita1 = self.memoria.leFita1()
        fita2 = self.memoria.leFita2()
        fita3 = self.memoria.leFita3()
        inicial, comandos = self.blocos[bloco]
        # print("bloco atual:", bloco)
        # print("estado atual:", estado)
        # print("cabecote fita 1: ", self.memoria.leFita1())
        # print("cabecote fita 2: ", self.memoria.leFita2())
        # print("cabecote fita 3: ", self.memoria.leFita3())

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
        # c = c[0:-1]
        # self._debuga(c, parada)
        tipo = c[0]
        if tipo == 'padrao':

            t, estadoA, idFitaA, lidoA, direcaoA, estadoB, idFitaB, escritoB, direcaoB = c
            print("Comando lido:", estadoA, idFitaA, lidoA, direcaoA, estadoB, idFitaB, escritoB, direcaoB)  # comando da vez

            if idFitaB == 'X':
                self.memoria.escreveFita1(escritoB)
                self.memoria.moveFita1(direcaoB)
            elif idFitaB == 'Y':
                self.memoria.escreveFita2(escritoB)
                self.memoria.moveFita2(direcaoB)

            elif idFitaB == 'Z':
                self.memoria.escreveFita3(escritoB)
                self.memoria.moveFita3(direcaoB)

            self.atualizaEstado(estadoB)
            print("estado novo", self.estado)

            print("\n\nupdate fita 1: ", self.memoria.leFita1())
            print("update fita 2: ", self.memoria.leFita2())
            print("update fita 3: ", self.memoria.leFita3())

            # print(t, estadoA, idFitaA, lidoA, direcaoA, estadoB, idFitaB, escritoB, direcaoB)
            # if escritoB != '*':  # se o novo caracter for diferente do coringa, escreve na fita o novo caracter

            # if escritoB[0] == '$':
            #     aliases = self.interface.aliases
            #     print("EscritoB lido:", escritoB)
            #     for a in range(len(aliases)):
            #
            #         if aliases[a][0] == escritoB:
            #             print("Alias a ser escrito", aliases[a][0])
            #             aliasAescrever = aliases[a][1]
            #
            #             aliasAescrever = aliasAescrever[1:-1]
            #             aliasAescrever = str(aliasAescrever)
            #             aliasAescrever = aliasAescrever.split()
            #             print(aliasAescrever)
            #             for w in aliasAescrever:
            #                 print("w")
            #                 self.memoria.escreveFita1(str(w))
            #                 self.memoria.moveFita1("d")
            #         #     print("alias a ser escrito:",aliasAescrever)
            #
            #     #for w in range(alias)

            return

        elif tipo == 'chamada':
            t, estadoIni, idBlocoAlvo, estadoRetorno = c
            self.chamada(idBlocoAlvo, estadoRetorno)

        elif tipo == 'final':
            print("final")

    def atualizaEstado(self, novoEstado):

        if novoEstado == 'retorne':
            bloco, retorno = self.pilhaDeChamada[(-1)]
            if retorno is None:
                self.terminouExecucao()
            else:
                self.estado = retorno
                self.desempilhaChamada()

        elif novoEstado == 'aceite':
            self.terminouExecucao(True)

        elif novoEstado == 'rejeite':
            self.terminouExecucao(False)

        else:
            self.estado = novoEstado

        return

    def _terminouExecucao(self, aceita=False):
        self.aceita = aceita
        self.running = False


if __name__ == '__main__':
    #parametros = vars(linhaDeComando())

    # print("Parâmetros passados: ", parametros)

    MT = TuringMachine("escreve.mt", "Pedro")
    MT.carregaPrograma()


    MT.executa()  # GOTO: linha 25
