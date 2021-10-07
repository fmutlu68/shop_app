import 'package:flutter/material.dart';
import 'package:fluttter_shop_app/core/base/state/base_view_state.dart';
import 'package:fluttter_shop_app/core/base/widget/base_view.dart';
import 'package:fluttter_shop_app/core/extensions/theme_extension.dart';
import 'package:fluttter_shop_app/view/authenticate/onboard/view_model/onboard_view_model.dart';

class OnboardView extends StatefulWidget {
  OnboardView({Key? key}) : super(key: key);

  @override
  _OnboardViewState createState() => _OnboardViewState();
}

class _OnboardViewState extends BaseViewState<OnboardView> {
  late OnboardViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return BaseView<OnboardViewModel>(
      viewModel: OnboardViewModel(),
      onModelReady: (model) {
        viewModel = model;
        viewModel.setContext(context);
        viewModel.init();
      },
      onPageBuilder: (context, model) => Scaffold(
        appBar: appBar,
        body: buildContent,
      ),
      onDispose: () {},
    );
  }

  get appBar => AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          buildSkipButton,
        ],
      );

  TextButton get buildSkipButton {
    return TextButton(
      onPressed: () {},
      child: Text(
        "Skip",
        style: context.textTheme.bodyText1!.copyWith(color: Colors.black45),
      ),
    );
  }

  Widget get buildContent => Column(
        children: [
          buildOnboardImage,
          buildOnboardTitle,
          buildOnboardSubtitle,
          buildIndicatorList,
          buildNextButton,
        ],
      );

  get buildOnboardImage => null;

  get buildOnboardTitle => null;

  get buildOnboardSubtitle => null;

  get buildIndicatorList => null;

  get buildNextButton => null;
}
