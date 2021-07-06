// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

import 'application/add_user_to_home/add_user_to_home_bloc.dart' as _i41;
import 'application/auth/auth_bloc.dart' as _i42;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i39;
import 'application/blinds/blinds_actor/blinds_actor_bloc.dart' as _i43;
import 'application/blinds/blinds_watcher/blinds_watcher_bloc.dart' as _i44;
import 'application/boilers/boilers_actor/boilers_actor_bloc.dart' as _i45;
import 'application/boilers/boilers_watcher/boilers_watcher_bloc.dart' as _i46;
import 'application/cbj_comp/cbj_comp_bloc.dart' as _i47;
import 'application/configure_new_cbj_comp/configure_new_cbj_comp_bloc.dart'
    as _i48;
import 'application/create_home/create_home_bloc.dart' as _i49;
import 'application/devices/device_actor/device_actor_bloc.dart' as _i50;
import 'application/devices/device_watcher/device_watcher_bloc.dart' as _i51;
import 'application/folder_of_scenes/folder_of_scenes_bloc.dart' as _i52;
import 'application/folders_of_scenes/folders_of_scenes_bloc.dart' as _i53;
import 'application/join_home_by_id/join_home_by_id_bloc.dart' as _i30;
import 'application/light_toggle/light_toggle_bloc.dart' as _i31;
import 'application/lights/lights_actor/lights_actor_bloc.dart' as _i32;
import 'application/lights/lights_watcher/lights_watcher_bloc.dart' as _i33;
import 'application/manage_access_point/manage_access_point_bloc.dart' as _i34;
import 'application/manage_users/manage_users_bloc.dart' as _i35;
import 'application/manage_wifi/manage_wifi_bloc.dart' as _i36;
import 'application/scene/scene_bloc.dart' as _i38;
import 'application/user_homes_list/user_homes_list_bloc.dart' as _i40;
import 'domain/add_user_to_home/i_add_user_to_home_repository.dart' as _i6;
import 'domain/auth/i_auth_facade.dart' as _i8;
import 'domain/cbj_comp/i_cbj_comp_repository.dart' as _i10;
import 'domain/create_home/i_create_home_repository.dart' as _i12;
import 'domain/devices/device/i_device_repository.dart' as _i14;
import 'domain/folder_of_scenes/i_folder_of_scenes_repository.dart' as _i16;
import 'domain/folders_of_scenes/i_folders_of_scenes_repository.dart' as _i18;
import 'domain/home_user/i_home_user_repository.dart' as _i20;
import 'domain/hub_connection/i_hub_connection_repository.dart' as _i22;
import 'domain/manage_network/i_manage_network_repository.dart' as _i24;
import 'domain/scene/i_scene_repository.dart' as _i26;
import 'domain/user/i_user_repository.dart' as _i28;
import 'infrastructure/add_user_to_home/add_user_to_home_reposityory.dart'
    as _i7;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i9;
import 'infrastructure/cbj_comp/cbj_comp_repository.dart' as _i11;
import 'infrastructure/core/firebase_injectable_module.dart' as _i54;
import 'infrastructure/create_home/create_home_repository.dart' as _i13;
import 'infrastructure/devices/device/device_repository.dart' as _i15;
import 'infrastructure/folder_of_scenes/folder_of_scenes_repository.dart'
    as _i17;
import 'infrastructure/folders_of_scenes/folders_of_scenes_repository.dart'
    as _i19;
