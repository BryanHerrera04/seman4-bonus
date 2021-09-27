import 'package:calculadoraimc/widgets/botonfiladosh.dart';
import 'package:calculadoraimc/widgets/botonfiladoskg.dart';
import 'package:calculadoraimc/widgets/botonfilatres.dart';
import 'package:flutter/material.dart';

class resultado extends StatelessWidget {
  final mibotonfiladoskg pesokg;
  final mibotonfilatres altura;

  const resultado({Key? key, required this.pesokg, required this.altura})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double imc = 0;
    return Scaffold(
      appBar: AppBar(title: Text('Calculadora IMC')),
      body: Column(
        children: [
          Text('RESULTADOS'),
          Text('e20'),
          Container(
            child: Column(
              imc = pesokg.peso / altura.value * altura.value,
              if(imc < 18.5){
                return 'Bajo Peso'
              } else if(imc > 18.5 && imc < 24.9 ){
                return 'Normal'
              } else if (imc > 25 && imc < 29.9 ) {
                return 'Sobrepeso'
              } else if (imc > 30 && imc < 34.9 ) {
                return 'Obesidad I'
              } else if (imc > 35 && imc < 39.9 ) {
                return 'Obesidad II'
              } else if (imc > 40 && imc < 49.9 ) {
                return 'Obesidad IIi'
              } else if (imc > 50 ) {
                return 'Obesidad IV'
              }
            ),
          ),
        ],
      ),
    );
  }
}

_resultados() {
  return Container(
    child: Column(imc = pesokg),
  );
}
