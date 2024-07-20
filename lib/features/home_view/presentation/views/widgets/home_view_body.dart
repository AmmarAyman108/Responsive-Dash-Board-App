import 'package:flutter/material.dart';
import 'package:full_responsive_adaptive_ui_project/core/utils/app_colors.dart';
import 'package:full_responsive_adaptive_ui_project/core/utils/widgets/adaptive_layout_builder.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/presentation/views/widgets/desktop_layout.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/presentation/views/widgets/mobile_layout.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/presentation/views/widgets/tablet_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grayColor,
      body: AdaptiveLayoutBuilder(
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
