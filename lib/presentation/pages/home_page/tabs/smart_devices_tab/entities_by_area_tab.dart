import 'dart:async';
import 'dart:collection';

import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/integrations_controller.dart';
import 'package:cybearjinni/domain/connections_service.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:cybearjinni/presentation/core/routes/app_router.gr.dart';
import 'package:cybearjinni/presentation/core/snack_bar_service.dart';
import 'package:cybearjinni/presentation/molecules/molecules.dart';
import 'package:cybearjinni/presentation/organisms/organisms.dart';
import 'package:cybearjinni/presentation/pages/home_page/tabs/smart_devices_tab/areas_widgets/areas_list_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EntitiesByAreaTab extends StatefulWidget {
  @override
  State<EntitiesByAreaTab> createState() => _EntitiesByAreaTabState();
}

class _EntitiesByAreaTabState extends State<EntitiesByAreaTab> {
  HashMap<String, AreaEntity> areas = HashMap();
  HashMap<String, DeviceEntityBase> entities = HashMap();

  @override
  void initState() {
    super.initState();

    _watchEntities();
    _watchAreas();
  }

  @override
  void dispose() {
    entitiesStream?.cancel();
    areasStream?.cancel();
    super.dispose();
  }

  StreamSubscription<MapEntry<String, DeviceEntityBase>>? entitiesStream;
  StreamSubscription<MapEntry<String, AreaEntity>>? areasStream;

  Future _watchAreas() async {
    await areasStream?.cancel();

    areasStream = ConnectionsService.instance.watchAreas().listen((areaEntery) {
      if (!mounted) {
        return;
      }

      setState(() {
        areas.addEntries([areaEntery]);
      });
    });
    _initialzeAreas();
  }

  Future _initialzeAreas() async {
    final HashMap<String, AreaEntity> areasTemp =
        await ConnectionsService.instance.getAllAreas;
    setState(() {
      areas.addAll(areasTemp);
    });
  }

  Future _watchEntities() async {
    await entitiesStream?.cancel();

    entitiesStream = ConnectionsService.instance
        .watchEntities()
        .listen((MapEntry<String, DeviceEntityBase> entityEntery) {
      if (!mounted ||
          supportedDeviceType(entityEntery.value.entityTypes.type)) {
        return;
      }

      setState(() {
        entities.addEntries([entityEntery]);
      });
    });
    _initialzeEntities();
  }

  Future _initialzeEntities() async {
    final HashMap<String, DeviceEntityBase> entitiesTemp =
        await ConnectionsService.instance.getAllEntities;

    setState(() {
      entities.addAll(entitiesTemp);
    });
  }

  HashMap<String, DeviceEntityBase> getSupportedEnities(
    HashMap<String, DeviceEntityBase> entities,
  ) {
    entities.removeWhere(
      (key, value) => supportedDeviceType(value.entityTypes.type),
    );
    return entities;
  }

  bool supportedDeviceType(EntityTypes type) {
    return type == EntityTypes.smartTypeNotSupported ||
        type == EntityTypes.emptyEntity;
  }

  void userCogFunction(BuildContext context) {
    showAdaptiveActionSheet(
      context: context,
      actions: <BottomSheetAction>[
        BottomSheetAction(
          title: const TextAtom(
            '⚙️ Change Area For Entities',
            style: TextStyle(color: Colors.blueGrey, fontSize: 23),
          ),
          onPressed: (_) async {
            await context.router.push(const ChangeAreaForDevicesRoute());
            _initialzeAreas();
          },
        ),
      ],
    );
  }

  Widget tabFrame({required Widget child}) {
    return Column(
      children: <Widget>[
        TopBarMolecule(
          pageName: 'Entities',
          rightIcon: Icons.more_vert,
          rightIconFunction: userCogFunction,
          leftIcon: FontAwesomeIcons.solidLightbulb,
          leftIconFunction: (BuildContext context) {},
          // rightSecondIcon: FontAwesomeIcons.magnifyingGlass,
          // rightSecondFunction: rightSecondFunction,
        ),
        Expanded(
          child: child,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    if (entities.isEmpty || areas.isEmpty) {
      return tabFrame(
        child: GestureDetector(
          onTap: () {
            SnackBarService().show(
              context,
              'Add new device by pressing the plus button',
            );
          },
          child: EmptyOpenAreaOrganism(),
        ),
      );
    }

    final ThemeData themeData = Theme.of(context);
    final TextTheme textTheme = themeData.textTheme;
    final ColorScheme colorScheme = themeData.colorScheme;

    return tabFrame(
      child: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [
            TextAtom(
              'Areas',
              style:
                  textTheme.headlineLarge!.copyWith(color: colorScheme.primary),
            ),
            const SeparatorAtom(variant: SeparatorVariant.farAppart),
            MarginedExpandedAtom(
              child: AreasListViewWidget(
                entities: entities,
                areas: areas,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
