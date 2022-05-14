from interface import *
from memoria import *


class TuringMachine():
    maxPassosSemIntervencao = 1000

    def __init__(self, arquivo, entrada,  head='()', resume=True, debug=False, step=0):
        self.aceita = False
        self.running = True
        self.interface = Interface("anbn.mt", 'aabb', head, False, True, 0) # Interface(arquivo, entrada, resume, debug, step)
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
        print("Simulador de Máquina de Turing Suave versão 1.0")
        print("Desenvolvido como trabalho prático para a disciplina de Teoria da Computação")
        print("Autor: João Pedro Mendonça de Souza, IFMG − Formiga ,2022.")
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
            self.memoria.dump()
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
        fita1 = self.memoria.leFita1()
        fita2 = self.memoria.leFita2()
        fita3 = self.memoria.leFita3()
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

        if tipo == 'fita1':

            t, estadoIni, fitaLer, charLer, dirFitaLer, estadoAlvo, fitaEscrita, charEscrita, dirFitaEscrita = c

            if charEscrita != '*': # se o novo caracter for diferente do coringa, escreve na fita o novo caracter

                if fitaEscrita == 'X':
                    self.memoria.escreveFita1(charEscrita)
                elif fitaEscrita == 'Y':
                    self.memoria.escreveFita2(charEscrita)
                elif fitaEscrita == 'Z':
                    self.memoria.escreveFita3(charEscrita)

            if fitaLer == 'X':
                self.memoria.moveFita1(dirFitaLer)
            elif fitaLer == 'Y':
                self.memoria.moveFita2(dirFitaLer)
            elif fitaLer == 'Z':
                self.memoria.moveFita3(dirFitaLer)

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
                '\nThis program executed %d steps.' % self._steps + '\nDo you want continue?' + '\nType an int for more n steps.' + '\n(0 = stop, %d = max) ' % TuringMachine.maxPassosSemIntervencao)
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
                input('\nBreakpoint... press [enter] to continue \n')
            except SyntaxError:
                pass

        if not self.debug:
            self.passos = int(self.passos) - 1
            return
        linha = ('{:0>3d} ').format(self.numComandoExecutado())
        linha = linha + ('{:.>10}.').format(self.blocoAtual())
        linha = linha + ('{:0>4d} : ').format(int(self.estado))
        linha = linha + str(self.memoria)
        print(linha, ' | ', c)
        self.passos = int(self.passos) - 1

    def numComandoExecutado(self):
        n = self.step
        if n == 0:
            n = TuringMachine.maxPassosSemIntervencao
        n = n - self.passos + 1
        return n

if __name__ == '__main__':
    #parametros = vars(linhaDeComando())
    # print("Parâmetros passados: ", parametros)
    MT = TuringMachine("", "")
    MT.carregaPrograma()
    MT.executa()  # GOTO: linha 25
    print("FIM DA SIMULAÇÃO")
