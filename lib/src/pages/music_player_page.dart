import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class MusicPlayerPage extends StatelessWidget {
  const MusicPlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
        CustomAppbar(),
        Row(
          children: [TrackImage(), TrackDuration()],
        )
      ],
    ));
  }
}
