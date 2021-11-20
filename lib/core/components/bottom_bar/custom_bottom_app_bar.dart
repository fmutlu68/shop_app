import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatelessWidget {
  final List<BottomNavigationBarItem> items;
  final int selectedIndex;
  final Color? selectedItemColor;
  final Color? unselectedItemColor;

  final void Function(BottomNavigationBarItem item) onChanged;
  const CustomBottomAppBar({
    Key? key,
    required this.items,
    required this.selectedIndex,
    this.selectedItemColor,
    this.unselectedItemColor,
    required this.onChanged,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: items,
      currentIndex: selectedIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (index) => onChanged(items[index]),
      selectedItemColor: selectedItemColor,
      unselectedItemColor: unselectedItemColor,
    );
  }
}
