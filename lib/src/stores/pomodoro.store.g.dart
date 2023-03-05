// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PomodoroStore on PomodoroStoreBase, Store {
  late final _$startedAtom =
      Atom(name: 'PomodoroStoreBase.started', context: context);

  @override
  bool get started {
    _$startedAtom.reportRead();
    return super.started;
  }

  @override
  set started(bool value) {
    _$startedAtom.reportWrite(value, super.started, () {
      super.started = value;
    });
  }

  late final _$minutesAtom =
      Atom(name: 'PomodoroStoreBase.minutes', context: context);

  @override
  int get minutes {
    _$minutesAtom.reportRead();
    return super.minutes;
  }

  @override
  set minutes(int value) {
    _$minutesAtom.reportWrite(value, super.minutes, () {
      super.minutes = value;
    });
  }

  late final _$secondsAtom =
      Atom(name: 'PomodoroStoreBase.seconds', context: context);

  @override
  int get seconds {
    _$secondsAtom.reportRead();
    return super.seconds;
  }

  @override
  set seconds(int value) {
    _$secondsAtom.reportWrite(value, super.seconds, () {
      super.seconds = value;
    });
  }

  late final _$workingTimeAtom =
      Atom(name: 'PomodoroStoreBase.workingTime', context: context);

  @override
  int get workingTime {
    _$workingTimeAtom.reportRead();
    return super.workingTime;
  }

  @override
  set workingTime(int value) {
    _$workingTimeAtom.reportWrite(value, super.workingTime, () {
      super.workingTime = value;
    });
  }

  late final _$restTimeAtom =
      Atom(name: 'PomodoroStoreBase.restTime', context: context);

  @override
  int get restTime {
    _$restTimeAtom.reportRead();
    return super.restTime;
  }

  @override
  set restTime(int value) {
    _$restTimeAtom.reportWrite(value, super.restTime, () {
      super.restTime = value;
    });
  }

  late final _$typeOfIntervalAtom =
      Atom(name: 'PomodoroStoreBase.typeOfInterval', context: context);

  @override
  TypeOfInterval get typeOfInterval {
    _$typeOfIntervalAtom.reportRead();
    return super.typeOfInterval;
  }

  @override
  set typeOfInterval(TypeOfInterval value) {
    _$typeOfIntervalAtom.reportWrite(value, super.typeOfInterval, () {
      super.typeOfInterval = value;
    });
  }

  late final _$PomodoroStoreBaseActionController =
      ActionController(name: 'PomodoroStoreBase', context: context);

  @override
  void start() {
    final _$actionInfo = _$PomodoroStoreBaseActionController.startAction(
        name: 'PomodoroStoreBase.start');
    try {
      return super.start();
    } finally {
      _$PomodoroStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void stop() {
    final _$actionInfo = _$PomodoroStoreBaseActionController.startAction(
        name: 'PomodoroStoreBase.stop');
    try {
      return super.stop();
    } finally {
      _$PomodoroStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void restart() {
    final _$actionInfo = _$PomodoroStoreBaseActionController.startAction(
        name: 'PomodoroStoreBase.restart');
    try {
      return super.restart();
    } finally {
      _$PomodoroStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementWorkingTime() {
    final _$actionInfo = _$PomodoroStoreBaseActionController.startAction(
        name: 'PomodoroStoreBase.incrementWorkingTime');
    try {
      return super.incrementWorkingTime();
    } finally {
      _$PomodoroStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementWorkingTime() {
    final _$actionInfo = _$PomodoroStoreBaseActionController.startAction(
        name: 'PomodoroStoreBase.decrementWorkingTime');
    try {
      return super.decrementWorkingTime();
    } finally {
      _$PomodoroStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementRestTime() {
    final _$actionInfo = _$PomodoroStoreBaseActionController.startAction(
        name: 'PomodoroStoreBase.incrementRestTime');
    try {
      return super.incrementRestTime();
    } finally {
      _$PomodoroStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementRestTime() {
    final _$actionInfo = _$PomodoroStoreBaseActionController.startAction(
        name: 'PomodoroStoreBase.decrementRestTime');
    try {
      return super.decrementRestTime();
    } finally {
      _$PomodoroStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
started: ${started},
minutes: ${minutes},
seconds: ${seconds},
workingTime: ${workingTime},
restTime: ${restTime},
typeOfInterval: ${typeOfInterval}
    ''';
  }
}
