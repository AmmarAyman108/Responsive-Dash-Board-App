import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:full_responsive_adaptive_ui_project/responsive_dash_board_app.dart';

void main() => runApp(
      DevicePreview(
        enabled: true,
        builder: (context) => const ResponsiveDashBoardApp(), // Wrap your app
      ),
    );
