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
