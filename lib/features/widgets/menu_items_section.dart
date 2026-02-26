import 'package:edufin_app/const/router/app_routes.dart';
import 'package:edufin_app/const/router/router.dart';
import 'package:edufin_app/const/theme/colors.dart';
import 'package:edufin_app/const/theme/styles.dart';
import 'package:flutter/material.dart';

class MenuItemsSection extends StatefulWidget {
  const MenuItemsSection({super.key});

  @override
  State<MenuItemsSection> createState() => _MenuItemsSectionState();
}

class _MenuItemsSectionState extends State<MenuItemsSection> {
  //int selectedIndex = 0;
  int totalItems = 9;
  @override
  Widget build(BuildContext context) {
    List<Color> containerColor = [
      AppColors.skyBlue100,
      AppColors.amber100,

      AppColors.green100,

      AppColors.blue100,

      AppColors.red100,

      AppColors.skyBlue100,

      AppColors.skyBlue100,

      AppColors.amber100,
    ];
    List<Color> color = [
      AppColors.deepSkyBlue,
      AppColors.amber,

      AppColors.green,

      AppColors.blue,

      AppColors.red,

      AppColors.deepSkyBlue,

      AppColors.deepSkyBlue,

      AppColors.amber,
    ];
    List<String> text = [
      "Fees",
      "Teacher",
      "Subject",
      'Class Schedule',
      'Homework',
      'Exam Schedule',
      'Report Card',
      'Leave',
    ];
    return GridView.builder(
      shrinkWrap: true,
      itemCount: totalItems,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return index == totalItems - 1
            ? Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 84,
                      width: 44,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: color[2],
                      ),
                      child: Icon(
                        Icons.arrow_forward,
                        size: 24,
                        color: AppColors.white,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        width: 80,
                        child: Text(
                          "See All",
                          style: Styles.fontText16Medium(color[2]),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : InkWell(
                onTap: () {
                  if (index == 0) {
                    router.push(AppRoutesPath.feesPage);
                  }
                },
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: containerColor[index],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 84,
                        width: 44,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: color[index],
                        ),
                        child: Icon(
                          Icons.attach_money,
                          size: 24,
                          color: AppColors.white,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 80,
                        child: Text(
                          text[index],
                          style: Styles.fontText16Medium(color[index]),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              );
      },
    );
  }
}
