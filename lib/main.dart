import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Harry Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _result = "resultado";

  void _incrementCounter() {
    setState(() {
      _counter++;
      _result = _counter.toString();
    });
  }

/*funcao criada para calcular o fatorial ultilizado na funcao desafio01*/
  int calcularFatorial(int n) {
    if (n == 0) {
      return 1;
    } else {
      return n * calcularFatorial(n - 1);
    }
  }

  void _desafio01() {
    /*Crie uma função que inicialize dois valores inteiros (A e B). Como resultado, mostre na tela qual é o maior valor.*/
    int a = 10;
    int b = 20;
    if (a > b) {
      _result = "O valor de A ($a) é maior que B ($b) ";
    } else {
      _result = "O valor de B ($b) é maior que A ($a) ";
    }
    setState(() {
      _result;
    });
  }

  void _desafio02() {
    /*Crie uma função que inicialize os valores de A, B, C. Como resultado, mostre na tela a
soma entre A e B e se a soma é maior ou menor do que C.*/
    final int A = 10;
    final int B = 3;
    final int C = 13;

    int soma = A + B;
    if (soma > C) {
      _result =
          "A soma de A($A) + B($B) é: $soma\nA($A) + B($B) é maior do que C($C)";
    } else if (soma < C) {
      _result =
          "A soma de A($A) + B($B) é: $soma\nA($A) + B($B) é menor do que C($C)";
    } else {
      _result =
          "A soma de A($A) + B($B) é: $soma\nA($A) + B($B) é igual a C($C)";
    }

    setState(() {
      _result;
    });
  }

  void _desafio03() {
/*Crie uma função que inicialize um número inteiro. Como resultado, mostre na tela o
fatorial desse número.*/
    int numero = 5; // Número para o qual você deseja calcular o fatorial
    int resultado = calcularFatorial(numero);
    _result = resultado.toString();
    setState(() {
      _result;
    });
  }

  void _desafio04() {
    /*Crie uma função que inicialize um número qualquer. Como resultado, mostre na tela
se o número é par ou ímpar e positivo ou negativo.*/
    int numero = 5;
    String parImpar;
    String positivoNegativo;

    if (numero % 2 == 0) {
      parImpar = 'par';
    } else {
      parImpar = 'Impar';
    }

    if (numero >= 0) {
      positivoNegativo = 'positivo';
    } else {
      positivoNegativo = 'Negativo';
    }

    _result = 'o numero $numero é $parImpar e $positivoNegativo';

    setState(() {
      _result;
    });
  }

  void _desafio05() {
    /*Faça uma função que inicialize dois valores inteiros A e B. Se os valores de A e B
forem iguais, deverá somar os dois valores, caso contrário deverá multiplicar A por B.
Ao final de qualquer um dos cálculos deve-se atribuir o resultado a uma variável e
mostrar seu valor na tela.*/
    int A = 10;
    int B = 10;
    int valor = 0;

    if (A == B) {
      valor = A + B;
      _result =
          "Os valores de A($A) e B($B) são iguais e sua soma é igual a: $valor";
    } else {
      valor = A * B;
      _result =
          "Os valores de A($A) e B($B) são diferentes e sua multiplicação é igual a: $valor";
    }

    setState(() {
      _result;
    });
  }

  void _desafio06() {
    /*  Faça uma função que inicialize um número inteiro qualquer. Como resultado, mostre na tela o seu antecessor e o seu sucessor.*/
    int numero = 10;

    _result =
        "O número $numero o seu antecessor é o número ${numero - 1} e o seu sucessor número ${numero + 1} ";
    setState(() {
      _result;
    });
  }

  void _desafio07() {
    /*Faça uma função que inicialize o valor do salário mínimo e o valor do salário de um
usuário em duas variáveis diferentes. Calcule quantos salários mínimos esse usuário
ganha e mostre na tela o resultado. (Base para o salário mínimo R$ 1.412,00).*/
    double salarioMinimo = 1412;
    double salarioUsuario = 6000;
    double resultado = salarioUsuario / salarioMinimo;

    setState(() {
      _result =
          'o usuario recebe ${resultado.toStringAsFixed(0)} salarios minimos';
    });
  }

  void _desafio08() {
    /*Crie uma função que inicialize três valores inteiros diferentes. Como resultado,
mostre na tela os valores em ordem decrescente.
Exemplo: entrada = [5, 6, 1, 9] | saída = [9, 6, 5, 1]*/
    List<int> valores = [3, 24, 10, 5, 6, 1, 9];

    valores.sort((a, b) => b.compareTo(a));
    _result = "Valores em ordem decrescente: $valores";
    setState(() {
      _result;
    });
  }

  void _desafio09() {
/*Crie uma função que inicialize uma lista de notas de um aluno, calcule a média das
notas. Como resultado, mostre na tela a média do aluno e se ele foi aprovado ou
reprovado (média para aprovação: 7).*/

    List<int> notas = [3, 5, 9, 6];
    int mediaAprovacao = 7;
    int soma = 0;

    for (int nota in notas) {
      soma = soma + nota;
    }

    double media = soma / 4;

    if (media >= mediaAprovacao) {
      _result = "a media do aluno e $media e foi aprovado";
    } else {
      _result = "a media do aluno e $media e nao foi aprovado";
    }
    setState(() {
      _result;
    });
  }

  void _desafio10() {
    /*Crie uma função que inicialize o nome e a idade de uma pessoa. Como resultado,
mostre na tela o nome da pessoa e se ela é maior ou menor de idade.
Exemplo: Fulana de Tal é menor de idade.*/
    String nome = 'José Andre';
    int idade = 35;

    if (idade >= 18) {
      _result = '$nome é maior de idade';
    } else {
      _result = '$nome é menor de idade';
    }
    setState(() {
      _result;
    });
  }

  void _desafio11() {
    /*Crie uma função que inicialize um número inteiro e mostre na tela a tabuada de 1 a
10 desse número.
Dica: salve o resultado de cada operação em uma Lista e mostre a lista na tela.*/
    int valor = 7;
    List<int> listaTabuada = [];
    _result = "";

    for (int i = 1; i <= 10; i++) {
      listaTabuada.add(valor * i);
    }

    for (int i = 1; i <= 10; i++) {
      _result += "$valor x $i = ${listaTabuada[i - 1]}\n";
    }

    setState(() {
      _result;
    });
  }

  void _desafio12() {
    /*
  Crie uma função que inicialize uma lista com números inteiros. Como resultado,
  mostre na tela uma lista com o quadrado dos números da lista original.
  Exemplo: entrada = [1, 2, 3] | saída = [1, 4, 9]*/
    //inicializado lista
    List<int> numeros = [4, 5, 6];
    //inicializado uma nova lista com novos valores
    List<int> numerosAoQuadrado =
        numeros.map((numero) => numero * numero).toList();
    _result = "Entrada = $numeros \nSaída = ${numerosAoQuadrado.toString()} ";
    setState(() {
      _result;
    });
  }

  void _desafio13() {
    /*Crie uma função que inicialize uma lista com 10 números inteiros. Como resultado,
  mostre na tela a quantidade de números pares e a quantidade de números impares
  que existem na lista.*/
    //Inicialização Variáveis e lista
    List<int> numeros = [2, 3, 5, 4, 11, 35, 87, 2, 15, 9];
    int quantidadePar = 0;
    int quantidadeImpar = 0;
    //Loop para percorrer a lista
    for (int numero in numeros) {
      //armazendo o resto da divisão
      int divisao = numero % 2;
      if (divisao == 0) {
        quantidadePar++;
      } else {
        quantidadeImpar++;
      }
    }
    _result =
        "Na lista existe $quantidadePar números pares e $quantidadeImpar numeros impar";

    setState(() {
      _result;
    });
  }

  void _desafio14() {
    /*Crie uma função que inicialize uma lista com 10 números inteiros. Como resultado,
mostre na tela o menor e o maior número da lista.
Exemplo: entrada = [20, 1, 5, 23, 12] | saída = menor: 1, maior: 23*/

    List<int> entrada = [20, 3, 6, 23, 12, 25, 51, 14, 33, 90];
    entrada.sort();
    _result = "menor: ${entrada.first}";
    _result += " maior: ${entrada.last}";
    setState(() {
      _result;
    });
  }

  void _desafio15() {
    /*Crie uma função que salve, em uma lista, do número 0 até N, em que N é o número
limite inicializado em uma variável. Como resultado, mostre a lista na tela.
Exemplo: entrada = 3 | saída = [0, 1, 2, 3]*/
    int numero = 3;
    List<int> lista = [];
    for (int i = 0; i <= numero; i++) {
      lista.add(i);
    }
    setState(() {
      _result = lista.toString();
    });
  }

  void _desafio16() {
    /*Escreva um método que determina se uma palavra ou frase é um palíndromo, ou
seja, a palavra pode ser lida de da esquerda para a direita ou ao contrário, ignorando
pontuação, números e qualquer outro caracter que não seja uma letra. Considere
também que não há diferenças entre letras maiúsculas e minúsculas.
Exemplos de palíndromo: Ana, madam, Arara*/

    String verificaPalindromo = "existe grupo melhor harry flutter";
    print('Texto original: $verificaPalindromo');

    //remove os espaços em branco
    String textoOriginalFormatado = verificaPalindromo.replaceAll(" ", "");

    //Para poder fazer a comparaçao é necessário criar uma outra variável, inverter o conteúdo e comparar com o texto original formatado acima
    String textoFormatadoInvertido = textoOriginalFormatado;

    //o split quebra o text em partes (letra a letra), revertemos a ordem os itens e depois chamamos o join pra transformar em uma palavra novamente
    textoFormatadoInvertido = textoFormatadoInvertido.split('').reversed.join();

    if (textoOriginalFormatado == textoFormatadoInvertido) {
      _result = "$verificaPalindromo é um palíndromo";
    } else {
      _result = "$verificaPalindromo não é um palíndromo";
    }
    setState(() {
      _result;
    });
  }

  void _desafio17() {
    /*
Crie uma função que inicialize um número e imprime uma mensagem dizendo se ele
é ou não é um número primo.
Nota: Um número primo é um número que só é divisível (divisão exata / sem resto)
por 1 e ele mesmo.
*/

    int numero = 571;
    if (numero <= 1 && _result == "resultado") {
      _result = "$numero Não é numero primo";
    }
    if (numero == 2 && _result == "resultado") {
      _result = "$numero é numero primo";
    }
    if (numero % 2 == 0 && _result == "resultado") {
      _result = "$numero Não é numero primo";
    }
    if (_result == "resultado") {
      for (int i = 3; i <= numero ~/ 2; i += 2) {
        if (numero % i == 0) {
          _result = "$numero Não é numero primo";
        }
      }
    }
    if (_result == "resultado") {
      _result = "$numero é numero primo";
    }

    setState(() {
      _result;
    });
  }

  void _desafio18() {
    /*
 Crie uma função que inicialize uma palavra e inicialize uma frase. Como resultado,
mostre na tela quantas vezes aquela palavra aparece na frase, independente de
letras maiúsculas e minúsculas.
Exemplo:
Palavra = “eu”
Frase = “Eu posso posso eu eu tudo o mais que eu quiser Eu”
Resultado = 5
 */
    //inicializado váriaveis
    //Este texto é um Texto criado para testar o TEXTO se o texTO existe.
    //Eu posso posso eu eu tudo o mais que eu quiser Eu
    String frase = "Eu posso posso eu eu tudo o mais que eu quiser Eu.";
    String palavra = "eu";
    int quantidade = 0;
    //criando uma lista das palavras que estão no texto
    List<String> listaPalavras = frase.split(' ');
    // percorrendo a lista com loop for
    for (String texto in listaPalavras) {
      // verificando se a palavra existe na  nova lista criada.
      //toUpperCase deixa o texto todo maisculo para comparação
      if (texto.toUpperCase().contains(palavra.toUpperCase())) {
        quantidade++;
      }
    }

    _result = "Existe $quantidade palavra(s) $palavra";
    setState(() {
      _result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Resultado:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              _result,
              style: const TextStyle(
                fontSize: 30.0,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        backgroundColor: Colors.amber[100],
        foregroundColor: Colors.redAccent.shade700,
        child: const Icon(Icons.add_task),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
