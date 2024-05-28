import 'package:flutter/material.dart';

import '../helpers/helpers.dart';

class LyricsWheel extends StatelessWidget {
  const LyricsWheel({super.key});

  @override
  Widget build(BuildContext context) {
    final lyrics = getLyrics();

    final lyricStyle =
        TextStyle(fontSize: 20, color: Colors.white.withOpacity(0.6));

    return ListWheelScrollView(
      diameterRatio: 1.5,
      itemExtent: 42,
      physics: const BouncingScrollPhysics(),
      children: lyrics.map((line) => Text(line, style: lyricStyle)).toList(),
    );
  }
}
