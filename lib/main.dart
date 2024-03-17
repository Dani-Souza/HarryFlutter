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

  /*
 Crie uma função que inicialize uma palavra e inicialize uma frase. Como resultado,
mostre na tela quantas vezes aquela palavra aparece na frase, independente de
letras maiúsculas e minúsculas.
Exemplo:
Palavra = “eu”
Frase = “Eu posso posso eu eu tudo o mais que eu quiser Eu”
Resultado = 5
 */

  void _desafio18() {
    //inicializado váriaveis
    //Este texto é um Texto criado para testar o TEXTO se o texTO existe.
    //Eu posso posso eu eu tudo o mais que eu quiser Eu
    String frase =
        "Este texto é um Texto criado para testar o TEXTO se o texTO existe.";
    String palavra = "texto";
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

/*Crie uma função que inicialize dois valores inteiros (A e B). Como resultado, mostre na tela qual é o maior valor.*/ 
  void _desafio01(){
    int a = 30;
    int b = 20;
    if (a > b){
      _result ="O valor de A ($a) é maior que B ($b) ";

    }else{
      _result ="O valor de B ($b) é maior que A ($a) ";

    }
    setState(() {
      _result;
    });
  }


/*Crie uma função que inicialize uma lista de notas de um aluno, calcule a média das
notas. Como resultado, mostre na tela a média do aluno e se ele foi aprovado ou
reprovado (média para aprovação: 7).*/

void _desafio09(){
  List<int> notas = [9, 5, 9, 6];
  int mediaAprovacao = 7;
  int soma = 0;

  for(int nota in notas){

    soma = soma + nota;
  }

  double media = soma / 4;

  if(media >=mediaAprovacao){
    _result="a media do aluno e $media e foi aprovado";
}else{
  _result="a media do aluno e $media e nao foi aprovado";
    }
setState(() {
  _result;
});
}





  /*  Faça uma função que inicialize um número inteiro qualquer. Como resultado, mostre na tela o seu antecessor e o seu sucessor.*/
  void _desafio06() {
    int numero = 6;

    _result =
        "O número $numero o seu antecessor é o número ${numero - 1} e o seu sucessor número ${numero + 1} ";
    setState(() {
      _result;
    });
  }

  /*
  Crie uma função que inicialize uma lista com números inteiros. Como resultado,
  mostre na tela uma lista com o quadrado dos números da lista original.
  Exemplo: entrada = [1, 2, 3] | saída = [1, 4, 9]*/
  void _desafio12() {
    //inicializado lista
    List<int> numeros = [1, 2, 3];
    //inicializado uma nova lista com novos valores
    List<int> numerosAoQuadrado =
        numeros.map((numero) => numero * numero).toList();
    _result = "Entrada = $numeros \nSaída = ${numerosAoQuadrado.toString()} ";
    setState(() {
      _result;
    });
  }

  /*Crie uma função que salve, em uma lista, do número 0 até N, em que N é o número
limite inicializado em uma variável. Como resultado, mostre a lista na tela.
Exemplo: entrada = 3 | saída = [0, 1, 2, 3]*/
  void _desafio15() {
    int numero = 10;
    List<int> lista = [];
    for (int i = 0; i <= numero; i++) {
      lista.add(i);
    }
    setState(() {
      _result = lista.toString();
    });
  }

  /*Crie uma função que inicialize uma lista com 10 números inteiros. Como resultado,
  mostre na tela a quantidade de números pares e a quantidade de números impares
  que existem na lista.*/

  void _desafio13() {
    //Inicialização Variáveis e lista
    List<int> numeros = [2, 3, 5, 7, 21, 41, 87, 2, 12, 8];
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
        tooltip: 'increment',
        backgroundColor: Colors.amber[100],
        foregroundColor: Colors.redAccent.shade700,
        child: const Icon(Icons.add_task),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
