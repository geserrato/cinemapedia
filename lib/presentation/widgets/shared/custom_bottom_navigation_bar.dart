import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;

  const CustomBottomNavigationBar({super.key, required this.currentIndex});

  void onItemTapped(int index, BuildContext context) {
    context.go('/home/$index');
    // switch (index) {
    //   case 0:
    //     context.go('/home/0');
    //     break;
    //   case 1:
    //     context.go('/home/1');
    //     break;
    //   case 2:
    //     context.go('/home/2');
    //     break;
    //   default:
    //     context.go('/home/0');
    // }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (value) => onItemTapped(value, context),
      items: const [
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
      ],
    );
  }
}
