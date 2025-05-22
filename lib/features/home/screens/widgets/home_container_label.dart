import 'package:flutter/material.dart';
import 'package:inventi_exam/utils/constants/colors.dart';
import 'package:inventi_exam/utils/constants/sizes.dart';

class HomeContainerLabel extends StatelessWidget {
  final String label;

  const HomeContainerLabel({
    super.key,
    required this.label,
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
      child: Text(
        label,
        style: Theme.of(context)
            .textTheme
            .titleMedium!
            .apply(color: InventiExamColors.brand900),
        textAlign: TextAlign.center,
      ),
    );
  }
}
