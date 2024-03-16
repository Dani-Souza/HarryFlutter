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

   void _desafio02() {
    final int A = 5; 
    final int B = 7; 
    final int C = 13;
    
    int soma = A + B;
    if(soma > C){
      _result =
        "A soma de A($A) + B($B) é: $soma\nA($A) + B($B) é maior do que C($C)";
    }else if(soma < C){
      _result =
        "A soma de A($A) + B($B) é: $soma\nA($A) + B($B) é menor do que C($C)";
    }else{
      _result =
        "A soma de A($A) + B($B) é: $soma\nA($A) + B($B) é igual a C($C)";
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
