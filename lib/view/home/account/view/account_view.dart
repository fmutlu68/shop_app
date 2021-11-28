import 'package:flutter/material.dart';
import 'package:fluttter_shop_app/core/base/state/base_view_state.dart';
import 'package:fluttter_shop_app/core/base/widget/base_view.dart';
import 'package:fluttter_shop_app/core/extensions/dynamic_size_extension.dart';
import 'package:fluttter_shop_app/core/extensions/theme_extension.dart';
import 'package:fluttter_shop_app/production/enum/app_colors_enum.dart';
import 'package:fluttter_shop_app/view/home/account/model/account_view_choice_item.dart';
import 'package:fluttter_shop_app/view/home/account/view_model/account_view_model.dart';

part '../components/account_view_user_info_app_bar.dart';
part '../components/account_view_choice_tile.dart';

class AccountView extends StatefulWidget {
  AccountView({Key? key}) : super(key: key);

  @override
  _AccountViewState createState() => _AccountViewState();
}

class _AccountViewState extends BaseViewState<AccountView> {
  late AccountViewModel viewModel;
  @override
  Widget build(BuildContext context) {
    return BaseView<AccountViewModel>(
      viewModel: AccountViewModel(),
      onModelReady: (model) {
        viewModel = model;
        viewModel.setContext(context);
        viewModel.init();
      },
      onPageBuilder: (context, model) => Scaffold(
        appBar: buildUserInfoAppBar,
        body: ListView(
          children: buildChocieTiles,
        ),
      ),
      onDispose: () {},
    );
  }
}
