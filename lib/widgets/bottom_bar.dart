import 'package:flutter/material.dart';

import '../models/screen_model.dart';

class BottomBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onClicked;
  final List<ScreenModel> screens;

  const BottomBar({
    super.key,
    required this.selectedIndex,
    required this.onClicked,
    required this.screens,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: screens
          .map(
            (e) => BottomNavigationBarItem(
              icon: e.icon,
              label: e.title,
            ),
          )
          .toList(),
      currentIndex: selectedIndex,
      onTap: onClicked,
    );
  }
}
