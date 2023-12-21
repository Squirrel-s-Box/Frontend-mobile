import 'package:cajardilla/configs/router/app_routes.dart';
import 'package:cajardilla/features/authentication/presentation/provider/verify_phone_provider.dart';
import 'package:cajardilla/features/skeleton_home/providers/selected_page_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'configs/theme/app_theme.dart';
import 'features/skeleton_home/widgets/navigation_home_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SelectedPageProvider()),
        ChangeNotifierProvider(create: (_) => VerifyPhoneProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const NavigationHomeWidget(),
        title: 'Cajardilla',
        theme: AppTheme.lightTheme,
        initialRoute: AppRoutes.initialRoute,
        routes: AppRoutes.routes,
      ),
    );
  }
}
