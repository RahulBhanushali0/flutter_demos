import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_resume_demo/routes/route_generator.dart';
import 'package:flutter_resume_demo/view/home_screen.dart';
import 'package:get/get.dart';

import 'routes/screen_bindings.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Resume',
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      initialBinding: ScreenBindings(),
      getPages: RouteGenerator.generate(),
      home: const HomeScreen(),
    );
  }
}
