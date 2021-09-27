import 'package:flutter/material.dart';

class mibotonfiladosh extends StatelessWidget {
  String titulo;
  Widget mas;
  Widget menos;
  int edad;

  mibotonfiladosh(
      {Key? key,
      required this.titulo,
      required this.mas,
      required this.menos,
      required this.edad});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(titulo, textAlign: TextAlign.center),
            Row(children: [
              ElevatedButton(
                  onPressed: () {
                    edad++;
                    print(edad);
                  },
                  child: mas),
              ElevatedButton(
                  onPressed: () {
                    edad--;
                    print(edad);
                  },
                  child: menos),
            ]),
            Text('${edad} Años')
          ]),
        ),
      ),
    );
  }
}
