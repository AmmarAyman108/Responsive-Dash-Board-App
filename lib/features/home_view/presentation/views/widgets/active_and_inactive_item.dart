import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:full_responsive_adaptive_ui_project/core/utils/app_colors.dart';
import 'package:full_responsive_adaptive_ui_project/core/utils/app_styles.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/data/models/drawer_item_model.dart';

class InActiveItem extends StatelessWidget {
  const InActiveItem({
    super.key,
    required this.item,
  });

  final DrawerItemModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        contentPadding: const EdgeInsets.all(5),
        title: Text(
          item.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppStyles.styleMedium16(context),
        ),
        leading: SvgPicture.asset(item.leadingImage));
  }
}

class ActiveItem extends StatelessWidget {
  const ActiveItem({
    super.key,
    required this.item,
  });

  final DrawerItemModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(5),
      title: Text(item.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppStyles.styleBold16(context)),
      leading: SvgPicture.asset(item.leadingImage),
      trailing: Container(
        width: 3.5,
        color: AppColors.blueColor,
      ),
    );
  }
}
