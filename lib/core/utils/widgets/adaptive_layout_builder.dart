import 'package:flutter/material.dart';

class AdaptiveLayoutBuilder extends StatelessWidget {
  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;
  const AdaptiveLayoutBuilder({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 600) {
          return mobileLayout(context);
        } else if (constraints.maxWidth < 900) {
          return tabletLayout(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}
