import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/audioplayer_model.dart';

class TrackImage extends StatelessWidget {
  const TrackImage({super.key});

  @override
  Widget build(BuildContext context) {
    final audioPlayerModel = Provider.of<AudioPlayerModel>(context);

    return Container(
      padding: const EdgeInsets.all(20),
      width: 250,
      height: 250,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200),
          gradient: const LinearGradient(begin: Alignment.topLeft, colors: [
            Color(0xff484750),
            Color(0xff1e1c24),
          ])),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(200),
        child: Stack(
          alignment: Alignment.center,
          children: [
            SpinPerfect(
                duration: const Duration(seconds: 10),
                infinite: true,
                manualTrigger: true,
                controller: (animationController) =>
                    audioPlayerModel.controller = animationController,
                child:
                    const Image(image: AssetImage('assets/images/aurora.jpg'))),
            const _TrackCircle(25, Colors.black38),
            const _TrackCircle(18, Color(0xff1C1C25)),
          ],
        ),
      ),
    );
  }
}

class _TrackCircle extends StatelessWidget {
  final double circleSize;
  final Color circleColor;

  const _TrackCircle(this.circleSize, this.circleColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: circleSize,
      height: circleSize,
      decoration: BoxDecoration(
          color: circleColor, borderRadius: BorderRadius.circular(100)),
    );
  }
}
