import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:full_responsive_adaptive_ui_project/core/utils/app_assets.dart';
import 'package:full_responsive_adaptive_ui_project/core/utils/app_colors.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/data/models/drawer_item_model.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/presentation/views/widgets/active_and_inactive_item.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/presentation/views/widgets/drawer_item_list_view.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/presentation/views/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteColor,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          const SliverToBoxAdapter(
            child: UserInfoListTile(
              leadingImage: AppAssets.imagesAvatar3,
              subtitle: "lekon@gmail.com",
              title: "Lekon Okeowo",
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 5,
            ),
          ),
          const DrawerItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(
                    child: SizedBox(
                  height: 5,
                )),
                InActiveItem(
                    item: DrawerItemModel(
                        title: 'Settings System',
                        leadingImage: AppAssets.imagesSettings)),
                InActiveItem(
                    item: DrawerItemModel(
                        title: 'Logout Account',
                        leadingImage: AppAssets.imagesLogout)),
                const SizedBox(
                  height: 48,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
