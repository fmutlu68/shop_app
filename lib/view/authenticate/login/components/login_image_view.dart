part of 'package:fluttter_shop_app/view/authenticate/login/view/login_view.dart';

extension LoginImageView on _LoginViewState {
  Widget get buildLoginImage => Container(
        height: calculateDynamicHeight(35),
        width: double.infinity,
        child: Image.asset(
          "assets/images/png/main_login_screen_img.png",
        ),
      );
}
