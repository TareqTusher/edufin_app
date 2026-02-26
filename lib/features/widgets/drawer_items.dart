import 'package:edufin_app/const/theme/colors.dart';
import 'package:edufin_app/const/theme/strings.dart';
import 'package:edufin_app/const/theme/styles.dart';
import 'package:edufin_app/features/widgets/drawer_items_details.dart';
import 'package:flutter/material.dart';

class DrawerItems extends StatelessWidget {
  const DrawerItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            height: 34,
            width: 34,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.red100,
            ),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.close, color: AppColors.red, size: 24),
            ),
          ),
        ),
        SizedBox(height: 10),
        Align(
          alignment: Alignment.centerLeft,
          child: Image.asset("assets/images/edufin_brand.png", height: 24),
        ),
        SizedBox(height: 14),

        DrawerItemsDetails(text: Strings.profile),
        Divider(color: AppColors.black, thickness: 0.5),
        DrawerItemsDetails(text: Strings.dashboard),
        Divider(color: AppColors.black, thickness: 0.5),
        DrawerItemsDetails(text: Strings.reception, icon: Icons.expand_more),
        Divider(color: AppColors.black, thickness: 0.5),

        DrawerItemsDetails(text: Strings.branch),
        Divider(color: AppColors.black, thickness: 0.5),
        DrawerItemsDetails(text: Strings.online, icon: Icons.expand_more),
        Divider(color: AppColors.black, thickness: 0.5),
        DrawerItemsDetails(text: Strings.studentAdd, icon: Icons.expand_more),
        Divider(color: AppColors.black, thickness: 0.5),

        DrawerItemsDetails(
          text: Strings.studentDetails,
          icon: Icons.expand_more,
        ),
        Divider(color: AppColors.black, thickness: 0.5),
        DrawerItemsDetails(text: Strings.parents, icon: Icons.expand_more),
        Divider(color: AppColors.black, thickness: 0.5),
        DrawerItemsDetails(
          text: Strings.donorManagement,
          icon: Icons.expand_more,
        ),
        Divider(color: AppColors.black, thickness: 0.5),

        DrawerItemsDetails(text: Strings.commitee, icon: Icons.expand_more),
        Divider(color: AppColors.black, thickness: 0.5),
        DrawerItemsDetails(text: Strings.attendence, icon: Icons.expand_more),
        Divider(color: AppColors.black, thickness: 0.5),
        DrawerItemsDetails(
          text: Strings.studentAccount,
          icon: Icons.expand_more,
        ),
        Divider(color: AppColors.black, thickness: 0.5),

        DrawerItemsDetails(
          text: Strings.officeAccount,
          icon: Icons.expand_more,
        ),
        Divider(color: AppColors.black, thickness: 0.5),
        DrawerItemsDetails(text: Strings.icCard, icon: Icons.expand_more),
        Divider(color: AppColors.black, thickness: 0.5),
        DrawerItemsDetails(text: Strings.admitCard, icon: Icons.expand_more),
        Divider(color: AppColors.black, thickness: 0.5),

        DrawerItemsDetails(text: Strings.examManage, icon: Icons.expand_more),
        Divider(color: AppColors.black, thickness: 0.5),
        DrawerItemsDetails(text: Strings.omr, icon: Icons.expand_more),
        Divider(color: AppColors.black, thickness: 0.5),
        DrawerItemsDetails(text: Strings.marksheet, icon: Icons.expand_more),
        Divider(color: AppColors.black, thickness: 0.5),

        DrawerItemsDetails(text: Strings.certificate, icon: Icons.expand_more),
        Divider(color: AppColors.black, thickness: 0.5),
        DrawerItemsDetails(text: Strings.other, icon: Icons.expand_more),
        Divider(color: AppColors.black, thickness: 0.5),
        Text(Strings.logout,style: Styles.fontText24Bold(AppColors.grey),)
      ],
    );
  }
}
