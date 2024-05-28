import 'package:flutter/material.dart';

class TrackTitle extends StatelessWidget {
  final String songTitle;
  final String songArtist;

  const TrackTitle(
      {super.key, required this.songTitle, required this.songArtist});

  @override
  Widget build(BuildContext context) {
    final songStyle =
        TextStyle(fontSize: 30, color: Colors.white.withOpacity(0.8));
    final artistStyle =
        TextStyle(fontSize: 15, color: Colors.white.withOpacity(0.5));

    return Column(
      children: [
        Text(
          songTitle,
          style: songStyle,
        ),
        Text(
          '-$songArtist-',
          style: artistStyle,
        )
      ],
    );
  }
}
