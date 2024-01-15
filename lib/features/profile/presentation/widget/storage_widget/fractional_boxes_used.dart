import 'package:cajardilla/configs/theme/colors.dart';
import 'package:flutter/material.dart';

class FractionalBoxesUsed extends StatelessWidget {
  final int boxesUsed;
  final int boxesTotal;
  const FractionalBoxesUsed({super.key, required this.boxesUsed, required this.boxesTotal});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 10,
      decoration: BoxDecoration(
          color: AppColors.ultraLowOrange,
          borderRadius: BorderRadius.circular(10)
      ),
      child: FractionallySizedBox(
        alignment: Alignment.centerLeft,
        widthFactor: boxesUsed / boxesTotal,
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.strongOrange,
              borderRadius: BorderRadius.circular(10)
          ),
        ),
      ),
    );
  }
}
