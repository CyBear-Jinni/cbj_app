import 'package:cybear_jinni/domain/core/value_objects.dart';
import 'package:cybear_jinni/domain/scene/i_scene_repository.dart';
import 'package:cybear_jinni/domain/scene/scene.dart';
import 'package:cybear_jinni/domain/scene/scene_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

@LazySingleton(as: ISceneRepository)
class SceneRepository implements ISceneRepository {
  @override
  Future<Either<SceneFailure, Scene>> getScene() async {
    KtList<String> scenesActionsList = [
      'Gut Cilling',
      'Out Side North',
    ].toImmutableList();

    try {
      return right(
        Scene(
          uniqueId: UniqueId(),
          name: 'Go to sleep ----------- 😴',
          scenesActionsToExecute: scenesActionsList,
          backgroundColor: Colors.blue,
          icon: FontAwesomeIcons.school,
        ),
      );
    } catch (e) {
      return left(SceneFailure.unexpected());
    }
  }
}

// static final Map<String, Map<SmartDeviceObject, List<WishEnum>>> _scenesMap =
// <String, Map<SmartDeviceObject, List<WishEnum>>>{
//   'Entrance lights OFF ----------- ⛩️  🛑':
//   <SmartDeviceObject, List<WishEnum>>{
//     room3DevicesList[0]: <WishEnum>[
//       WishEnum.SOff,
//     ],
//     room3DevicesList[3]: <WishEnum>[
//       WishEnum.SOff,
//     ]
//   },
//   'Entrance lights ON  -----------   ⛩️  💡':
//   <SmartDeviceObject, List<WishEnum>>{
//     room3DevicesList[0]: <WishEnum>[
//       WishEnum.SOn,
//     ],
//     room3DevicesList[3]: <WishEnum>[
//       WishEnum.SOn,
//     ]
//   },
//   'Go to sleep ----------- 😴': <SmartDeviceObject, List<WishEnum>>{
//     room3DevicesList[0]: <WishEnum>[
//       WishEnum.SOff,
//     ],
//     room3DevicesList[1]: <WishEnum>[
//       WishEnum.SOff,
//     ],
//     room3DevicesList[2]: <WishEnum>[
//       WishEnum.SOff,
//     ],
//     room3DevicesList[3]: <WishEnum>[
//       WishEnum.SOff,
//     ],
//     room4DevicesList[0]: <WishEnum>[
//       WishEnum.SOff,
//     ]
//   },
//   'Welcome home': <SmartDeviceObject, List<WishEnum>>{},
//   'Going out': <SmartDeviceObject, List<WishEnum>>{},
//   'Going for a walk': <SmartDeviceObject, List<WishEnum>>{},
//   'Workout': <SmartDeviceObject, List<WishEnum>>{},
//   'Date night': <SmartDeviceObject, List<WishEnum>>{},
//   'Party': <SmartDeviceObject, List<WishEnum>>{},
// };
