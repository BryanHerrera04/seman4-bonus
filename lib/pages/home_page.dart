import 'package:calculadoraimc/widgets/botonfilacuatro.dart';
import 'package:calculadoraimc/widgets/botonfiladosh.dart';
import 'package:calculadoraimc/widgets/botonfiladoskg.dart';
import 'package:calculadoraimc/widgets/botonfilatres.dart';
import 'package:calculadoraimc/widgets/botonfilauno.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora IMC'),
      ),
      body: _body(),
    );
  }
}

_body() {
  return Column(
    children: [
      Expanded(
          flex: 5,
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                mibotonfilauno(
                  titulo: "Hombre",
                  icono: Image(
                    image: AssetImage('assets/hombre.png'),
                  ),
                ),
                mibotonfilauno(
                  titulo: "Mujer",
                  icono: Image(
                    image: AssetImage('assets/mujer.png'),
                  ),
                )
              ],
            ),
            color: Colors.grey,
          )),
      Expanded(
          flex: 4,
          child: Container(
            child: Row(
              children: [
                mibotonfilatres(),
              ],
            ),
            color: Colors.grey,
          )),
      Expanded(
          flex: 5,
          child: Container(
            child: Row(
              children: [
                mibotonfiladoskg(
                  titulo: "Peso",
                  mas: Image(image: AssetImage('assets/mas.png')),
                  menos: Image(image: AssetImage('assets/menos.png')),
                  peso: 60,
                ),
                mibotonfiladosh(
                  titulo: "Edad",
                  mas: Image(image: AssetImage('assets/mas.png')),
                  menos: Image(image: AssetImage('assets/menos.png')),
                  edad: 24,
                )
              ],
            ),
            color: Colors.grey,
          )),
      Expanded(
          flex: 2,
          child: Container(
            child: Row(
              children: [
                mibotonfilacuatro(),
              ],
            ),
            color: Colors.grey,
          )),
    ],
  );
}
