import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../../../core/base/state/base_view_state.dart';
import '../../../../core/base/widget/base_view.dart';
import '../../../../core/components/button/impl/text_button.dart';
import '../../../../core/components/list_view/indicator_list_view.dart';
import '../../../../core/entities/components/button/style_types/text_button_style.dart';
import '../../../../core/extensions/dynamic_size_extension.dart';
import '../../../../core/extensions/spacer_extension.dart';
import '../../../../core/extensions/theme_extension.dart';
import '../../../../production/enum/app_colors_enum.dart';
import '../view_model/onboard_view_model.dart';

part '../components/onboard_image_view.dart';
part '../components/onboard_list_indicator.dart';
part '../components/onboard_next_button.dart';

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
        this.viewModel = model;
        this.viewModel.setContext(context);
        this.viewModel.init();
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
          buildPageView,
          buildIndicator,
          buildNextButton,
        ],
      );

  Widget get buildPageView => Container(
        height: calculateDynamicHeight(53),
        child: PageView.builder(
          itemBuilder: buildItem,
          itemCount: viewModel.onboardModels.length,
          onPageChanged: (page) {
            viewModel.setIndex(page);
          },
        ),
      );

  Widget buildItem(BuildContext context, int index) {
    return Column(
      children: [
        buildOnboardImage,
        context.veryLowHeightSpacer,
        buildOnboardTitle,
        context.veryLowHeightSpacer,
        buildOnboardSubtitle,
      ],
    );
  }

  get buildOnboardImage => Observer(
        builder: (_) {
          return buildImage(
            imagePath: viewModel.onboardModel.imagePath,
          );
        },
      );
  get buildOnboardTitle => Observer(
        builder: (_) => Text(
          viewModel.onboardModel.title,
          style: context.textTheme.headline5!.copyWith(
              fontWeight: FontWeight.bold, color: context.colors.background),
        ),
      );

  get buildOnboardSubtitle => Observer(
        builder: (_) => Text(
          viewModel.onboardModel.subtitle,
          style: context.textTheme.subtitle2!.copyWith(
            fontWeight: FontWeight.w200,
          ),
        ),
      );
}
