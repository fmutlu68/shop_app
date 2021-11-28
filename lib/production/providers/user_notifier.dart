import 'package:flutter/material.dart';
import 'package:fluttter_shop_app/model/user.dart';

class UserNotifier extends ChangeNotifier {
  User? loginedUser = User(
    name: "Furkan Mutlu",
    email: "frkn4268@gmail.com",
    password: "123456",
    maleOrFemale: true,
    phoneNumber: "01234567890",
    address: "Konya Türkiye",
  );

  void loginUser(User userToLogin) {
    loginedUser = userToLogin;
  }

  void logoutUser() {
    loginedUser = null;
  }
}
