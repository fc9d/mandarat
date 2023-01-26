import 'package:flutter/material.dart';

import '../screens/mandarat_screen.dart';
import '../screens/map_screen.dart';

class ScreenModel {
  String title;
  Widget screen;
  Icon icon;
  bool isSelected;

  ScreenModel({
    required this.title,
    required this.screen,
    required this.icon,
    this.isSelected = false,
  });

  static List<ScreenModel> screens() {
    return [
      ScreenModel(
        title: '만다라트',
        screen: const MandaratView(),
        icon: const Icon(Icons.grid_view),
        isSelected: true,
      ),
      ScreenModel(
        title: '지도',
        screen: const MapScreen(),
        icon: const Icon(Icons.map),
      ),
    ];
  }
}
