import 'dart:ui';

import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../../../core/base/state/base_view_state.dart';
import '../../../../core/base/widget/base_view.dart';
import '../../../../core/components/fields/custom_text_field.dart';
import '../../../../core/components/form/custom_form.dart';
import '../../../../core/entities/components/fields/text_field_properties.dart';
import '../../../../core/extensions/padding_extension.dart';
import '../../../../core/extensions/theme_extension.dart';
import '../../../../production/enum/app_colors_enum.dart';
import '../view_model/login_view_model.dart';

part '../components/login_view_appbar.dart';
part '../components/login_view_login_tab_view.dart';
part '../components/login_view_register_tab_view..dart';

class LoginView extends StatefulWidget {
  LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends BaseViewState<LoginView>
    with SingleTickerProviderStateMixin {
  late LoginViewModel viewModel;
  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
      viewModel: LoginViewModel(),
      onModelReady: (model) {
        viewModel = model;
        viewModel.setContext(context);
        viewModel.init();
        viewModel.initController(this);
      },
      onPageBuilder: (context, model) => DefaultTabController(
        child: Scaffold(
          appBar: buildAppBar,
          backgroundColor: colorService.getColor(AppColors.PRIMARY.value),
          body: Observer(
            builder: (_) => PageTransitionSwitcher(
              transitionBuilder: (child, firstAnimation, secondaryAnimation) {
                return FadeThroughTransition(
                  animation: firstAnimation,
                  secondaryAnimation: secondaryAnimation,
                  child: child,
                  fillColor: colorService.getColor(AppColors.PRIMARY.value),
                  // transitionType: SharedAxisTransitionType.horizontal,
                );
              },
              child: viewModel.index == 0
                  ? buildLoginViewTab
                  : buildRegisterViewTab,
              duration: Duration(seconds: 15),
            ),
          ),
        ),
        length: 2,
        initialIndex: 0,
      ),
      onDispose: () {},
    );
  }
}
