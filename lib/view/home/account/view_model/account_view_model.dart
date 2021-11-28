import 'package:flutter/material.dart';
import 'package:fluttter_shop_app/core/base/model/base_view_model.dart';
import 'package:fluttter_shop_app/production/providers/user_notifier.dart';
import 'package:fluttter_shop_app/view/home/account/model/account_view_choice_item.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
part 'account_view_model.g.dart';

class AccountViewModel = _AccountViewModelBase with _$AccountViewModel;

abstract class _AccountViewModelBase with Store, BaseViewModel {
  late UserNotifier userProvider;
  late List<AccountViewChoiceItem> items;
  void setContext(BuildContext ctx) => this.context = ctx;

  void init() {
    items = [
      AccountViewChoiceItem(Icons.shopping_bag, "My Orders"),
      AccountViewChoiceItem(Icons.favorite, "Favorites"),
      AccountViewChoiceItem(Icons.settings, "Settings"),
      AccountViewChoiceItem(Icons.shopping_cart, "My Cart"),
      AccountViewChoiceItem(Icons.rate_review, "Rate Us"),
      AccountViewChoiceItem(Icons.share, "Refer a Friend"),
      AccountViewChoiceItem(Icons.help, "Help"),
      AccountViewChoiceItem(Icons.logout, "Log Out"),
    ];
    userProvider = context!.watch<UserNotifier>();
  }
}
