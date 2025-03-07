import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/helpers/app_routing.dart';
import 'package:movie_app/helpers/routes.dart';

void main() async {
  runApp(DevicePreview(builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      initialRoute: Routes.mainView,
      onGenerateRoute: AppRouting.onGeneratedRoute,
    );
  }
}
