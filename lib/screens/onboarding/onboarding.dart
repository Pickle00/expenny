import 'package:expense_tracker/router/app_router.dart';
import 'package:expense_tracker/router/router_path.dart';
import 'package:expense_tracker/screens/onboarding/widgets/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController controller = PageController();

  List<Map<String, String>> pageContent = [
    {
      "title": "Stay on Top of Your Expenses",
      "description":
          "Effortlessly log your daily expenses and see where your money goes—categorized and always up to date",
      "file_name": "wallet",
    },
    {
      "title": "Understand Your Finances at a Glance",
      "description":
          "Get insightful charts and breakdowns to easily track your income, expenses, and savings.",
      "file_name": "analytics",
    },
    {
      "title": "Take Control of Your Budget",
      "description":
          "Create custom budgets and get alerts when you're close to overspending. Start building your savings today!",
      "file_name": "piggy_bank",
    },
    {
      "title": "Access Your Data Anytime, Anywhere",
      "description":
          "Sign in with Google or Apple to sync your expenses securely across devices—or use the app as a guest!",
      "file_name": "cloud_sync",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: pageContent.length,
                controller: controller,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: OnBoardingPage(
                      title: pageContent[index]['title']!,
                      description: pageContent[index]['description']!,
                      fileName: pageContent[index]['file_name']!,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
        child: Row(
          children: [
            SmoothPageIndicator(
              controller: controller,
              count: pageContent.length,
              effect: const ExpandingDotsEffect(
                activeDotColor: Colors.lightBlue,
                dotColor: Color.fromARGB(255, 224, 224,
                    224), // This is equivalent to Colors.grey[200]
                dotHeight: 10,
              ),
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(16),
                backgroundColor: Colors.lightBlue,
              ),
              onPressed: () {
                if (controller.page != null) {
                  if (controller.page! == pageContent.length - 1) {
                    context.pushReplacement(AppRoutes.homeScreen);
                  } else {
                    int nextPage = (controller.page! + 1).toInt();
                    controller.animateToPage(
                      nextPage,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  }
                }
              },
              child: const Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
