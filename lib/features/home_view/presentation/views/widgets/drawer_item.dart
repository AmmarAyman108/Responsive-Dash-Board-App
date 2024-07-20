import 'package:flutter/material.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/data/models/drawer_item_model.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/presentation/views/widgets/active_and_inactive_item.dart';

class DrawerItem extends StatelessWidget {
  final DrawerItemModel item;
  final bool isActive;
  const DrawerItem({super.key, required this.item, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return isActive ? ActiveItem(item: item) : InActiveItem(item: item);
  }
}
