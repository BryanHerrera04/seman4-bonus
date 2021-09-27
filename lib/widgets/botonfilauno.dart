import 'package:flutter/material.dart';

class mibotonfilauno extends StatelessWidget {
  String titulo;
  Widget icono;

  mibotonfilauno({required this.titulo, required this.icono});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Container(
          child: ElevatedButton(
            onPressed: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [icono, Text(titulo)],
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.grey[850],
            ),
          ),
        ),
      ),
    );
  }
}
