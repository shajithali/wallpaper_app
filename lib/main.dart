import 'package:flutter/material.dart';
import 'package:genpy/services/theme_provider.dart';
import 'package:genpy/ui/my_app.dart';
import 'package:provider/provider.dart';

import 'model/themes.dart';
void main()=>runApp(ChangeNotifierProvider<ThemeNotifier>(
  create: (_) => ThemeNotifier(darkTheme),
  child: MyApp(),
),


);

