import 'package:flutter/material.dart';
import '../../../../core/base/model/base_view_model.dart';
import '../../../../core/start/navigation/routes/navigation_route.dart';
import '../../../../production/enum/preferecnces_keys_enum.dart';
import '../model/onboard_model.dart';
import 'package:mobx/mobx.dart';
part 'onboard_view_model.g.dart';

class OnboardViewModel = _OnboardViewModelBase with _$OnboardViewModel;

abstract class _OnboardViewModelBase with Store, BaseViewModel {
  void setContext(BuildContext ctx) => this.context = ctx;

  void init() {}

  List<OnboardModel> onboardModels = [
    OnboardModel(
      title: "E Shopping",
      subtitle: "Explore top organic fruits & grab them",
      imagePath: "assets/images/png/onboard_image_1.png",
    ),
    OnboardModel(
      title: "E Shopping 2",
      subtitle: "Explore top organic fruits & grab them",
      imagePath: "assets/images/png/Group 10.png",
    ),
    OnboardModel(
      title: "E Shopping 3",
      subtitle: "Explore top organic fruits & grab them",
      imagePath: "assets/images/png/main_login_screen_img.png",
    ),
  ];

  @observable
  int index = 0;

  @action
  void setIndex(int newIndex) => index = newIndex;

  @computed
  OnboardModel get onboardModel => onboardModels[index];

  Future<void> navigateToLogin() async {
    await cacheManager.setBool(PreferencesKeys.ONBOARD_SCREEN_SHOWED.key, true);
    navigationService.navigatePath(
        content: NavigationRoute.navigateToMainLogin());
  }
}
