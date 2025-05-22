import 'package:flutter/material.dart';

import 'package:inventi_exam/common/widgets/shimmer/spin_bars.dart';
import 'package:inventi_exam/utils/constants/colors.dart';
import 'package:inventi_exam/utils/constants/sizes.dart';

class HomeShimmerQuickButton extends StatelessWidget {
  const HomeShimmerQuickButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(InventiExamSizes.cornerRadiusLg),
        boxShadow: [
          BoxShadow(
            color: InventiExamColors.shadow,
            offset: const Offset(2, 2),
            blurRadius: 10,
            spreadRadius: 0,
          ),
        ],
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(InventiExamSizes.cornerRadiusLg),
          ),
          elevation: 0,
        ),
        onPressed: () {},
        child: const Padding(
          padding: EdgeInsets.all(7),
          child: SizedBox(
              height: 36,
              width: 36,
              child: SpinBars(
                color: Colors.black,
                size: 36,
              )),
        ),
      ),
    );
  }
}
