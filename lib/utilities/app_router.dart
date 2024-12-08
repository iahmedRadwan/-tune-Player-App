import 'package:flutter/material.dart';
import 'package:tunes_player_app/views/home_view/home_view.dart';

Map<String, Widget Function(BuildContext)> appRouter = {
  HomeView.routeName: (context) => const HomeView(),
};
