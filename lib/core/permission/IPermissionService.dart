import 'package:permission_handler/permission_handler.dart';

abstract class IPermissionService {
  Future<bool> checkPermissionIsGranted(
      Permission permission, bool showRequestIfUserNoGranted);
  Future<bool> requestPermission(Permission permission);
}
