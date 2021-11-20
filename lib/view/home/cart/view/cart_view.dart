import 'package:flutter/material.dart';
import 'package:fluttter_shop_app/core/base/state/base_view_state.dart';
import 'package:fluttter_shop_app/core/base/widget/base_view.dart';
import 'package:fluttter_shop_app/view/home/cart/view_model/cart_view_model.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  _CartViewState createState() => _CartViewState();
}

class _CartViewState extends BaseViewState<CartView> {
  late CartViewModel viewModel;
  @override
  Widget build(BuildContext context) {
    return BaseView<CartViewModel>(
      viewModel: CartViewModel(),
      onModelReady: (model) {
        viewModel = model;
        viewModel.setContext(context);
        viewModel.init();
      },
      onPageBuilder: (context, model) => Scaffold(),
      onDispose: () {},
    );
  }
}
