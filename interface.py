##################################################
##      MTStar - Máquina de Turing Doravante    ##
##      João Pedro Mendonça de Souza - 0035330  ##
##      Teoria da Computação - 2022             ##
###################################################


import argparse
import sys
from memoria import Memoria as m


def linhaDeComando():
    linha = sys.argv[1:]
    parser = argparse.ArgumentParser(prog='simuladorMT', description=Interface.msgHelp)
    parser.add_argument('-steps', help='Executa N computações e pausa', type=int, default=1000)
    parser.add_argument('-resume', help='Executa o programa silenciosamente', action='store_true')
    parser.add_argument('-debug', help='Produz um relatório com cada estado computado', type=str, default='')
    parser.add_argument('arquivo', help='nome do arquivo com o código para a máquina de turing')
    parser.add_argument('entrada', help='palavra de entrada para execução do programa')

    results = parser.parse_args(linha)
    return results


class Interface(object):
    msgHelp = ''

    def __init__(self, arquivo, entrada, resume=True, debug=False, steps=0):
        self._arquivo = arquivo
        self._entrada = entrada
        self._resume = resume
        self._debug = debug
        self._steps = steps
        self._head = '[]'
        self.aliases = []

    def entrada(self):
        nameSpace = dict()
        nameSpace['arquivo'] = self._arquivo
        nameSpace['entrada'] = self._entrada
        nameSpace['head'] = self._head
        nameSpace['resume'] = self._resume
        nameSpace['debug'] = self._debug
        nameSpace['steps'] = self._steps
        nameSpace['blocos'] = self._carregaArquivo()

        return nameSpace

    def _trataLinha(self, linha):
        pos = linha.find(';')       # Quando o primeiro caracter da linha for 0, é porque ; é a primeira posição
        if pos != -1:               # Se por for -1, então a linha é neutralizada
            linha = linha[:pos]

        linha = linha.split()
        return linha

    def _carregaArquivo(self):
        print('\n' + Interface.msgHelp)

        try:
            arquivo = open(self._arquivo).readlines()
            self.__nomeBloco = None
            self.__dicBlocos = dict()
        except:
            print('Erro...  %s é um arquivo inválido' % self._arquivo)
            raise SystemExit

        for linha in arquivo:

            linha = self._trataLinha(linha)  # tira os espaços e transforma cada ocorrência em uma posição do array

            if len(linha) > 0:
                self._processaLinha(linha)  # depois de tratar, tem que ver o que a linha faz

        if self.__nomeBloco is not None:
            print('Erro... bloco %s não finalizado' % self.__nomeBloco)
            raise SystemExit

        return self.__dicBlocos

    def _processaLinha(self, linha):  # Requisito 2.1, 2.3 e 2.4

        if linha[(-1)] == '!':
            parada = True
            linha = linha[0:-1]
        else:
            parada = False

        if '$' in linha[0]:
            alias = linha[0]
            string = linha[2]
            string.split()
            string = string[1:-1]
            self.aliases.append((alias, string))
            return

        if linha[0] == 'inicio' and len(linha) == 3:
            inicio, nomeBloco, estInicial = linha
            self.__nomeBloco = nomeBloco
            self.__dicBlocos[nomeBloco] = (estInicial, list())

        elif linha[0] == 'fim':
            if self.__nomeBloco is None:
                print('Erro... comando inválido fim')
                raise SystemExit

            self.__nomeBloco = None

        if self._temEstado(linha) and len(linha) == 2:
            self._novoComando(self.__nomeBloco, 'final', linha)

        if self._temEstado(linha) and len(linha) == 3:
            if linha[1] == 'copiar':
                self._novoComando(self.__nomeBloco, 'copiar', linha)
            elif linha[1] == 'colar':
                self._novoComando(self.__nomeBloco, 'colar', linha)
            else:
                self._novoComando(self.__nomeBloco, 'chamada', linha)

        if self._temEstado(linha) and len(linha) == 4:
            self._novoComando(self.__nomeBloco, 'gravar', linha)

        elif self._temEstado(linha) and len(linha) == 9:

            if linha[1] == 'X':
                if len(linha[2]) == 1:
                    self._novoComando(self.__nomeBloco, 'fita1', linha)
                if self._carFita2(linha[2]):
                    self._novoComando(self.__nomeBloco, 'fitaEspecial', linha)
            elif linha[1] == 'Y':
                self._novoComando(self.__nomeBloco, 'fita2', linha)
            elif linha[1] == 'Z':
                self._novoComando(self.__nomeBloco, 'fita3', linha)
            else:
                print('Error... ill-formed command: %s' % linha)
            return


    def _temEstado(self, linha):
        n = linha[0]
        try:
            int(n)
        except ValueError:
            return False

        return True

    def _novoComando(self, bloco, tipo, linha):

        inicial, lista = self.__dicBlocos[bloco]

        if tipo == 'final':
            estadoA, ordem = linha  # estado atual da máquina e a ordem recebida (aceita, rejeita ou retorne)
            comando = [tipo, estadoA, ordem]

        if tipo == 'chamada':
            estInicial, idBlocoAlvo, estRetorno = linha
            comando = [tipo, estInicial, idBlocoAlvo, estRetorno]

        if tipo == 'fita1':
            estadoA, fitaA, simbA, moveA, separador, estadoB, fitaB, simbB, moveB = linha
            comando = [tipo, estadoA, fitaA, m.cb(simbA), moveA, estadoB, fitaB, m.cb(simbB), moveB]

        if tipo == 'fitaEspecial':
            estadoA, fitaA, simbA, moveA, separador, estadoB, fitaB, simbB, moveB = linha
            comando = [tipo, estadoA, fitaA, m.cb(simbA[1]), moveA, estadoB, fitaB, m.cb(simbB), moveB]

        if tipo == 'fita2':
            estadoA, fitaA, simbA, moveA, separador, estadoB, fitaB, simbB, moveB = linha
            comando = [tipo, estadoA, fitaA, m.cb(simbA), moveA, estadoB, fitaB, m.cb(simbB), moveB]

        if tipo == 'fita3':
            estadoA, fitaA, simbA, moveA, separador, estadoB, fitaB, simbB, moveB = linha
            comando = [tipo, estadoA, fitaA, m.cb(simbA), moveA, estadoB, fitaB, m.cb(simbB), moveB]

        if tipo == 'colar':
            estInicial, comando, estRetorno = linha
            comando = [tipo, estInicial, comando, estRetorno]

        elif tipo == 'copiar':
            estInicial, comando, estRetorno = linha
            comando = [tipo, estInicial, comando, estRetorno]

        elif tipo == 'gravar':
            estInicial, comando, car, estRetorno = linha
            comando = [comando, estInicial, car, estRetorno]

        lista.append(comando)

    def _carFita2(self, simbolo):
        if len(simbolo) != 3:
            return False
        if simbolo[0] == '[' and simbolo[2] == ']':
            return True
        return False
