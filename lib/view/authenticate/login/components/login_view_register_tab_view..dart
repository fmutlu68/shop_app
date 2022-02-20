part of 'package:fluttter_shop_app/view/authenticate/login/view/login_view.dart';

extension LoginViewRegisterTabView on _LoginViewState {
  Widget get buildRegisterViewTab => Padding(
        padding: context.veryLowSymPadding,
        child: SingleChildScrollView(
          child: buildRegisterCard,
        ),
      );

  get buildRegisterCard => CustomForm(
        buttonClicked: () {},
        buttonText: "Register",
        buttonColor: colorService.getColor(AppColors.SECONDARY.value),
        formFields: [
          TextFieldProperties(
            decoration: _getInputDecoration.copyWith(hintText: "Name"),
          ),
          TextFieldProperties(
            decoration: _getInputDecoration.copyWith(hintText: "Surname"),
          ),
          TextFieldProperties(
            decoration: _getInputDecoration.copyWith(hintText: "Email"),
          ),
          TextFieldProperties(
            decoration: _getInputDecoration.copyWith(hintText: "Password"),
            obscureText: true,
            maxLines: 1,
            isInsideForm: true,
            textController: viewModel.passwordController,
            keyboard: TextInputType.visiblePassword,
          ),
        ],
      );
}
