import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gdsc_flutter_camp_2023_app_cinco/config/theme/theme.dart';
import 'package:gdsc_flutter_camp_2023_app_cinco/presentation/provider/pixabay_provider.dart';
import 'package:gdsc_flutter_camp_2023_app_cinco/presentation/screens/home_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => PixabayProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pixabay',
        theme: ThemeApp().theme(),
        initialRoute: '/home',
        routes: {'/home': (context) => const HomePage()},
      ),
    );
  }
}
