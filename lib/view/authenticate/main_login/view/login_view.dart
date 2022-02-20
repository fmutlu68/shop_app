import 'package:flutter/material.dart';
import '../../../../core/base/state/base_view_state.dart';
import '../../../../core/base/widget/base_view.dart';
import '../../../../core/components/button/impl/text_button.dart';
import '../../../../core/entities/components/button/style_types/text_button_style.dart';
import '../../../../core/extensions/border_radius_extension.dart';
import '../../../../core/extensions/dynamic_size_extension.dart';
import '../../../../core/extensions/navigation_extension.dart';
import '../../../../core/extensions/padding_extension.dart';
import '../../../../core/extensions/spacer_extension.dart';
import '../../../../core/extensions/theme_extension.dart';
import '../../../../core/start/navigation/routes/navigation_route.dart';
import '../../../../production/enum/app_colors_enum.dart';
import '../../../../production/enum/companies_enum.dart';
import '../../../../production/widget/buttons/company_button.dart';
import '../view_model/login_view_model.dart';

part '../components/login_image_view.dart';
part '../components/login_info_text.dart';
part '../components/login_view_login_with_email_button.dart';
part '../components/login_with_login_company_buttons.dart';

class MainLoginView extends StatefulWidget {
  MainLoginView({Key? key}) : super(key: key);

  @override
  _MainLoginViewState createState() => _MainLoginViewState();
}

class _MainLoginViewState extends BaseViewState<MainLoginView> {
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
              context.veryLowHeightSpacer,
              buildLoginButton,
              context.veryLowHeightSpacer,
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
