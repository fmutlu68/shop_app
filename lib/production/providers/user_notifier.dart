import 'package:flutter/material.dart';
import '../../model/user.dart';

class UserNotifier extends ChangeNotifier {
  User? loginedUser = User(
    name: "Furkan Mutlu",
    email: "frkn4268@gmail.com",
    password: "123456",
    maleOrFemale: true,
    phoneNumber: "01234567890",
    address: "Konya Türkiye",
  );

  void setUser(User userToLogin) {
    loginedUser = userToLogin;
  }

  void logoutUser() {
    loginedUser = null;
  }
}
