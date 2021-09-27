import 'package:flutter/material.dart';

class mibotonfiladoskg extends StatelessWidget {
  String titulo;
  Widget mas;
  Widget menos;
  int peso;

  mibotonfiladoskg(
      {Key? key,
      required this.titulo,
      required this.mas,
      required this.menos,
      required this.peso});

  @override
  Widget build(BuildContext context) {
    //double peso = 60;
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(titulo, textAlign: TextAlign.center),
            Row(children: [
              ElevatedButton(
                  onPressed: () {
                    peso++;
                    print(peso);
                  },
                  child: mas),
              ElevatedButton(
                  onPressed: () {
                    peso--;
                    print(peso);
                  },
                  child: menos),
            ]),
            Text('${peso} KG')
          ]),
        ),
      ),
    );
  }
}
