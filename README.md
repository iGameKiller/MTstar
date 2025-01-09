# Simulador de Máquina de Turing

## Sobre o Projeto
Este projeto foi desenvolvido como parte da disciplina **Teoria da Computação** e tem como objetivo demonstrar, de maneira prática, o funcionamento de uma **Máquina de Turing (MT)**.

A Máquina de Turing é um modelo teórico fundamental na computação, capaz de simular qualquer algoritmo computacional. Neste simulador, o foco é ilustrar os conceitos básicos de uma MT, incluindo:

- **Leitura de símbolos** na fita de entrada.
- **Aplicação de funções de transição** baseadas no símbolo lido e no estado atual.
- **Escrita de novos símbolos** e movimentação na fita.

O projeto inclui uma interface visual minimalista e manual para que o usuário acompanhe o funcionamento da máquina em tempo real.

## Funcionalidades
- **Simulação de Máquina de Turing com 3 fitas:**
  - Uma fita para entrada dos dados.
  - Uma fita para computação intermediária.
  - Uma fita para saída do resultado.
- **Execução de um programa básico de soma:**
  - Demonstração de como a máquina realiza uma computação simples, como somar dois números.
- **Interface interativa manual:**
  - Permite observar a transição de estados e a manipulação dos símbolos na fita.
- **Execução via linha de comando:**
  - Para maior flexibilidade, o simulador pode ser executado diretamente no terminal.

## Requisitos
- Linguagem de programação utilizada: **[Python]**.

## Como Usar
### 1. Clonar o repositório
```bash
$ git clone https://github.com/seu-usuario/simulador-mt.git
$ cd simulador-mt
```

### 2. Executar o programa
Para iniciar o simulador, use o seguinte comando:
```plaintext
  O padrão de invocação é: simuladorMT.py [-h] [-step STEP] [-resume] [-debug] arquivo entrada
  Alguns possíveis comandos para invocar a Máquina de Turing são:
  python3 simuladorMT.py -help                             |   mostra como a linha de comando funciona
  python3 simuladorMT.py -debug log.txt somaV1.mt 10+10=   |   mostra a execução passo a passo no console e a registra no arquivo
  python3 simuladorMT.py -resume somaV1.mt 10+10=          |   mostra apenas o resultado final e é a opção padrão caso nenhuma seja selecionada
  python3 simuladorMT.py -steps 50 somaV1.mt 10+10=        |   executa 50 passos e pergunta pro usuario quantas computações fazer, esse número pode variar de 1 até 1000
```

### 3. Inserir os dados de entrada
Ao iniciar, você será solicitado a fornecer a entrada inicial para a máquina. Siga as instruções no terminal ou interface.

### 4. Observar a simulação
Acompanhe a execução do programa, vendo:
- A leitura dos símbolos na fita.
- As transições de estado.
- A manipulação dos símbolos.

### 5. Testar outros programas
Sinta-se à vontade para criar e testar seus próprios programas de Máquina de Turing, modificando o arquivo de configurações de transições.


## Demonstração
Abaixo, um exemplo de saída do simulador ao executar o programa de soma:
```plaintext
                                                       ....             
                                              425 passos anteriores
                                              
Fita X: 426 move_inicio_final.0003 : ____________________[<]1641-5674=>_________ : T | ['fita1', '3', 'X', '*', 'e', '3', 'X', '*', 'e']
Fita Y: 426 move_inicio_final.0003 : ____________________[_]____________________ : _
Fita Z: 426 move_inicio_final.0003 : ____________________[_]<1641-5674=-4033>___ : _

Fita X: 427 move_inicio_final.0003 : ____________________[_]<1641-5674=>________ : T | ['fita1', '3', 'X', ' ', 'i', '4', 'X', '*', 'i']
Fita Y: 427 move_inicio_final.0003 : ____________________[_]____________________ : _
Fita Z: 427 move_inicio_final.0003 : ____________________[_]<1641-5674=-4033>___ : _

Fita X: 428 move_inicio_final.0004 : ____________________[_]<1641-5674=>________ : T | ['final', '4', 'retorne']
Fita Y: 428 move_inicio_final.0004 : ____________________[_]____________________ : _
Fita Z: 428 move_inicio_final.0004 : ____________________[_]<1641-5674=-4033>___ : _

Fita X: 429 .formataentrada.0006 : ____________________[_]<1641-5674=>________ : T | ['final', '6', 'retorne']
Fita Y: 429 .formataentrada.0006 : ____________________[_]____________________ : _
Fita Z: 429 .formataentrada.0006 : ____________________[_]<1641-5674=-4033>___ : _

Fita X: 430 ...........main.0070 : ____________________[_]<1641-5674=>________ : T | ['final', '70', 'aceite']
Fita Y: 430 ...........main.0070 : ____________________[_]____________________ : _
Fita Z: 430 ...........main.0070 : ____________________[_]<1641-5674=-4033>___ : _

```

