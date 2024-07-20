import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:full_responsive_adaptive_ui_project/core/utils/app_colors.dart';
import 'package:full_responsive_adaptive_ui_project/core/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  final String title, subtitle, leadingImage;
  const UserInfoListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.leadingImage,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.grayColor,
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(leadingImage),
        title: Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          subtitle,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppStyles.styleRegular12(context),
        ),
      ),
    );
  }
}
