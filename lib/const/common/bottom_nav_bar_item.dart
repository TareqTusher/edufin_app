import 'package:edufin_app/const/common/nav_items_icon.dart';
import 'package:edufin_app/const/theme/colors.dart';
import 'package:flutter/material.dart';

class BottomNavBarItem extends StatelessWidget {
  const BottomNavBarItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 38.0, vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavItemsIcon(icon: Icons.home),
            NavItemsIcon(icon: Icons.tv),

            NavItemsIcon(icon: Icons.notifications),

            NavItemsIcon(icon: Icons.person),
          ],
        ),
      ),
    );
  }
}
