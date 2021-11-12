part of '../view/onboard_view.dart';

extension OnboardListIndicator on _OnboardViewState {
  Widget get buildIndicator => Observer(
        builder: (_) => Container(
          width: double.infinity,
          height: context.lowHeight,
          alignment: Alignment.center,
          child: IndicatorListView(
            currentIndex: viewModel.index,
            indicatorCount: 3,
            selectedIndicatorColor:
                colorService.getColor(AppColors.PRIMARY.value),
            radius: context.calculateDynamicWidth(1.3),
          ),
        ),
      );
}
