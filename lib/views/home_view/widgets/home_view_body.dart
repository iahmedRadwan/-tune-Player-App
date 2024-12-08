import 'package:flutter/material.dart';
import 'package:tunes_player_app/models/tune_model.dart';

import 'tune_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  final List<TuneModel> tunes = const [
    TuneModel(
        tuneColor: Color(0xffF44336), tuneSoundPath: "assets/sounds/note1.wav"),
    TuneModel(
        tuneColor: Color(0xffF89800), tuneSoundPath: "assets/sounds/note2.wav"),
    TuneModel(
        tuneColor: Color(0xffFEEB3B), tuneSoundPath: "assets/sounds/note3.wav"),
    TuneModel(
        tuneColor: Color(0xff4CAF50), tuneSoundPath: "assets/sounds/note4.wav"),
    TuneModel(
        tuneColor: Color(0xff2F9688), tuneSoundPath: "assets/sounds/note5.wav"),
    TuneModel(
        tuneColor: Color(0xff2896F3), tuneSoundPath: "assets/sounds/note6.wav"),
    TuneModel(
        tuneColor: Color(0xff9C27B0), tuneSoundPath: "assets/sounds/note7.wav"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: getItems(tunes),
    );
  }
}

List<TuneItem> getItems(List<TuneModel> tunes) {
  return tunes.map((tune) => TuneItem(tune: tune)).toList();
}
