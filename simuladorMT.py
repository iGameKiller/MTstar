from interface import *
from memoria import *


class TuringMachine:
    maxPassosSemIntervencao = 1000

    def __init__(self, arquivo, entrada, head='()', resume=True, debug=False, step=0):
        self.passos = None
        self.aceita = False
        self.running = True
        self.interface = Interface("./testPrograms/teste.mt", 'ab.', head, False, True,0)  # Interface(arquivo, entrada, resume, debug, step)
        self.memoriaX = Memoria('Fita X')
        self.memoriaY = Memoria('Fita Y')
        self.memoriaZ = Memoria('Fita Z')
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

        self.memoriaX.carregaPalavra(self.entrada)
        print("Simulador de Máquina de Turing Suave versão 1.0")
        print("Desenvolvido como trabalho prático para a disciplina de Teoria da Computação")
        print("Autor: João Pedro Mendonça de Souza, IFMG − Formiga, 2022.")
        print('\nexecutando...\n')
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
            print('Erro... duplo retorno a chamada do bloco %s' % bloco)
            raise SystemExit

        self.pilhaDeChamada.append([bloco, retorno])

    def run(self):

        self.resetaPassos()

        while self.running:
            comando = self.buscaComando()
            self.executaComando(comando)

        if self.aceita:
            self.memoriaX.dump()
            self.memoriaY.dump()
            self.memoriaZ.dump()
            print('\nACEITA.')
        else:
            print('\nREJEITA.')

    def resetaPassos(self):

        if self.step == 0:
            self.step = TuringMachine.maxPassosSemIntervencao
        self.passos = self.step

    def buscaComando(self):  # uma parte busca comando, a outra executa, esse busca

        bloco = self.blocoAtual()
        estado = self.estado
        fita1 = self.memoriaX.leFita1()
        fita2 = self.memoriaY.leFita1()
        fita3 = self.memoriaZ.leFita1()
        inicial, comandos = self.blocos[bloco]

        for c in comandos:
            state = c[1]  # estado igual primeira posição do vetor de comando
            if state != estado:
                continue

            tipo = c[0]
            if tipo == 'fita1' and c[3] in (fita1, '*'):
                return c
            if tipo == 'fita2' and c[3] in (fita2, '*'):
                return c
            if tipo == 'fita3' and c[3] in (fita3, '*'):
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

        parada = False
        self.debuga(c, parada)
        tipo = c[0]

        if tipo == 'fita1' or tipo == 'fita2' or tipo == 'fita3':

            t, estadoIni, fitaLer, charLer, dirFitaLer, estadoAlvo, fitaEscrita, charEscrita, dirFitaEscrita = c

            if charEscrita != '*':  # se o novo caracter for diferente do coringa, escreve na fita o novo caracter

                if fitaEscrita == 'X':
                    self.memoriaX.escreveFita1(charEscrita)
                    self.memoriaX.moveFita1(dirFitaEscrita)
                elif fitaEscrita == 'Y':
                    self.memoriaY.escreveFita1(charEscrita)
                    self.memoriaY.moveFita1(dirFitaEscrita)
                elif fitaEscrita == 'Z':
                    self.memoriaZ.escreveFita1(charEscrita)
                    self.memoriaZ.moveFita1(dirFitaEscrita)

            elif charEscrita == '*':
                if fitaEscrita == 'X':
                    self.memoriaX.moveFita1(dirFitaEscrita)
                elif fitaEscrita == 'Y':
                    self.memoriaY.moveFita1(dirFitaEscrita)
                elif fitaEscrita == 'Z':
                    self.memoriaZ.moveFita1(dirFitaEscrita)

            if fitaLer == 'X' and fitaEscrita != 'X':
                self.memoriaX.moveFita1(dirFitaLer)

            elif fitaLer == 'Y' and fitaEscrita != 'Y':
                self.memoriaY.moveFita1(dirFitaLer)

            elif fitaLer == 'Z' and fitaEscrita != 'Z':
                self.memoriaZ.moveFita1(dirFitaLer)

            self.atualizaEstado(estadoAlvo)

        elif tipo == 'chamada':
            t, estadoIni, idBlocoAlvo, estadoRetorno = c
            self.chamada(idBlocoAlvo, estadoRetorno)

        elif tipo == 'final':
            tipo, estadoAlvo, comando = c
            self.atualizaEstado(comando)

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

    def terminouExecucao(self, aceita=False):

        self.aceita = aceita
        self.running = False

    def debuga(self, c, parada):

        interrompeu = False
        while self.passos <= 0:
            interrompeu = True

            print(
                '\nEste programa executou %d computações.' % self._steps +
                '\nDeseja continuar?' +
                '\nDigite um inteiro para mais n passos.' +
                '\n(0 = stop, %d = max) ' % TuringMachine.maxPassosSemIntervencao
            )

            while True:
                try:
                    n = input('--> ')
                except SyntaxError:
                    n = -1
                else:
                    try:
                        n = int(n)
                    except ValueError:
                        n = -1
                    else:
                        if 0 <= int(n) <= TuringMachine.maxPassosSemIntervencao:
                            break

            self.steps = self.passos = int(n)

            if self.steps == 0:
                self.terminouExecucao(False)
                return

        if parada and not interrompeu:
            try:
                input('\nBreakpoint... pressione [enter] para continuar \n')
            except SyntaxError:
                pass

        if not self.debug:
            self.passos = int(self.passos) - 1
            return

        linhaX = 'Fita X: '
        linhaX += self.montaLinha()
        linhaX = linhaX + str(self.memoriaX)

        linhaY = 'Fita Y: '
        linhaY += self.montaLinha()
        linhaY = linhaY + str(self.memoriaY)

        linhaZ = 'Fita Z: '
        linhaZ += self.montaLinha()
        linhaZ = linhaZ + str(self.memoriaZ)

        print(linhaX, ' | ', c)
        print(linhaY, ' |')
        print(linhaZ, ' | \n')

        self.passos = int(self.passos) - 1

    def numComandoExecutado(self):
        n = self.step
        if n == 0:
            n = TuringMachine.maxPassosSemIntervencao
        n = n - self.passos + 1
        return n

    def montaLinha(self):
        linha = '{:0>3d} '.format(self.numComandoExecutado())
        linha = linha + '{:.>15}.'.format(self.blocoAtual())
        linha = linha + '{:0>4d} : '.format(int(self.estado))
        return linha


if __name__ == '__main__':
    # parametros = vars(linhaDeComando())    # Requisito 4
    # print("Parâmetros passados: ", parametros)
    MT = TuringMachine("", "")
    MT.carregaPrograma()
    MT.executa()
    print("FIM DA SIMULAÇÃO")

    # TODO: Criar Aliases
    # TODO: Fornecer um log de saída contendo os estados computados
    # TODO: Testar código.MT que utiliza chamadas de função
