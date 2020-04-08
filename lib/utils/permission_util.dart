import 'package:permission_handler/permission_handler.dart';

class PermissionUtil {
  static getPermission(List<Permission> permissions) async {
    print(permissions);
    Map<Permission, PermissionStatus> statuses = await permissions.request();
    print(statuses);
    return statuses;
  }
}
