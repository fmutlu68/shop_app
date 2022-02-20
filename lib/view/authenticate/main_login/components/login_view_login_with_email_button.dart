part of 'package:fluttter_shop_app/view/authenticate/main_login/view/login_view.dart';

extension LoginViewLoginWithEmailButton on _MainLoginViewState {
  Widget get buildLoginButton => CustomTextButton(
        text: "Log In With Email",
        onTap: () => context.navigate(NavigationRoute.navigateToLogin()),
        style: TextButtonStyle(
          padding: EdgeInsets.symmetric(
            horizontal: context.lowWidth,
            vertical: context.veryLowHeight,
          ),
          backgroundColor:
              colorService.getColor(AppColors.PRIMARY.value).withOpacity(0.85),
          border: Border.all(width: 0.3, color: context.colors.background),
          radius: context.veryLowRadius,
        ),
      );
}