import 'infrastructure/home_user/home_user_repository.dart' as _i21;
import 'infrastructure/hub_connection/hub_connection_repository.dart' as _i23;
import 'infrastructure/manage_wifi/manage_wifi_repository.dart' as _i25;
import 'infrastructure/mock_example.dart' as _i37;
import 'infrastructure/scenes/scene_repository.dart' as _i27;
import 'infrastructure/user/user_repository.dart'
    as _i29; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i5.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i6.IAddUserToHomeRepository>(
      () => _i7.AddUserToHomeRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i8.IAuthFacade>(() =>
      _i9.FirebaseAuthFacade(get<_i3.FirebaseAuth>(), get<_i5.GoogleSignIn>()));
  gh.lazySingleton<_i10.ICBJCompRepository>(() => _i11.CBJCompRepository());
  gh.lazySingleton<_i12.ICreateHomeRepository>(() => _i13.CreateHomeRepository(
      get<_i4.FirebaseFirestore>(), get<_i3.FirebaseAuth>()));
  gh.lazySingleton<_i14.IDeviceRepository>(
      () => _i15.DeviceRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i16.IFolderOfScenesRepository>(
      () => _i17.FolderOfScenesRepository());
  gh.lazySingleton<_i18.IFoldersOfScenesRepository>(
      () => _i19.FoldersOfScenesRepository());
  gh.lazySingleton<_i20.IHomeUserRepository>(
      () => _i21.HomeUserRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i22.IHubConnectionRepository>(
      () => _i23.HubConnectionRepository());
  gh.lazySingleton<_i24.IManageNetworkRepository>(
      () => _i25.ManageWiFiRepository());
  gh.lazySingleton<_i26.ISceneRepository>(() => _i27.SceneRepository());
  gh.lazySingleton<_i28.IUserRepository>(
      () => _i29.UserRepository(get<_i4.FirebaseFirestore>()));
  gh.factory<_i30.JoinHomeByIdBloc>(
      () => _i30.JoinHomeByIdBloc(get<_i28.IUserRepository>()));
  gh.factory<_i31.LightToggleBloc>(
      () => _i31.LightToggleBloc(get<_i14.IDeviceRepository>()));
  gh.factory<_i32.LightsActorBloc>(
      () => _i32.LightsActorBloc(get<_i14.IDeviceRepository>()));
  gh.factory<_i33.LightsWatcherBloc>(
      () => _i33.LightsWatcherBloc(get<_i14.IDeviceRepository>()));
  gh.factory<_i34.ManageAccessPointBloc>(
      () => _i34.ManageAccessPointBloc(get<_i24.IManageNetworkRepository>()));
  gh.factory<_i35.ManageUsersBloc>(
      () => _i35.ManageUsersBloc(get<_i20.IHomeUserRepository>()));
  gh.factory<_i36.ManageWifiBloc>(
      () => _i36.ManageWifiBloc(get<_i24.IManageNetworkRepository>()));
  gh.factory<_i37.MockExample>(() => _i37.MockExample());
  gh.factory<_i38.SceneBloc>(
      () => _i38.SceneBloc(get<_i26.ISceneRepository>()));
  gh.factory<_i39.SignInFormBloc>(
      () => _i39.SignInFormBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i40.UserHomesListBloc>(
      () => _i40.UserHomesListBloc(get<_i28.IUserRepository>()));
  gh.factory<_i41.AddUserToHomeBloc>(
      () => _i41.AddUserToHomeBloc(get<_i6.IAddUserToHomeRepository>()));
  gh.factory<_i42.AuthBloc>(() => _i42.AuthBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i43.BlindsActorBloc>(
      () => _i43.BlindsActorBloc(get<_i14.IDeviceRepository>()));
  gh.factory<_i44.BlindsWatcherBloc>(
      () => _i44.BlindsWatcherBloc(get<_i14.IDeviceRepository>()));
  gh.factory<_i45.BoilersActorBloc>(
      () => _i45.BoilersActorBloc(get<_i14.IDeviceRepository>()));
  gh.factory<_i46.BoilersWatcherBloc>(
      () => _i46.BoilersWatcherBloc(get<_i14.IDeviceRepository>()));
  gh.factory<_i47.CBJCompBloc>(
      () => _i47.CBJCompBloc(get<_i10.ICBJCompRepository>()));
  gh.factory<_i48.ConfigureNewCbjCompBloc>(() => _i48.ConfigureNewCbjCompBloc(
      get<_i14.IDeviceRepository>(), get<_i10.ICBJCompRepository>()));
  gh.factory<_i49.CreateHomeBloc>(
      () => _i49.CreateHomeBloc(get<_i12.ICreateHomeRepository>()));
  gh.factory<_i50.DeviceActorBloc>(
      () => _i50.DeviceActorBloc(get<_i14.IDeviceRepository>()));
  gh.factory<_i51.DeviceWatcherBloc>(
      () => _i51.DeviceWatcherBloc(get<_i14.IDeviceRepository>()));
  gh.factory<_i52.FolderOfScenesBloc>(
      () => _i52.FolderOfScenesBloc(get<_i16.IFolderOfScenesRepository>()));
  gh.factory<_i53.FoldersOfScenesBloc>(
      () => _i53.FoldersOfScenesBloc(get<_i18.IFoldersOfScenesRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i54.FirebaseInjectableModule {}
