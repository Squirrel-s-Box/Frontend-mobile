import 'package:cajardilla/configs/theme/colors.dart';
import 'package:cajardilla/features/authentication/presentation/provider/verify_phone_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:provider/provider.dart';

class VerifySixCodeInput extends StatelessWidget {
  const VerifySixCodeInput({super.key});

  @override
  Widget build(BuildContext context) {
    final verifyPhoneProvider = Provider.of<VerifyPhoneProvider>(context);

    return OtpTextField(
      numberOfFields: 6,
      borderWidth: 2,
      enabledBorderColor: AppColors.cofeeCapuchino,
      filled: true,
      cursorColor: AppColors.cofeeCapuchino,
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.cofeeCapuchino),
        ),
      ),
      focusedBorderColor: AppColors.cofeeCapuchino,
      showFieldAsBox: true,
      onCodeChanged: (String code) {
        verifyPhoneProvider.otpCode = code;
      },
      onSubmit: (String verificationCode) {
        verifyPhoneProvider.verifyOTPCode(verificationCode);
      },
    );
  }
}
