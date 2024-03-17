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
setState(() {
  _result;
});
}


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
