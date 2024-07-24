import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:full_responsive_adaptive_ui_project/core/utils/app_assets.dart';
import 'package:full_responsive_adaptive_ui_project/core/utils/app_colors.dart';
import 'package:full_responsive_adaptive_ui_project/core/utils/app_styles.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        padding: EdgeInsets.only(right: 20, bottom: 20),
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage(AppAssets.imagesCardBackground)),
            color: AppColors.blueColor,
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.only(left: 31, right: 22, top: 16),
              title: Text(
                'New Card',
                style: AppStyles.styleRegular16(context)
                    .copyWith(color: Colors.white),
              ),
              subtitle: Text(
                'Syah Bandi',
                style: AppStyles.styleMedium20(context),
              ),
              trailing: SvgPicture.asset(AppAssets.imagesGallery),
            ),
            Expanded(child: SizedBox()),
            Text('0918 3124 0042 8126',
                style: AppStyles.styleSemiBold24(context)
                    .copyWith(color: Colors.white)),
            Text('12/20 - 124',
                style: AppStyles.styleRegular16(context)
                    .copyWith(color: AppColors.whiteColor))
          ],
        ),
      ),
    );
  }
}
