import 'package:cajardilla/configs/helper/responsive.dart';
import 'package:cajardilla/configs/theme/colors.dart';
import 'package:cajardilla/features/authentication/presentation/provider/verify_phone_provider.dart';
import 'package:cajardilla/features/authentication/presentation/widgets/verify_widgets/verify_button.dart';
import 'package:cajardilla/features/authentication/presentation/widgets/verify_widgets/verify_sixcode_input.dart';
import 'package:cajardilla/features/authentication/presentation/widgets/verify_widgets/verify_titles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VerifyCodePage extends StatelessWidget {
  const VerifyCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    final verifyPhoneProvider = Provider.of<VerifyPhoneProvider>(context);
    return Scaffold(
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: responsive.wp(10)),
          color: AppColors.lowOrange,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              SizedBox(height: responsive.hp(10)),
              const VerifyTitles(
                  title: 'Verification code',
                  subtitle:
                      'Provide us the six digit code we sent to your phone number'),
              const SizedBox(height: 20),
              const VerifySixCodeInput(),
              const SizedBox(height: 20),
              VerifyButton(
                  label: "Send verification code ",
                  onPressed: () {
                    verifyPhoneProvider
                        .verifyOTPCode(verifyPhoneProvider.otpCode);
                  })
            ],
          )),
    );
  }
}
