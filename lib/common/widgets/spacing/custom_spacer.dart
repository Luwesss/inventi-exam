import 'package:flutter/material.dart';
import 'package:inventi_exam/utils/constants/sizes.dart';

class CustomSpacer extends StatelessWidget {
  const CustomSpacer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: InventiExamSizes.defaultSpace,
    );
  }
}
