import 'package:edufin_app/const/router/app_routes.dart';
import 'package:edufin_app/const/router/router.dart';
import 'package:edufin_app/const/theme/colors.dart';
import 'package:edufin_app/const/theme/strings.dart';
import 'package:edufin_app/const/theme/styles.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBlue,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(Strings.welcome, style: Styles.primaryH1Bold(AppColors.white)),
            SizedBox(height: 20),
            Image.asset("assets/images/edu.png"),
            Text(
              Strings.nextzen,
              style: Styles.fonttext14Regular(
                AppColors.white,
              ).copyWith(letterSpacing: 8),
            ),
            SizedBox(height: 20),
            Text(
              Strings.lesson,
              textAlign: TextAlign.center,
              style: Styles.fonttext14Regular(AppColors.white),
            ),
            SizedBox(height: 72),
            InkWell(
              onTap: () {
                router.push(AppRoutesPath.loginPage);
              },
              child: Container(
                width: 132,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.amber,
                ),
                child: Center(
                  child: Text(
                    Strings.go,
                    style: Styles.fontText20Bold(AppColors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
