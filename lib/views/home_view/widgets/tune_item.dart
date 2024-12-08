import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../../../models/tune_model.dart';

class TuneItem extends StatelessWidget {
  TuneItem({
    super.key,
    required this.tune,
  });

  final TuneModel tune;
  final AudioPlayer player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () async {
          await player.play(AssetSource(tune.tuneSoundPath));
        },
        child: Container(
          color: tune.tuneColor,
        ),
      ),
    );
  }
}
