import 'package:flutter/material.dart';
import 'package:fluttter_shop_app/core/base/state/base_view_state.dart';
import 'package:fluttter_shop_app/core/base/widget/base_view.dart';
import 'package:fluttter_shop_app/core/extensions/border_radius_extension.dart';
import 'package:fluttter_shop_app/core/extensions/dynamic_size_extension.dart';
import 'package:fluttter_shop_app/core/extensions/padding_extension.dart';
import 'package:fluttter_shop_app/core/extensions/spacer_extension.dart';
import 'package:fluttter_shop_app/core/extensions/theme_extension.dart';
import 'package:fluttter_shop_app/production/enum/app_colors_enum.dart';
import 'package:fluttter_shop_app/production/enum/companies_enum.dart';
import 'package:fluttter_shop_app/production/widget/buttons/company_button.dart';
import 'package:fluttter_shop_app/view/authenticate/login/view_model/login_view_model.dart';

part '../components/login_image_view.dart';
part '../components/login_info_text.dart';
part '../components/login_enter_number_button.dart';
part '../components/login_with_login_company_buttons.dart';

class LoginView extends StatefulWidget {
  LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends BaseViewState<LoginView> {
  late LoginViewModel viewModel;
  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
      viewModel: LoginViewModel(),
      onModelReady: (model) {
        viewModel = model;
        viewModel.setContext(context);
        viewModel.init();
      },
      onPageBuilder: (context, model) => Scaffold(
        body: Padding(
          padding: context.lowHeightPadding,
          child: Column(
            children: [
              buildLoginImage,
              buildInfoText,
              buildLoginButton,
              buildORText,
              context.veryLowHeightSpacer,
              buildLoginButtonsRow,
            ],
          ),
        ),
      ),
      onDispose: () {},
    );
  }
}
