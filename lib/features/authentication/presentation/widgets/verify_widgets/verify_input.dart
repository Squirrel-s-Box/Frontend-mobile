import 'package:cajardilla/configs/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VerifyInput extends StatelessWidget {
  String placeholder;
  double width;
  TextEditingController controller;
  TextInputType? keyboardType;
  int? maxLength;

  VerifyInput(
      {super.key,
      required this.placeholder,
      required this.width,
      required this.controller,
      this.keyboardType,
      this.maxLength});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        child: TextFormField(
          maxLength: maxLength,
          onChanged: maxLength != null
              ? (value) {
                  if (value.length == maxLength) {
                    FocusScope.of(context).nextFocus();
                  }
                }
              : null,
          keyboardType: keyboardType,
          textAlign: maxLength != null ? TextAlign.center : TextAlign.start,
          inputFormatters: maxLength != null
              ? [LengthLimitingTextInputFormatter(maxLength)]
              : null,

          maxLengthEnforcement: MaxLengthEnforcement.enforced,
          controller: controller,
          cursorColor: AppColors.cofeeCapuchino,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.whiteBackground,
            counterText: '',
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.cofeeCapuchino),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.cofeeCapuchino),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.cofeeCapuchino),
            ),
            hintText: placeholder,

          ),
        ));
  }
}
