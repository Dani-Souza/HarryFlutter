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
Crie uma função que inicialize um número e imprime uma mensagem dizendo se ele
é ou não é um número primo.
Nota: Um número primo é um número que só é divisível (divisão exata / sem resto)
por 1 e ele mesmo.
*/
  void _desafio17() {
    int numero = 550;
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
