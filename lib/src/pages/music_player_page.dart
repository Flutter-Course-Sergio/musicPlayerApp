import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class MusicPlayerPage extends StatelessWidget {
  const MusicPlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Stack(
      children: [
        Background(),
        Column(
          children: [
            CustomAppbar(),
            _TrackAlbumLength(),
            _TitlePlay(),
            Expanded(child: LyricsWheel())
          ],
        ),
      ],
    ));
  }
}

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: screenSize.height * 0.75,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60)),
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.center,
              colors: [
                Color(0xff33333e),
                Color(0xff201e28),
              ])),
    );
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
