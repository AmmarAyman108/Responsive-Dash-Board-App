import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/presentation/views/home_view.dart';

class ResponsiveDashBoardApp extends StatelessWidget {
  const ResponsiveDashBoardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const HomeView(),
    );
  }
}
