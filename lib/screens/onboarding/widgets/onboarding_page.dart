import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnBoardingPage extends StatelessWidget {
  final String title;
  final String description;
  final String fileName;

  // ignore: use_key_in_widget_constructors_
  const OnBoardingPage({
    super.key,
    required this.title,
    required this.description,
    required this.fileName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Lottie.asset('assets/animations/$fileName.json',
            width: 500, height: 500),
        Text(
          title,
          textAlign: TextAlign.start,
          style: const TextStyle(
            fontSize: 30,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          description,
          textAlign: TextAlign.start,
          style: const TextStyle(
            fontSize: 14,
          ),
        )
      ],
    );
  }
}
