
import 'package:flutter/material.dart';
import 'package:full_responsive_adaptive_ui_project/core/utils/app_colors.dart';
import 'package:full_responsive_adaptive_ui_project/core/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color? foregroundColor, backgroundColor;
  const CustomButton({
    super.key,
    required this.text,
    this.foregroundColor,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      focusElevation: 0,
      hoverElevation: 0,
      onPressed: () {},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: backgroundColor ?? AppColors.blueColor,
      height: 62,
      child: Text(text,
          style: AppStyles.styleSemiBold18(context)
              .copyWith(color: foregroundColor)),
    );
  }
}
