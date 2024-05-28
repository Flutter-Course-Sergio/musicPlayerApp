import 'package:flutter/material.dart';

class TrackDuration extends StatelessWidget {
  const TrackDuration({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(color: Colors.white.withOpacity(0.4));

    return Container(
      child: Column(
        children: [
          Text(
            '0:00',
            style: textStyle,
          ),
          const SizedBox(height: 10),
          Stack(
            children: [
              _TrackProgressBar(Colors.white.withOpacity(0.1), 230),
              Positioned(
                  bottom: 0,
                  child: _TrackProgressBar(Colors.white.withOpacity(0.8), 150)),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            '0:00',
            style: textStyle,
          )
        ],
      ),
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
