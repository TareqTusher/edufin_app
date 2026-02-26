import 'package:edufin_app/const/router/app_routes.dart';
import 'package:edufin_app/features/screens/fees_page.dart';
import 'package:edufin_app/features/screens/login_page.dart';
import 'package:edufin_app/features/screens/splash_screen.dart';
import 'package:edufin_app/features/screens/student_page.dart';
import 'package:go_router/go_router.dart';

GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: AppRoutesPath.splashScreen,
      name: AppRoutesName.splashScreen,
      pageBuilder: (context, state) => NoTransitionPage(child: SplashScreen()),
    ),

     GoRoute(
      path: AppRoutesPath.loginPage,
      name: AppRoutesName.loginPage,
      pageBuilder: (context, state) => NoTransitionPage(child: LoginPage()),
    ),

        GoRoute(
      path: AppRoutesPath.studentPage,
      name: AppRoutesName.studentPage,
      pageBuilder: (context, state) => NoTransitionPage(child: StudentPage()),
    ),
     GoRoute(
      path: AppRoutesPath.feesPage,
      name: AppRoutesName.feesPage,
      pageBuilder: (context, state) => NoTransitionPage(child: FeesPage()),
    ),
  ],
);
