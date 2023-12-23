import 'package:cybear_jinni/infrastructure/core/logger.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

part 'package:cybear_jinni/infrastructure/notifications.dart';

abstract interface class INotificationService {
  static INotificationService? _instance;

  static INotificationService get instance {
    return _instance ??= _AppNotificationService();
  }

  Future<void> asyncConstructor();
}
