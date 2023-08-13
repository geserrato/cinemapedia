import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const [
      BottomNavigationBarItem(
        label: 'Home',
        icon: Icon(Icons.home_max_outlined),
      ),
      BottomNavigationBarItem(
        label: 'Category',
        icon: Icon(Icons.label_outline),
      ),
      BottomNavigationBarItem(
        label: 'Favorites',
        icon: Icon(Icons.favorite_border_outlined),
      )
    ]);
  }
}
