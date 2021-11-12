part of '../view/onboard_view.dart';

extension OnboardImageView on _OnboardViewState {
  Widget buildImage({required String imagePath}) => Container(
        height: calculateDynamicHeight(38),
        width: double.infinity,
        child: Image.asset(
          imagePath,
          color: Colors.transparent,
          colorBlendMode: BlendMode.darken,
        ),
      );
}
