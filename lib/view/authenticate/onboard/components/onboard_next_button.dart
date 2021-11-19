part of '../view/onboard_view.dart';

extension OnboardNextButton on _OnboardViewState {
  get buildNextButton => Observer(
        builder: (_) => CustomTextButton(
          onTap: () async {
            if (viewModel.index < 2) {
              viewModel.setIndex(viewModel.index + 1);
            } else {
              await viewModel.navigateToLogin();
            }
          },
          text: viewModel.index == 2 ? "Get Started" : "Next",
          style: TextButtonStyle(
            padding: EdgeInsets.symmetric(
              horizontal: viewModel.index == 2
                  ? calculateDynamicWidth(8.5)
                  : context.normalWidth,
              vertical: context.veryLowHeight,
            ),
            backgroundColor: colorService.getColor(
              AppColors.PRIMARY.value,
            ),
            labelStyle: context.textTheme.subtitle1!
                .copyWith(color: context.theme.scaffoldBackgroundColor),
          ),
        ),
      );
}
