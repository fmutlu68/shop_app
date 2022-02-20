part of 'package:fluttter_shop_app/view/authenticate/login/view/login_view.dart';

extension LoginViewLoginTabView on _LoginViewState {
  Widget get buildLoginViewTab => Padding(
        padding: context.veryLowSymPadding,
        child: SingleChildScrollView(
          child: buildLoginCard,
        ),
      );
  Widget get buildLoginCard => Observer(builder: (context) {
        print("İsLoading: ${viewModel.isLoading}");
        print("İsSuccess: ${viewModel.isSuccess}");
        return CustomForm(
          buttonText: viewModel.isSuccess == true
              ? "Redirecting..."
              : viewModel.isSuccess == false
                  ? "Unsuccessful"
                  : "Login",
          buttonTextFontWeight:
              viewModel.isSuccess != null ? FontWeight.bold : null,
          buttonColor: viewModel.isSuccess == true
              ? Colors.green
              : viewModel.isSuccess == false
                  ? Colors.red
                  : colorService.getColor(AppColors.SECONDARY.value),
          buttonIsLoading: viewModel.isLoading,
          loadingCircularColor: Colors.blue,
          buttonClicked: viewModel.isSuccess == null
              ? () async => await viewModel.login()
              : () {},
          formFields: [
            getEmailFieldProperties,
            getPasswordFieldProperties,
          ],
        );
      });
  get getEmailFieldProperties => TextFieldProperties(
        decoration: _getInputDecoration,
        isInsideForm: true,
        textController: viewModel.emailController,
        keyboard: TextInputType.emailAddress,
      );
  get getPasswordFieldProperties => TextFieldProperties(
        decoration: _getInputDecoration.copyWith(
          hintText: "Password",
        ),
        obscureText: true,
        maxLines: 1,
        isInsideForm: true,
        textController: viewModel.passwordController,
        keyboard: TextInputType.visiblePassword,
      );
  Widget get buildPasswordField => CustomTextField(
        textFieldProperties: getPasswordFieldProperties,
      );
  InputDecoration get _getInputDecoration => InputDecoration(
        hintText: "Email",
        // hintStyle: _textStyle,
        enabledBorder: _getInputBorder,
        focusedBorder: _getInputBorder,
      );
  get _getInputBorder => OutlineInputBorder(
        borderSide: BorderSide(
          color: colorService.getColor(AppColors.SECONDARY.value),
        ),
      );
}
