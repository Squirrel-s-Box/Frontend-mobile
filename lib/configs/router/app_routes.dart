import 'package:cajardilla/features/authentication/presentation/pages/signin_page.dart';
import 'package:cajardilla/features/authentication/presentation/pages/signup_page.dart';
import 'package:cajardilla/features/authentication/presentation/pages/splash_init_page.dart';
import 'package:cajardilla/features/authentication/presentation/pages/verify_code_page.dart';
import 'package:cajardilla/features/authentication/presentation/pages/verify_phone_page.dart';
import 'package:cajardilla/features/skeleton_home/widgets/principal_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'verify_phone';

  static Map<String, Widget Function(BuildContext)> routes =
  {
    'principal': (context) => const PrincipalPage(),
    'splash_init': (context) => const SplashInitPage(),
    'signin': (context) => const SignInPage(),
    'signup': (context) => const SignUpPage(),
    'verify_phone': (context) => const VerifyPhonePage(),
    'verify_code': (context) => const VerifyCodePage(),
  };
}
