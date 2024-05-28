import 'package:flutter/material.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      highlightElevation: 0,
      backgroundColor: const Color(0xfff8cb51),
      onPressed: () {},
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      child: Icon(Icons.play_arrow, color: Color(0xff1C1C25)),
    );
  }
}
