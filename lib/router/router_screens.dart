import 'package:expense_tracker/router/router_path.dart';
import 'package:expense_tracker/screens/home/home_screen.dart';
import 'package:expense_tracker/screens/onboarding/onboarding.dart';
import 'package:go_router/go_router.dart';

List<GoRoute> buildRoutes() {
  return [
    GoRoute(
      name: AppRoutes.onBoardingScreen,
      path: AppRoutes.onBoardingScreen,
      builder: (context, state) {
        return const OnBoardingScreen();
      },
    ),
    GoRoute(
      name: AppRoutes.homeScreen,
      path: AppRoutes.homeScreen,
      builder: (context, state) {
        return const HomeScreen();
      },
    ),
  ];
}
