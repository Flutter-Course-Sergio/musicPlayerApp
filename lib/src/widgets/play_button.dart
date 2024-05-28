import 'package:flutter/material.dart';

class PlayButton extends StatefulWidget {
  const PlayButton({super.key});

  @override
  State<PlayButton> createState() => _PlayButtonState();
}

class _PlayButtonState extends State<PlayButton>
    with SingleTickerProviderStateMixin {
  bool isPlaying = false;
  late AnimationController playAnimation;

  @override
  void initState() {
    playAnimation = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    super.initState();
  }

  @override
  void dispose() {
    playAnimation.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      highlightElevation: 0,
      backgroundColor: const Color(0xfff8cb51),
      onPressed: () {
        if (isPlaying) {
          playAnimation.reverse();
          isPlaying = false;
        } else {
          playAnimation.forward();
          isPlaying = true;
        }
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      child: AnimatedIcon(
          progress: playAnimation,
          icon: AnimatedIcons.play_pause,
          color: const Color(0xff1C1C25)),
    );
  }
}
