import 'package:flutter/material.dart';
import 'package:genpy/services/theme_provider.dart';
import 'package:provider/provider.dart';

import 'splash_screen.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeNotifier.getTheme(),
      home:SplashScreen()
    );
  }
}
