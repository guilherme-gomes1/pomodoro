import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/src/components/stopwatch.dart';
import 'package:pomodoro/src/components/time_input.dart';
import 'package:pomodoro/src/stores/pomodoro.store.dart';
import 'package:provider/provider.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Scaffold(
      body: Observer(
        builder: (context) => Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Expanded(
              child: Stopwatch(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TimeInput(
                    title: 'Trabalho',
                    value: store.workingTime,
                    onPressedUpward: store.started && store.isWorking()
                        ? null
                        : store.incrementWorkingTime,
                    onPressedDownward: store.started && store.isWorking()
                        ? null
                        : store.decrementWorkingTime,
                  ),
                  TimeInput(
                    title: 'Descanso',
                    value: store.restTime,
                    onPressedUpward: store.started && store.isRest()
                        ? null
                        : store.incrementRestTime,
                    onPressedDownward: store.started && store.isRest()
                        ? null
                        : store.decrementRestTime,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
