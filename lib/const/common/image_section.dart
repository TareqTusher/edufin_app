import 'package:edufin_app/const/theme/colors.dart';
import 'package:edufin_app/features/widgets/student_info_section.dart';
import 'package:flutter/material.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return   Stack(
              children: [
                Image.asset(
                  "assets/images/classroom.jpg",
                  height: 144,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Builder(
                        builder: (context) => Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: () {
                              Scaffold.of(context).openEndDrawer();
                            },
                            child: Icon(
                              Icons.menu,
                              size: 24,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      StudentInfoSection(),
                    ],
                  ),
                ),
              ],
            );
  }
}