import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnimationWidget extends StatelessWidget {
  final String animationPath;

  const LottieAnimationWidget({super.key, required this.animationPath});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      animationPath,
      width: 200,
      height: 200,
      fit: BoxFit.contain,
    );
  }
}
