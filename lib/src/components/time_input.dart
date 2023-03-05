import 'package:flutter/material.dart';
import 'package:pomodoro/src/stores/pomodoro.store.dart';
import 'package:provider/provider.dart';

class TimeInput extends StatelessWidget {
  final String title;
  final int value;
  final VoidCallback? onPressedUpward;
  final VoidCallback? onPressedDownward;

  const TimeInput(
      {Key? key,
      required this.title,
      required this.value,
      this.onPressedDownward,
      this.onPressedUpward})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: onPressedDownward,
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(10),
                primary: store.isWorking() ? Colors.red : Colors.green,
              ),
              child: const Icon(
                Icons.arrow_downward,
                color: Colors.white,
              ),
            ),
            Text(
              '$value min',
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            ElevatedButton(
              onPressed: onPressedUpward,
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(10),
                primary: store.isWorking() ? Colors.red : Colors.green,
              ),
              child: const Icon(
                Icons.arrow_upward,
                color: Colors.white,
              ),
            ),
          ],
        )
      ],
    );
  }
}
