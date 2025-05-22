import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:inventi_exam/common/widgets/shimmer/shimmer_box.dart';
import 'package:inventi_exam/utils/constants/colors.dart';
import 'package:inventi_exam/utils/constants/image_strings.dart';
import 'package:inventi_exam/utils/constants/sizes.dart';
import 'package:inventi_exam/utils/device/device_utility.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isLoading;
  final Widget? title;

  const CustomAppBar({
    super.key,
    this.title,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: isLoading
          ? const Padding(
              padding: EdgeInsets.only(left: InventiExamSizes.smallSideMargins),
              child: ShimmerBox(width: 36, height: 36),
            )
          : IconButton(
              icon: const Icon(
                Icons.menu_open,
                size: 36,
                color: InventiExamColors.brand300,
              ),
              onPressed: () {},
            ),
      toolbarHeight: InventiExamSizes.appbarHeight,
      title: isLoading
          ? Padding(
              padding: const EdgeInsets.only(
                  right: InventiExamSizes.smallSideMargins),
              child: const ShimmerBox(
                width: double.infinity,
                height: 36.62,
              ),
            )
          : SvgPicture.asset(
              InventiExamImages.inventiLogo,
              width: 122.33,
              height: 36.62,
            ),
      titleSpacing: InventiExamSizes.smallSpacing,
      centerTitle: false,
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(InventiExamDeviceUtils.getAppBarHeight());
}
