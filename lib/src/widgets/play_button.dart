import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/audioplayer_model.dart';

class PlayButton extends StatefulWidget {
  const PlayButton({super.key});

  @override
  State<PlayButton> createState() => _PlayButtonState();
}

class _PlayButtonState extends State<PlayButton>
    with SingleTickerProviderStateMixin {
  bool isPlaying = false;
  bool firstTime = true;
  late AnimationController playAnimation;

  final assetAudioPlayer = AssetsAudioPlayer();

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

  void open() {
    final audioPlayerModel =
        Provider.of<AudioPlayerModel>(context, listen: false);

    assetAudioPlayer.open(Audio('assets/music/Breaking-Benjamin-Far-Away.mp3'),
        autoStart: true, showNotification: true);

    assetAudioPlayer.currentPosition.listen((duration) {
      audioPlayerModel.current = duration;
    });

    assetAudioPlayer.current.listen((playingAudio) {
      audioPlayerModel.songDuration =
          playingAudio?.audio.duration ?? Duration(seconds: 0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      highlightElevation: 0,
      backgroundColor: const Color(0xfff8cb51),
      onPressed: () {
        final audioPlayerModel =
            Provider.of<AudioPlayerModel>(context, listen: false);

        if (isPlaying) {
          playAnimation.reverse();
          isPlaying = false;
          audioPlayerModel.controller.stop();
        } else {
          playAnimation.forward();
          isPlaying = true;
          audioPlayerModel.controller.repeat();
        }

        if (firstTime) {
          open();
          firstTime = false;
        } else {
          assetAudioPlayer.playOrPause();
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
