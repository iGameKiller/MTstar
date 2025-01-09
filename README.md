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
- Dependências:
  - **[Insira dependências, ex.: NumPy, curses, etc.]**

## Como Usar
### 1. Clonar o repositório
```bash
$ git clone https://github.com/seu-usuario/simulador-mt.git
$ cd simulador-mt
```

### 2. Executar o programa
Para iniciar o simulador, use o seguinte comando:
```bash
$ [comando para rodar, ex.: python simulador.py]
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

## Estrutura do Projeto
```plaintext
.
├── src/                 # Código-fonte principal do simulador
├── examples/            # Exemplos de programas para a MT
├── docs/                # Documentação complementar
├── tests/               # Testes unitários
└── README.md            # Este arquivo
```

## Demonstração
Abaixo, um exemplo de saída do simulador ao executar o programa de soma:
```plaintext
Fita 1: 101+110
Fita 2: ____
Fita 3: 1011
Estado Atual: q_accept
```

## Contribuição
Contribuições são bem-vindas! Siga os passos abaixo para contribuir com o projeto:
1. Faça um fork do repositório.
2. Crie uma nova branch com sua feature/bugfix.
3. Envie um pull request com suas alterações.

## Licença
Este projeto é licenciado sob a [MIT License](LICENSE).

## Agradecimentos
- Aos professores e colegas da disciplina de Teoria da Computação por todo o suporte e aprendizado.
- À comunidade de código aberto pelas ferramentas e inspiração.

---

Explore, experimente e divirta-se com este simulador de Máquina de Turing! 🚀

