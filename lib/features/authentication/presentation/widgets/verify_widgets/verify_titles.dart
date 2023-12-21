import 'package:cajardilla/configs/helper/responsive.dart';
import 'package:cajardilla/configs/theme/colors.dart';
import 'package:flutter/material.dart';

class VerifyTitles extends StatelessWidget {
  final String title;
  final String subtitle;

  const VerifyTitles({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Column(children: [
      Text(
        title,
        style: TextStyle(
          fontSize: responsive.sp(25),
          fontWeight: FontWeight.bold,
          color: AppColors.cofeeCapuchino,
        ),
      ),
      const SizedBox(height: 20),
      Text(
        subtitle,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColors.cofeeCapuchino,
          fontSize: responsive.sp(17),
          fontWeight: FontWeight.w500,
        ),
      ),
    ]);
  }
}
