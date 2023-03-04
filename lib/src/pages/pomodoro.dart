import 'package:flutter/material.dart';
import 'package:pomodoro/src/components/stopwatch.dart';
import 'package:pomodoro/src/components/time_input.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Stopwatch(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TimeInput(
                  title: 'Trabalho',
                  value: 25,
                ),
                TimeInput(
                  title: 'Descanso',
                  value: 5,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
