
import 'package:flutter/material.dart';
import 'package:full_responsive_adaptive_ui_project/core/utils/app_colors.dart';
import 'package:full_responsive_adaptive_ui_project/core/utils/app_styles.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField(
      {super.key, required this.hintText, required this.title});

  final String hintText, title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(title, style: AppStyles.styleSemiBold20(context)),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.grayColor,
                hintStyle: AppStyles.styleRegular16(context),
                enabledBorder: buildBorder(),
                focusedBorder: buildBorder(),
                border: buildBorder(),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                hintText: hintText))
      ],
    );
  }

  OutlineInputBorder buildBorder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      borderSide: BorderSide(color: AppColors.grayColor),
    );
  }
}
