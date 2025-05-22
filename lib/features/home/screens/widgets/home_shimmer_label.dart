import 'package:flutter/material.dart';

import 'package:inventi_exam/common/widgets/shimmer/shimmer_box.dart';
import 'package:inventi_exam/utils/constants/colors.dart';
import 'package:inventi_exam/utils/constants/sizes.dart';

class HomeShimmerLabel extends StatelessWidget {
  const HomeShimmerLabel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: InventiExamColors.brand25,
        borderRadius: BorderRadius.circular(InventiExamSizes.cornerRadius),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: InventiExamSizes.mediumSpacing,
      ),
      alignment: Alignment.center,
      child: ShimmerBox(width: 94, height: 20),
    );
  }
}
