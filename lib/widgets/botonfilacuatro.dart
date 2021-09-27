import 'package:calculadoraimc/pages/resultado_page.dart';
import 'package:calculadoraimc/widgets/botonfiladosh.dart';
import 'package:calculadoraimc/widgets/botonfiladoskg.dart';
import 'package:calculadoraimc/widgets/botonfilatres.dart';
import 'package:flutter/material.dart';

class mibotonfilacuatro extends StatelessWidget {
  late final mibotonfiladoskg pesokg;
  late final mibotonfilatres altura;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    resultado(altura: altura.value, pesokg: pesokg.peso)));
      },
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(child: Text('RESULTADOS')),
        ),
      ),
    );
  }
}
