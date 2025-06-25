import 'package:flutter/material.dart';
<<<<<<< HEAD
=======
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:partix/core/extension/navigation.dart';
import 'package:partix/core/text/app_text.dart';
import 'package:partix/core/text/text_styles.dart';
import 'package:partix/core/widget/button/custom_text_button.dart';
import 'package:partix/features/auth/presentation/pages/login_page.dart';
import 'package:partix/features/home/presentation/pages/home_page.dart';
import 'package:partix/features/onboarding/data/models/onboarding_model.dart';
import 'package:partix/features/onboarding/presentation/bloc/onboarding_bloc.dart';
import 'package:partix/features/onboarding/presentation/widget/custom_smooth_page_indicator.dart';
>>>>>>> 7e586c6f35f805f76aa6314b480c890d2c6b2356

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Scaffold(
      appBar: AppBar(
        title: const Text('Onboarding'),
      ),
      body: Center(
        child: Text('Welcome to onboarding page!'),
=======
    return BlocProvider(
      create: (context) => OnboardingBloc(),
      child: BlocConsumer<OnboardingBloc, OnboardingState>(
        listener: (context, state) {
          if (state is OnboardingCompleted) {
            context.go('/lgoin');
          }
        },
        builder: (context, state) {
          final bloc = context.read<OnboardingBloc>();
          final isLastPage = bloc.currentPage == onboardingData.length - 1;
          final isFirstPage = bloc.currentPage == 0;

          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              child: PageView.builder(
                controller: bloc.controller,
                onPageChanged: (index) {
                  bloc.add(UpdateCurrentPageEvent(pageIndex: index));
                },
                itemCount: onboardingData.length,
                itemBuilder: (BuildContext context, int index) {
                  return SafeArea(
                    child: Column(
                      children: [
                        SizedBox(height: 28),
                        Align(
                          alignment: Alignment.centerRight,
                          child: CustomTextButton(
                            text: AppText.skip,
                            onPressed: () {
                              context.go('/login');
                            },
                          ),
                        ),
                        SizedBox(height: 146),
                        Image.asset(onboardingData[index].image),
                        SizedBox(height: 28),
                        Text(
                          onboardingData[index].title,
                          style: TextStyles.sepro40028,
                        ),
                        SizedBox(height: 8),
                        Text(
                          textAlign: TextAlign.center,
                          onboardingData[index].subTitle,
                          style: TextStyles.sepro40015,
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            if (!isFirstPage)
                              CustomTextButton(
                                onPressed: () {
                                  bloc.add(PreviousPageEvent());
                                },
                                text: AppText.back,
                              ),

                            Spacer(),

                            CustomSmoothPageIndicator(
                              controller: bloc.controller,
                            ),

                            SizedBox(width: 96),

                            CustomTextButton(
                              onPressed: () {
                                isLastPage
                                    ? bloc.add(CompleteOnboardingEvent())
                                    : bloc.add(NextPageEvent());
                              },
                              text: AppText.next,
                            ),
                          ],
                        ),
                        SizedBox(height: 74),
                      ],
                    ),
                  );
                },
              ),
            ),
          );
        },
>>>>>>> 7e586c6f35f805f76aa6314b480c890d2c6b2356
      ),
    );
  }
}
