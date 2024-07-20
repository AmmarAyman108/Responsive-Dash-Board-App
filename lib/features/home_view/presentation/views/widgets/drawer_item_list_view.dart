import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:full_responsive_adaptive_ui_project/core/utils/app_assets.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/data/models/drawer_item_model.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/presentation/views/widgets/drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({
    super.key,
  });

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  final List<DrawerItemModel> items = [
    DrawerItemModel(
        title: 'Dashboard', leadingImage: AppAssets.imagesDashboard),
    DrawerItemModel(
        title: 'My Transaction', leadingImage: AppAssets.imagesMyTransctions),
    DrawerItemModel(
        title: 'Statistics', leadingImage: AppAssets.imagesStatistics),
    DrawerItemModel(
        title: 'Wallet Account', leadingImage: AppAssets.imagesWalletAccount),
    DrawerItemModel(
        title: 'My Investments', leadingImage: AppAssets.imagesMyInvestments),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: items.length,
      (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              if (selectedIndex != index) {
                selectedIndex = index;
              }
            });
          },
          child: DrawerItem(
            item: items[index],
            isActive: selectedIndex == index,
          )),
    ));
  }
}
