import 'package:flutter/material.dart';
import 'package:inventi_exam/common/widgets/app_bar/custom_app_bar.dart';
import 'package:inventi_exam/utils/constants/colors.dart';
import 'package:inventi_exam/utils/constants/sizes.dart';
import 'package:inventi_exam/utils/constants/text_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: InventiExamColors.brand25,
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: InventiExamSizes.smallSideMargins,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(InventiExamSizes.smallSideMargins),
              decoration: BoxDecoration(
                color: InventiExamColors.white,
                borderRadius:
                    BorderRadius.circular(InventiExamSizes.cornerRadiusMd),
                border: Border.all(
                  color: InventiExamColors.brand100,
                  width: 1,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: InventiExamColors.brand25,
                      borderRadius:
                          BorderRadius.circular(InventiExamSizes.cornerRadius),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: InventiExamSizes.mediumSpacing),
                    alignment: Alignment.center,
                    child: Text(
                      HomeScreenTexts.homeQuickButton,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .apply(color: InventiExamColors.brand900),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: InventiExamSizes.largeSpacing,
                  ),
                  Container(
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
                          borderRadius: BorderRadius.circular(InventiExamSizes.cornerRadiusLg),
                        ),
                        elevation: 0,
                      ),
                      onPressed: () {},
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
                            Text(
                              HomeScreenTexts.homeQuickButtonDesc,
                              style: Theme.of(context).textTheme.labelMedium!,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
