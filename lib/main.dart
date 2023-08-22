import 'package:app_1/model/pessoa.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late TextEditingController controllerNome;
  late TextEditingController controllerPeso;
  late TextEditingController controllerAltura;
  double resultado = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora IMC"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            TextField(
              controller: controllerNome,
              decoration: InputDecoration(
                labelText: 'Informe o nome: ',
              )),
              TextField(
              controller: controllerPeso,
              decoration: InputDecoration(
                labelText: 'Peso: ',
              )),
              TextField(
              controller: controllerAltura,
              decoration: InputDecoration(
                labelText: 'Altura: ',
              )),
              Container(
                child: Text('$resultado.toString()'),
              ),
              FloatingActionButton(onPressed: 
                calcularImc(
                  Pessoa(
                  controllerNome.text,
                  double.parse(controllerPeso.text),
                  double.parse(controllerPeso.text)
                  ))
              ),
              
        ])
      ),
    );
  }

  calcularImc(Pessoa pessoa) {
    setState(() {
      resultado = calcula(pessoa.getPeso(), pessoa.getAltura());
    });
  }
}

double calcula(double peso, double altura) => (peso / (altura * altura));