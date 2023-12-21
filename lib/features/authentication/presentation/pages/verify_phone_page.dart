import 'package:cajardilla/configs/helper/responsive.dart';
import 'package:cajardilla/configs/theme/colors.dart';
import 'package:cajardilla/features/authentication/presentation/provider/verify_phone_provider.dart';
import 'package:cajardilla/features/authentication/presentation/widgets/verify_widgets/verify_button.dart';
import 'package:cajardilla/features/authentication/presentation/widgets/verify_widgets/verify_input.dart';
import 'package:cajardilla/features/authentication/presentation/widgets/verify_widgets/verify_titles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class VerifyPhonePage extends StatelessWidget {
  const VerifyPhonePage({super.key});

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
                  title: 'Verify your phone number',
                  subtitle:
                      'Provide us your phone number and we will send you a verification code'),
              const SizedBox(height: 20),
              _formVerifyPhone(verifyPhoneProvider.ccController,
                  verifyPhoneProvider.phoneController),
              const SizedBox(height: 20),
              VerifyButton(label: "Send SMS", onPressed: (){})
            ],
          )),
    );
  }

  Widget _formVerifyPhone(TextEditingController ccController,
      TextEditingController phoneController) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          VerifyInput(
              placeholder: 'CC',
              width: 60,
              maxLength: 3,
              keyboardType: TextInputType.number,
              controller: ccController),
          const SizedBox(width: 10),
          VerifyInput(
              placeholder: 'Phone number',
              width: 230,
              keyboardType: TextInputType.number,
              controller: phoneController),
        ],
      ),
    );
  }
}
