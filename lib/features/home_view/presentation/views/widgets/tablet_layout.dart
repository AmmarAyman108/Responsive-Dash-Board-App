import 'package:flutter/material.dart';
import 'package:full_responsive_adaptive_ui_project/core/utils/functions/adaptive_text.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Tablet Layout',
          style: TextStyle(
            fontSize: getResponsiveFontSize(context, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
