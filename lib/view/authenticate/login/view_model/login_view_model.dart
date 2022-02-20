import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttter_shop_app/core/entities/result/data_result.dart';
import 'package:fluttter_shop_app/core/start/navigation/routes/navigation_route.dart';
import 'package:fluttter_shop_app/core/start/navigation/service/navigation_parameters.dart';
import 'package:fluttter_shop_app/model/user.dart';
import 'package:fluttter_shop_app/production/model/auth/user_to_login.dart';
import 'package:fluttter_shop_app/production/providers/user_notifier.dart';
import 'package:fluttter_shop_app/view/authenticate/login/service/login_service.dart';
import 'package:provider/provider.dart';
import '../../../../core/base/model/base_view_model.dart';
import 'package:mobx/mobx.dart';
part 'login_view_model.g.dart';

class LoginViewModel = _LoginViewModelBase with _$LoginViewModel;

abstract class _LoginViewModelBase with Store, BaseViewModel {
  late TabController tabController;
  late ILoginService loginService;
  late UserNotifier userProvider;
  late TextEditingController emailController, passwordController;

  @observable
  bool isLoading = false;

  @observable
  Timer? successTimer;

  @observable
  bool? isSuccess;
  void setContext(BuildContext ctx) => this.context = ctx;

  @action
  void initController(TickerProvider provider) {
    tabController = TabController(length: 2, vsync: provider);
    tabController.addListener(() {
      if (index != tabController.index) setIndex(tabController.index);
    });
  }

  @action
  void setLoading(bool loading) => isLoading = loading;

  @action
  void setSuccess(bool? success) => isSuccess = success;

  @observable
  int index = 0;

  @action
  void setIndex(int newIndex) => index = newIndex;

  void init() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    loginService = LoginService(networkManager);
    userProvider = context!.watch<UserNotifier>();
  }

  void onDispose() {}

  Future<void> login() async {
    FocusScope.of(context!).unfocus();
    setLoading(true);
    DataResult<User?>? user = await loginService.loginUser(UserToLogin(
      email: emailController.text,
      password: passwordController.text,
    ));
    if (user?.success == true) userProvider.setUser(user!.data!);
    setLoading(false);
    startTimer(user!);
  }

  void startTimer(DataResult result) {
    setSuccess(result.success!);
    successTimer = Timer(Duration(seconds: 2), timerFunction);
  }

  @action
  void timerFunction() {
    bool oldSuccess = isSuccess!;
    isSuccess = null;
    print(isSuccess);
    successTimer?.cancel();
    if (oldSuccess) {
      navigationService.navigatePath(
        content: NavigationRoute.navigateToHome(),
        parameters: NavigationParameters(removeUntil: true),
      );
    }
  }
}
