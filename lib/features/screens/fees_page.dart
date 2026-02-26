import 'package:edufin_app/const/common/bottom_nav_bar_item.dart';
import 'package:edufin_app/const/common/image_section.dart';
import 'package:edufin_app/const/theme/colors.dart';
import 'package:edufin_app/const/theme/strings.dart';
import 'package:edufin_app/const/theme/styles.dart';
import 'package:edufin_app/features/widgets/fee_management.dart';
import 'package:flutter/material.dart';

class FeesPage extends StatelessWidget {
  const FeesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        Strings.fees,
                        style: Styles.fonttext18Bold(AppColors.black),
                      ),
                      SizedBox(width: 14),
                      Image.asset("assets/images/Arrow.png"),
                    ],
                  ),
                  SizedBox(height: 10),
              
                  FeeManagement(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarItem(),
    );
  }
}
