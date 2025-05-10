import 'package:expense_tracker/router/router_path.dart';
import 'package:expense_tracker/screens/onboarding/onboarding.dart';
import 'package:go_router/go_router.dart';

List<GoRoute> buildRoutes() {
  return [
    GoRoute(
      name: AppRoutes.onBoardingScreen,
      path: AppRoutes.onBoardingScreen,
      builder: (context, state) {
        return OnBoardingScreen();
      },
    ),
  ];
}
