import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:inventi_exam/utils/constants/colors.dart';
import 'package:inventi_exam/utils/constants/image_strings.dart';
import 'package:inventi_exam/utils/constants/sizes.dart';
import 'package:inventi_exam/utils/device/device_utility.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.actions,
    this.showBackArrow = true,
    this.showFactsLogo = true,
  });

  final Widget? title;
  final List<Widget>? actions;
  final bool showBackArrow;
  final bool showFactsLogo;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(
          Icons.menu_open,
          size: 36,
          color: InventiExamColors.brand300,
        ),
        onPressed: () {},
      ),
      toolbarHeight: InventiExamSizes.appbarHeight,
      title: SvgPicture.asset(
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
