import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/audioplayer_model.dart';

class TrackDuration extends StatelessWidget {
  const TrackDuration({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(color: Colors.white.withOpacity(0.4));
    final audioPlayerModel = Provider.of<AudioPlayerModel>(context);

    return Column(
      children: [
        Text(
          audioPlayerModel.songTotalDuration,
          style: textStyle,
        ),
        const SizedBox(height: 10),
        Stack(
          children: [
            _TrackProgressBar(Colors.white.withOpacity(0.1), 230),
            Positioned(
                bottom: 0,
                child: _TrackProgressBar(Colors.white.withOpacity(0.8),
                    230 * audioPlayerModel.percentage)),
          ],
        ),
        const SizedBox(height: 10),
        Text(
          audioPlayerModel.currentSecond,
          style: textStyle,
        )
      ],
    );
  }
}

class _TrackProgressBar extends StatelessWidget {
  final Color color;
  final double height;

  const _TrackProgressBar(this.color, this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 3,
      height: height,
      color: color,
    );
  }
}
