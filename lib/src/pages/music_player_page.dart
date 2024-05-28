import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class MusicPlayerPage extends StatelessWidget {
  const MusicPlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [CustomAppbar(), _TrackAlbumLength(), _TitlePlay()],
    ));
  }
}

class _TitlePlay extends StatelessWidget {
  const _TitlePlay();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      margin: const EdgeInsets.only(top: 40),
      child: const Row(
        children: [
          TrackTitle(
            songTitle: 'Far away',
            songArtist: 'Breaking Bejamin',
          ),
          Spacer(),
          PlayButton()
        ],
      ),
    );
  }
}

class _TrackAlbumLength extends StatelessWidget {
  const _TrackAlbumLength();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      margin: const EdgeInsets.only(top: 100),
      child: const Row(
        children: [
          TrackImage(),
          SizedBox(
            width: 40,
          ),
          TrackDuration(),
          SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
