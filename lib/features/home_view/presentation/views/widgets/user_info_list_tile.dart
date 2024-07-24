import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:full_responsive_adaptive_ui_project/core/utils/app_colors.dart';
import 'package:full_responsive_adaptive_ui_project/core/utils/app_styles.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/data/models/user_info_model.dart';

class UserInfoListTile extends StatelessWidget {
  final UserInfoModel userInfo;
  const UserInfoListTile({
    super.key,
    required this.userInfo,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Card(
        color: AppColors.grayColor,
        elevation: 0,
        child: Center(
          child: ListTile(
            leading: SvgPicture.asset(userInfo.leadingImage),
            title: Text(
              userInfo.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppStyles.styleSemiBold16(context),
            ),
            subtitle: Text(
              userInfo.subtitle,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppStyles.styleRegular12(context),
            ),
          ),
        ),
      ),
    );
  }
}
