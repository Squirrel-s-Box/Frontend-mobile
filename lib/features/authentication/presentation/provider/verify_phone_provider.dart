import 'package:flutter/material.dart';

class VerifyPhoneProvider extends ChangeNotifier{
  TextEditingController ccController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  String _otpCode='';
  String get otpCode => _otpCode;
  set otpCode(String value) {
    _otpCode = value;
    notifyListeners();
  }

  List<String> get getPhone => [ccController.text, phoneController.text];

  @override
  void dispose() {
    ccController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  void verifyOTPCode(String code){
    _otpCode = code;
    print("call verifyOTPCode$_otpCode");
  }
}