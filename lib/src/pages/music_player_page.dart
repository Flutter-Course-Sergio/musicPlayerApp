import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class MusicPlayerPage extends StatelessWidget {
  const MusicPlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const CustomAppbar(),
        Container(
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
        )
      ],
    ));
  }
}
