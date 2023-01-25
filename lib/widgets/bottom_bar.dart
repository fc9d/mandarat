import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onClicked;

  const BottomBar({
    super.key,
    required this.selectedIndex,
    required this.onClicked,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.grid_view),
          label: '만다라트',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          label: '지도',
        ),
      ],
      currentIndex: selectedIndex,
      onTap: onClicked,
    );
  }
}
