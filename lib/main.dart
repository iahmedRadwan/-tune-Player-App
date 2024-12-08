import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tunes_player_app/utilities/app_router.dart';
import 'package:tunes_player_app/views/home_view/home_view.dart';

void main() {
  AudioCache.instance = AudioCache(prefix: '');
  runApp(const TunesApp());
}

class TunesApp extends StatelessWidget {
  const TunesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: appRouter,
      initialRoute: HomeView.routeName,
    );
  }
}
