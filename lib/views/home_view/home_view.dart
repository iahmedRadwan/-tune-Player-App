import 'package:flutter/material.dart';
import 'package:tunes_player_app/utilities/app_color.dart';

import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String routeName = "HomeView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.kPrimeColor,
        title: const Text(
          "Flutter Tunes App",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const HomeViewBody(),
    );
  }
}
