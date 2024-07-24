
import 'package:flutter/material.dart';
import 'package:full_responsive_adaptive_ui_project/core/utils/app_assets.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/data/models/user_info_model.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/presentation/views/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({
    super.key,
  });
  static List<UserInfoModel> usersInfo = [
    const UserInfoModel(
      leadingImage: AppAssets.imagesAvatar3,
      title: 'Lekon Okeowo',
      subtitle: ' lekooooooooooon@gmail.com',
    ),
    const UserInfoModel(
      leadingImage: AppAssets.imagesAvatar3,
      title: 'Lekon Okeowo',
      subtitle: ' lekon@gmail.com',
    ),
    const UserInfoModel(
      leadingImage: AppAssets.imagesAvatar3,
      title: 'Lekon Okeowo',
      subtitle: ' lekon@gmail.com',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: usersInfo.length,
          itemBuilder: (context, index) {
            return UserInfoListTile(userInfo: usersInfo[index]);
          }),
    );
  }
}
