import 'package:permission_handler/permission_handler.dart';

import 'IPermissionService.dart';

class PermissionManager implements IPermissionService {
  static PermissionManager? _instance;
  static PermissionManager get instance {
    if (_instance == null) _instance = PermissionManager._init();
    return _instance!;
  }

  PermissionManager._init();

  @override
  Future<bool> checkPermissionIsGranted(
      Permission permission, bool showRequestIfUserNoGranted) async {
    bool permissionStatus = await permission
        .isGranted; // Granted => OK, Denied => NO, Restiricted => No OK and No NO, Permantly Denied => NO NO NO,
    if (permissionStatus != true && showRequestIfUserNoGranted) {
      bool permissionRequestStatus = (await permission.request()).isGranted;
      return permissionRequestStatus;
    }
    return permissionStatus;
  }

  @override
  Future<bool> requestPermission(Permission permission) async {
    if (await checkPermissionIsGranted(permission, false)) {
      return true;
    }
    PermissionStatus permissionRequestResult = await permission.status;
    if (permissionRequestResult == PermissionStatus.permanentlyDenied) {
      await openAppSettings();
    } else {
      permissionRequestResult = await permission.request();
    }
    return permissionRequestResult == PermissionStatus.granted;
  }
}
