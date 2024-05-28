import 'package:flutter/material.dart';

import 'src/pages/music_player_page.dart';
import 'src/theme/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Music Player',
        theme: customTheme,
        home: const MusicPlayerPage());
  }
}
