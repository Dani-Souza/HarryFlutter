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
  /*Escreva um método que determina se uma palavra ou frase é um palíndromo, ou
seja, a palavra pode ser lida de da esquerda para a direita ou ao contrário, ignorando
pontuação, números e qualquer outro caracter que não seja uma letra. Considere
também que não há diferenças entre letras maiúsculas e minúsculas.
Exemplos de palíndromo: Ana, madam, Arara*/
void desafio16(){


  String verificaPalindromo = "existe grupo melhor harry flutter";
  print('Texto original: $verificaPalindromo');

  //remove os espaços em branco
  String textoOriginalFormatado = verificaPalindromo.replaceAll(" ", "");

  //Para poder fazer a comparaçao é necessário criar uma outra variável, inverter o conteúdo e comparar com o texto original formatado acima
  String textoFormatadoInvertido = textoOriginalFormatado;

  //o split quebra o text em partes (letra a letra), revertemos a ordem os itens e depois chamamos o join pra transformar em uma palavra novamente
  textoFormatadoInvertido = textoFormatadoInvertido.split('').reversed.join();
  
  if ( textoOriginalFormatado == textoFormatadoInvertido){
    _result = "$verificaPalindromo é um palíndromo";
  
  }else{
    _result = "$verificaPalindromo não é um palíndromo";

  }
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
        foregroundColor : Colors.redAccent.shade700,
        child: const Icon(Icons.add_task),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
