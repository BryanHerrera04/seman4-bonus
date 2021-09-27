import 'package:flutter/material.dart';

class mibotonfilatres extends StatefulWidget {
  late double value;
  @override
  State<mibotonfilatres> createState() => _mibotonfilatresState();
}

class _mibotonfilatresState extends State<mibotonfilatres> {
  double _currentSliderValue = 150;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: ElevatedButton(
            onPressed: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Slider(
                  value: _currentSliderValue,
                  min: 130,
                  max: 200,
                  label: _currentSliderValue.round().toString(),
                  onChanged: (value) {
                    setState(() {
                      _currentSliderValue = value;
                    });
                  },
                ),
                Text('${_currentSliderValue.round()} CM'),
              ],
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
