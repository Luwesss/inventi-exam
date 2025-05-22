import 'package:flutter/material.dart';

import 'package:inventi_exam/utils/constants/colors.dart';
import 'package:inventi_exam/utils/constants/sizes.dart';
import 'package:inventi_exam/utils/constants/text_strings.dart';

class HomeQuickButton extends StatelessWidget {
  final VoidCallback onPressed;

  const HomeQuickButton({
    super.key,
    required this.onPressed,
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
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(7),
          child: Column(
            children: [
              Icon(
                Icons.build,
                color: InventiExamColors.white,
                size: InventiExamSizes.iconSize,
              ),
              SizedBox(height: InventiExamSizes.smallSpacing),
              Flexible(
                child: Text(
                  HomeScreenTexts.homeQuickButtonDesc,
                  style: Theme.of(context).textTheme.labelMedium!,
                  overflow:
                      TextOverflow.ellipsis, 
                  maxLines: 2, 
                  softWrap: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
