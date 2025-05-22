import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:inventi_exam/common/widgets/app_bar/custom_app_bar.dart';
import 'package:inventi_exam/common/widgets/snackbar/custom_snackbar.dart';
import 'package:inventi_exam/features/home/controllers/home_cubit.dart';
import 'package:inventi_exam/features/home/controllers/home_state.dart';
import 'package:inventi_exam/features/home/screens/widgets/home_container_label.dart';
import 'package:inventi_exam/features/home/screens/widgets/home_quick_button.dart';
import 'package:inventi_exam/features/home/screens/widgets/home_shimmer_label.dart';
import 'package:inventi_exam/features/home/screens/widgets/home_shimmer_quick_button.dart';
import 'package:inventi_exam/utils/constants/colors.dart';
import 'package:inventi_exam/utils/constants/sizes.dart';
import 'package:inventi_exam/utils/constants/text_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: InventiExamColors.brand25,
      appBar: CustomAppBar(
        isLoading: context.watch<HomeCubit>().state is HomeLoading,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: InventiExamSizes.smallSideMargins,
        ),
        child: BlocListener<HomeCubit, HomeState>(
          listener: (context, state) {
            if (state is HomeError) {
              CustomSnackBar.show(context, state.message);
            }
          },
          child: BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              Widget labelWidget;
              Widget quickButton;

              if (state is HomeLoading) {
                labelWidget = const HomeShimmerLabel();
                quickButton = const HomeShimmerQuickButton();
              } else if (state is HomeLoaded) {
                labelWidget = HomeContainerLabel(label: state.randomString);
                quickButton = HomeQuickButton(
                  onPressed: () {
                    context.read<HomeCubit>().getRandomString();
                  },
                );
              } else {
                final labelText = HomeScreenTexts.homeQuickButton;

                labelWidget = HomeContainerLabel(label: labelText);
                quickButton = HomeQuickButton(
                  onPressed: () {
                    context.read<HomeCubit>().getRandomString();
                  },
                );
              }

              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.all(InventiExamSizes.smallSideMargins),
                    decoration: BoxDecoration(
                      color: InventiExamColors.white,
                      borderRadius: BorderRadius.circular(
                          InventiExamSizes.cornerRadiusMd),
                      border: Border.all(
                          color: InventiExamColors.brand100, width: 1),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        labelWidget,
                        const SizedBox(height: InventiExamSizes.largeSpacing),
                        quickButton,
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
