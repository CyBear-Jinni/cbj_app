import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/integrations_controller.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:cybearjinni/presentation/core/routes/app_router.gr.dart';
import 'package:flutter/material.dart';

class ScenesInFoldersL extends StatefulWidget {
  @override
  State<ScenesInFoldersL> createState() => _ScenesInFoldersLState();
}

class _ScenesInFoldersLState extends State<ScenesInFoldersL> {
  List<SceneCbjEntity> allScenes = <SceneCbjEntity>[];
  List<AreaEntity>? allAreasWithScenes;

  @override
  void initState() {
    super.initState();
    _initialized();
  }

  Future<void> _initialized() async {
    final List<AreaEntity> temp = [];
    final Set<SceneCbjEntity> eitherAllScenes =
        await ISceneCbjRepository.instance.getAllScenesAsList();
    allScenes.addAll(eitherAllScenes);

    if (allScenes.isEmpty) {
      return;
    }

    // final dartz.Either<AreaFailure, KtList<AreaEntity>> eitherAllAreas =
    //     IAreaRepository.instance.getAllAreas();
    // eitherAllAreas.fold((l) => null, (KtList<AreaEntity> r) {
    //   for (final AreaEntity rE in r.asList()) {
    //     if (rE.areaScenesId.getOrCrash().isNotEmpty) {
    //       temp.add(rE);
    //     }
    //   }
    // });

    setState(() {
      allAreasWithScenes = temp;
    });
  }

  Widget scenesFoldersWidget(
    BuildContext context,
    AreaEntity folderOfScenes,
  ) {
    const double borderRadius = 5;
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          image: NetworkImage(
            folderOfScenes.background.getOrCrash(),
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(borderRadius)),
        border: Border.all(
          color: Colors.black.withOpacity(0.7),
          width: 0.4,
        ),
      ),
      margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
      child: TextButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.zero,
          ),
        ),
        onPressed: () {
          context.router.push(
            ScenesRoute(
              folderOfScenes: folderOfScenes,
            ),
          );
        },
        child: Column(
          children: [
            const SizedBox(
              height: 130,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.7),
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(borderRadius),
                  bottomLeft: Radius.circular(borderRadius),
                ),
              ),
              child: TextAtom(
                folderOfScenes.cbjEntityName.getOrCrash(),
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyLarge!.color,
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (allAreasWithScenes == null) {
      return const Center(
        child: TextAtom(
          'In development',
          style: TextStyle(color: Colors.purple),
        ),
      );
    }

    if (allAreasWithScenes!.isEmpty) {
      return const Center(
        child: TextAtom(
          'You can add automations in the plus button',
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      );
    }

    return ListView.builder(
      reverse: true,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        final AreaEntity sceneFolder = allAreasWithScenes![index];
        return scenesFoldersWidget(
          context,
          sceneFolder,
        );
      },
      itemCount: allAreasWithScenes!.length,
    );
  }
}
