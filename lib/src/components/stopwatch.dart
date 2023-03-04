import 'package:flutter/material.dart';
import 'package:pomodoro/src/components/button_stopwatch.dart';

class Stopwatch extends StatelessWidget {
  const Stopwatch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Hora de Trabalhar',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            '25:00',
            style: TextStyle(
              fontSize: 120,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ButtonStopwatch(
                text: 'Play',
                icon: Icons.play_arrow,
              ),
              // ButtonStopwatch(
              //   text: 'Stop',
              //   icon: Icons.stop_circle,
              // ),
              ButtonStopwatch(
                text: 'Restart',
                icon: Icons.refresh,
              ),
            ],
          )
        ],
      ),
    );
  }
}
