part of 'package:fluttter_shop_app/view/authenticate/login/view/login_view.dart';

extension LoginEnterNumberButton on _LoginViewState {
  Widget get buildLoginButton => Padding(
        padding: context.veryLowWidthPadding,
        child: Container(
          child: Text("Enter Your Mobile Number"),
          margin: context.lowHeightPadding,
          padding: EdgeInsets.symmetric(
            horizontal: context.normalWidth,
            vertical: context.veryLowHeight,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              width: 0.8,
            ),
            borderRadius: context.veryLowRadius,
          ),
          alignment: Alignment.centerLeft,
        ),
      );
}
