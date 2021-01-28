import 'package:auto_route/auto_route.dart';

/// For easy transfer of data into WhereToLogin page
class WhereToLoginObjectToTransfer {
  /// Constrictor for you
  WhereToLoginObjectToTransfer(
      {@required this.userEmail, @required this.userPassword});

  /// Stores user password
  String userPassword;

  /// Stores user email
  String userEmail;
}
