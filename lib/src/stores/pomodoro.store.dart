import 'dart:async';

import 'package:mobx/mobx.dart';

part 'pomodoro.store.g.dart';

class PomodoroStore = PomodoroStoreBase with _$PomodoroStore;

abstract class PomodoroStoreBase with Store {
  @observable
  bool started = false;

  @observable
  int minutes = 2;

  @observable
  int seconds = 0;

  @observable
  int workingTime = 5;

  @observable
  int restTime = 2;

  @observable
  TypeOfInterval typeOfInterval = TypeOfInterval.working;

  Timer? stopwatch;

  @action
  void start() {
    started = true;
    stopwatch = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (minutes == 0 && seconds == 0) {
        _tradeTypeOfInteval();
      } else if (seconds == 0) {
        seconds = 59;
        minutes--;
      } else {
        seconds--;
      }
    });
  }

  @action
  void stop() {
    started = false;
    stopwatch?.cancel();
  }

  @action
  void restart() {
    stop();
    minutes = isWorking() ? workingTime : restTime;
    seconds = 0;
  }

  @action
  void incrementWorkingTime() {
    workingTime++;
    if (isWorking()) {
      restart();
    }
  }

  @action
  void decrementWorkingTime() {
    if (workingTime > 1) {
      workingTime--;
      if (isWorking()) {
        restart();
      }
    }
  }

  @action
  void incrementRestTime() {
    restTime++;
    if (isRest()) {
      restart();
    }
  }

  @action
  void decrementRestTime() {
    if (restTime > 1) {
      restTime--;
      if (isRest()) {
        restart();
      }
    }
  }

  bool isWorking() {
    return typeOfInterval == TypeOfInterval.working;
  }

  bool isRest() {
    return typeOfInterval == TypeOfInterval.rest;
  }

  void _tradeTypeOfInteval() {
    if (isWorking()) {
      typeOfInterval = TypeOfInterval.rest;
      minutes = restTime;
    } else {
      typeOfInterval = TypeOfInterval.working;
      minutes = workingTime;
    }
    seconds = 0;
  }
}

enum TypeOfInterval { working, rest }
