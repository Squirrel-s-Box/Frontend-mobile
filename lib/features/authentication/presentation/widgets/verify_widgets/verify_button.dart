import 'package:auto_size_text/auto_size_text.dart';
import 'package:cajardilla/configs/helper/responsive.dart';
import 'package:cajardilla/configs/theme/colors.dart';
import 'package:flutter/material.dart';

class VerifyButton extends StatelessWidget {
  final String label;
  final Function() onPressed;
  const VerifyButton({super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.midOrange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.symmetric(
              horizontal: responsive.wp(10),
              vertical: responsive.hp(1)),
        ),
        onPressed: onPressed,
        child: AutoSizeText(
          label,
          maxLines: 1,
          style: TextStyle(
              color: AppColors.darkBlue,
              fontSize: responsive.sp(20),
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
