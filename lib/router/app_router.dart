import 'package:expense_tracker/router/router_path.dart';
import 'package:expense_tracker/router/router_screens.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: AppRoutes.onBoardingScreen,
  routes: buildRoutes(),
);
