import 'package:flutter/material.dart';

import '../screens/mandarat_screen.dart';
import '../screens/map_screen.dart';

class ScreenModel {
  String title;
  Widget screen;
  Icon icon;

  ScreenModel(this.title, this.screen, this.icon);

  static List<ScreenModel> screens() {
    return [
      ScreenModel(
        '만다라트',
        const MandaratView(),
        const Icon(Icons.grid_view),
      ),
      ScreenModel(
        '지도',
        const MapScreen(),
        const Icon(Icons.map),
      ),
    ];
  }
}
