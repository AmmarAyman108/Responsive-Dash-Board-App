import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:full_responsive_adaptive_ui_project/core/utils/app_colors.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/data/models/all_expanses_item_model.dart';

class AllExpensesItemHeader extends StatelessWidget {
  final AllExpansesItemModel itemModel;
  final Color? imageColor, backgroundColor,iconColor;
  const AllExpensesItemHeader(
      {super.key,
      required this.itemModel,
       this.imageColor,
       this.backgroundColor, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 60,
          height: 60,
          child: CircleAvatar(
            radius: 30,
            backgroundColor: backgroundColor ?? AppColors.grayColor,
            child: SvgPicture.asset(
              itemModel.image,
              colorFilter: ColorFilter.mode(
                  imageColor ?? AppColors.blueColor, BlendMode.srcIn),
            ),
          ),
        ),
        Transform.rotate(
          angle: 2 * -1.5709633,
          child:  Icon(
            Icons.arrow_back_ios,
            color:iconColor?? AppColors.primaryColor,
          ),
        )
      ],
    );
  }
}
