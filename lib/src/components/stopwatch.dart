import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/src/components/button_stopwatch.dart';
import 'package:pomodoro/src/stores/pomodoro.store.dart';
import 'package:provider/provider.dart';

class Stopwatch extends StatelessWidget {
  const Stopwatch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Observer(
      builder: (context) => Container(
        color: store.isWorking() ? Colors.red : Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              store.isWorking() ? 'Hora de Trabalhar' : 'Hora de Descansar',
              style: const TextStyle(
                fontSize: 40,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              '${store.minutes.toString().padLeft(2, '0')}:${store.seconds.toString().padLeft(2, '0')}',
              style: const TextStyle(
                fontSize: 120,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                store.started == false
                    ? ButtonStopwatch(
                        text: 'Play',
                        icon: Icons.play_arrow,
                        onPressed: store.start,
                      )
                    : ButtonStopwatch(
                        text: 'Stop',
                        icon: Icons.stop_circle,
                        onPressed: store.stop,
                      ),
                ButtonStopwatch(
                  text: 'Restart',
                  icon: Icons.refresh,
                  onPressed: store.restart,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
