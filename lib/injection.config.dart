// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'application/add_user_to_home/add_user_to_home_bloc.dart';
import 'infrastructure/add_user_to_home/add_user_to_home_reposityory.dart';
import 'application/auth/auth_bloc.dart';
import 'application/blinds/blinds_actor/blinds_actor_bloc.dart';
import 'application/blinds/blinds_watcher/blinds_watcher_bloc.dart';
import 'application/cbj_comp/cbj_comp_bloc.dart';
import 'infrastructure/cbj_comp/cbj_comp_repository.dart';
import 'application/configure_new_cbj_comp/configure_new_cbj_comp_bloc.dart';
import 'application/create_home/create_home_bloc.dart';
import 'infrastructure/create_home/create_home_repository.dart';
import 'application/devices/device_actor/device_actor_bloc.dart';
import 'infrastructure/device/device_repository.dart';
import 'application/devices/device_watcher/device_watcher_bloc.dart';
import 'infrastructure/auth/firebase_auth_facade.dart';
import 'infrastructure/core/firebase_injectable_module.dart';
import 'application/folder_of_scenes/folder_of_scenes_bloc.dart';
import 'infrastructure/folder_of_scenes/folder_of_scenes_repository.dart';
import 'application/folders_of_scenes/folders_of_scenes_bloc.dart';
import 'infrastructure/folders_of_scenes/folders_of_scenes_repository.dart';
import 'infrastructure/home_user/home_user_repository.dart';
import 'domain/add_user_to_home/i_add_user_to_home_repository.dart';
import 'domain/auth/i_auth_facade.dart';
import 'domain/cbj_comp/i_cbj_comp_repository.dart';
import 'domain/create_home/i_create_home_repository.dart';
import 'domain/devices/i_device_repository.dart';
import 'domain/folder_of_scenes/i_folder_of_scenes_repository.dart';
import 'domain/folders_of_scenes/i_folders_of_scenes_repository.dart';
import 'domain/home_user/i_home_user_repository.dart';
import 'domain/manage_network/i_manage_network_repository.dart';
import 'domain/scene/i_scene_repository.dart';
import 'domain/user/i_user_repository.dart';
import 'application/join_home_by_id/join_home_by_id_bloc.dart';
import 'application/light_toggle/light_toggle_bloc.dart';
import 'application/lights/lights_actor/lights_actor_bloc.dart';
import 'application/lights/lights_watcher/lights_watcher_bloc.dart';
import 'application/manage_access_point/manage_access_point_bloc.dart';
import 'application/manage_users/manage_users_bloc.dart';
import 'infrastructure/manage_wifi/manage_wifi_repository.dart';
import 'application/manage_wifi/manage_wifi_bloc.dart';
import 'infrastructure/mock_example.dart';
import 'application/scene/scene_bloc.dart';
import 'infrastructure/scenes/scene_repository.dart';
import 'application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'application/user_homes_list/user_homes_list_bloc.dart';
import 'infrastructure/user/user_repository.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<FirebaseFirestore>(() => firebaseInjectableModule.firestore);
  gh.lazySingleton<GoogleSignIn>(() => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<IAddUserToHomeRepository>(
      () => AddUserToHomeRepository(get<FirebaseFirestore>()));
  gh.lazySingleton<IAuthFacade>(
      () => FirebaseAuthFacade(get<FirebaseAuth>(), get<GoogleSignIn>()));
  gh.lazySingleton<ICBJCompRepository>(() => CBJCompRepository());
  gh.lazySingleton<ICreateHomeRepository>(() =>
      CreateHomeRepository(get<FirebaseFirestore>(), get<FirebaseAuth>()));
  gh.lazySingleton<IDeviceRepository>(
      () => DeviceRepository(get<FirebaseFirestore>()));
  gh.lazySingleton<IFolderOfScenesRepository>(() => FolderOfScenesRepository());
  gh.lazySingleton<IFoldersOfScenesRepository>(
      () => FoldersOfScenesRepository());
  gh.lazySingleton<IHomeUserRepository>(
      () => HomeUserRepository(get<FirebaseFirestore>()));
  gh.lazySingleton<IManageNetworkRepository>(() => ManageWiFiRepository());
  gh.lazySingleton<ISceneRepository>(() => SceneRepository());
  gh.lazySingleton<IUserRepository>(
      () => UserRepository(get<FirebaseFirestore>()));
  gh.factory<JoinHomeByIdBloc>(() => JoinHomeByIdBloc(get<IUserRepository>()));
  gh.factory<LightToggleBloc>(() => LightToggleBloc(get<IDeviceRepository>()));
  gh.factory<LightsActorBloc>(() => LightsActorBloc(get<IDeviceRepository>()));
  gh.factory<LightsWatcherBloc>(
      () => LightsWatcherBloc(get<IDeviceRepository>()));
  gh.factory<ManageAccessPointBloc>(
      () => ManageAccessPointBloc(get<IManageNetworkRepository>()));
  gh.factory<ManageUsersBloc>(
      () => ManageUsersBloc(get<IHomeUserRepository>()));
  gh.factory<ManageWifiBloc>(
      () => ManageWifiBloc(get<IManageNetworkRepository>()));
  gh.factory<MockExample>(() => MockExample());
  gh.factory<SceneBloc>(() => SceneBloc(get<ISceneRepository>()));
  gh.factory<SignInFormBloc>(() => SignInFormBloc(get<IAuthFacade>()));
  gh.factory<UserHomesListBloc>(
      () => UserHomesListBloc(get<IUserRepository>()));
  gh.factory<AddUserToHomeBloc>(
      () => AddUserToHomeBloc(get<IAddUserToHomeRepository>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<IAuthFacade>()));
  gh.factory<BlindsActorBloc>(() => BlindsActorBloc(get<IDeviceRepository>()));
  gh.factory<BlindsWatcherBloc>(
      () => BlindsWatcherBloc(get<IDeviceRepository>()));
  gh.factory<CBJCompBloc>(() => CBJCompBloc(get<ICBJCompRepository>()));
  gh.factory<ConfigureNewCbjCompBloc>(() => ConfigureNewCbjCompBloc(
      get<IDeviceRepository>(), get<ICBJCompRepository>()));
  gh.factory<CreateHomeBloc>(
      () => CreateHomeBloc(get<ICreateHomeRepository>()));
  gh.factory<DeviceActorBloc>(() => DeviceActorBloc(get<IDeviceRepository>()));
  gh.factory<DeviceWatcherBloc>(
      () => DeviceWatcherBloc(get<IDeviceRepository>()));
  gh.factory<FolderOfScenesBloc>(
      () => FolderOfScenesBloc(get<IFolderOfScenesRepository>()));
  gh.factory<FoldersOfScenesBloc>(
      () => FoldersOfScenesBloc(get<IFoldersOfScenesRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
