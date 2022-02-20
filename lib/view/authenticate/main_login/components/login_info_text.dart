part of 'package:fluttter_shop_app/view/authenticate/main_login/view/login_view.dart';

extension LoginInfoText on _MainLoginViewState {
  Widget get buildInfoText => Text(
        "Fruit Market",
        style: context.textTheme.headline3!.copyWith(
          color: colorService.getColor(AppColors.PRIMARY.value),
          fontWeight: FontWeight.bold,
        ),
      );
  Widget get buildORText => Text(
        "OR",
        style: context.textTheme.headline6?.copyWith(
          fontWeight: FontWeight.bold,
        ),
      );
}
