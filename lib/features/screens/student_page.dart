import 'package:edufin_app/const/common/bottom_nav_bar_item.dart';
import 'package:edufin_app/const/common/image_section.dart';
import 'package:edufin_app/const/theme/colors.dart';
import 'package:edufin_app/const/theme/strings.dart';
import 'package:edufin_app/const/theme/styles.dart';
import 'package:edufin_app/features/widgets/drawer_items.dart';
import 'package:edufin_app/features/widgets/list_card.dart';
import 'package:edufin_app/features/widgets/menu_items_section.dart';
import 'package:flutter/material.dart';

class StudentPage extends StatelessWidget {
  const StudentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        endDrawer: Drawer(
          backgroundColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 40.0, top: 50, right: 8),
            child: DrawerItems(),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
            ImageSection(),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          Strings.quickMenu,
                          style: Styles.fonttext18Bold(AppColors.black),
                        ),
                        SizedBox(width: 14),
                        Image.asset("assets/images/Arrow.png"),
                      ],
                    ),
                    SizedBox(height: 16),
                    MenuItemsSection(),
                    SizedBox(height: 20),
                    ListCard(),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavBarItem(),
      ),
    );
  }
}
