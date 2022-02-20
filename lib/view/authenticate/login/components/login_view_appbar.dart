part of 'package:fluttter_shop_app/view/authenticate/login/view/login_view.dart';

extension LoginViewAppBar on _LoginViewState {
  AppBar get buildAppBar => AppBar(
        bottom: buildTabBar,
        backgroundColor: colorService.getColor(AppColors.SECONDARY.value),
      );

  TabBar get buildTabBar {
    return TabBar(
      tabs: [
        Tab(
          text: "Login",
        ),
        Tab(
          text: "Register",
        ),
      ],
      labelStyle: context.textTheme.subtitle1?.copyWith(
        fontWeight: FontWeight.bold,
      ),
      controller: viewModel.tabController,
    );
  }
}
