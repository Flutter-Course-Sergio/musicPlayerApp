import 'package:flutter/material.dart';

class AudioPlayerModel with ChangeNotifier {
  late AnimationController controller;
  Duration _songDuration = const Duration(microseconds: 0);
  Duration _current = const Duration(microseconds: 0);
  bool _playing = false;

  bool get playing => _playing;
  Duration get songDuration => _songDuration;
  Duration get current => _current;

  double get percentage => (_songDuration.inSeconds > 0)
      ? (_current.inSeconds / _songDuration.inSeconds)
      : 0;

  String get songTotalDuration => printDuration(_songDuration);
  String get currentSecond => printDuration(_current);

  set playing(bool value) {
    _playing = value;
    notifyListeners();
  }

  set songDuration(Duration value) {
    _songDuration = value;
    notifyListeners();
  }

  set current(Duration value) {
    _current = value;
    notifyListeners();
  }

  String printDuration(Duration duration) {
    String twoDigits(int n) {
      if (n >= 10) return "$n";
      return "0$n";
    }

    String twoDigitMins = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSecs = twoDigits(duration.inSeconds.remainder(60));

    return "$twoDigitMins:$twoDigitSecs";
  }
}
