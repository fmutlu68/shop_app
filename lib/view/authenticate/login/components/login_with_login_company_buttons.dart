part of 'package:fluttter_shop_app/view/authenticate/login/view/login_view.dart';

extension LoginWithLoginCompanyButtons on _LoginViewState {
  Widget get buildLoginWithGoogleButton => CompanyButton(
        company: Companies.GOOGLE,
        onTap: () {},
      );
  Widget get buildLoginWithFacebookButton => CompanyButton(
        company: Companies.FACEBOOK,
        onTap: () {},
      );

  Row get buildLoginButtonsRow => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [buildLoginWithGoogleButton, buildLoginWithFacebookButton],
      );
}
