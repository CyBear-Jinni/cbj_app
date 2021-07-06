// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/add_user_to_home/add_user_to_home_bloc.dart' as _i38;
import 'application/auth/auth_bloc.dart' as _i39;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i36;
import 'application/blinds/blinds_actor/blinds_actor_bloc.dart' as _i40;
import 'application/blinds/blinds_watcher/blinds_watcher_bloc.dart' as _i41;
import 'application/boilers/boilers_actor/boilers_actor_bloc.dart' as _i42;
import 'application/boilers/boilers_watcher/boilers_watcher_bloc.dart' as _i43;
import 'application/cbj_comp/cbj_comp_bloc.dart' as _i44;
import 'application/configure_new_cbj_comp/configure_new_cbj_comp_bloc.dart'
    as _i45;
import 'application/create_home/create_home_bloc.dart' as _i46;
import 'application/devices/device_actor/device_actor_bloc.dart' as _i47;
import 'application/devices/device_watcher/device_watcher_bloc.dart' as _i48;
import 'application/folder_of_scenes/folder_of_scenes_bloc.dart' as _i49;
import 'application/folders_of_scenes/folders_of_scenes_bloc.dart' as _i50;
import 'application/join_home_by_id/join_home_by_id_bloc.dart' as _i27;
import 'application/light_toggle/light_toggle_bloc.dart' as _i28;
import 'application/lights/lights_actor/lights_actor_bloc.dart' as _i29;
import 'application/lights/lights_watcher/lights_watcher_bloc.dart' as _i30;
import 'application/manage_access_point/manage_access_point_bloc.dart' as _i31;
import 'application/manage_users/manage_users_bloc.dart' as _i32;
import 'application/manage_wifi/manage_wifi_bloc.dart' as _i33;
import 'application/scene/scene_bloc.dart' as _i35;
import 'application/user_homes_list/user_homes_list_bloc.dart' as _i37;
import 'domain/add_user_to_home/i_add_user_to_home_repository.dart' as _i3;
import 'domain/auth/i_auth_facade.dart' as _i5;
import 'domain/cbj_comp/i_cbj_comp_repository.dart' as _i7;
import 'domain/create_home/i_create_home_repository.dart' as _i9;
import 'domain/devices/device/i_device_repository.dart' as _i11;
import 'domain/folder_of_scenes/i_folder_of_scenes_repository.dart' as _i13;
import 'domain/folders_of_scenes/i_folders_of_scenes_repository.dart' as _i15;
import 'domain/home_user/i_home_user_repository.dart' as _i17;
import 'domain/hub_connection/i_hub_connection_repository.dart' as _i19;
import 'domain/manage_network/i_manage_network_repository.dart' as _i21;
import 'domain/scene/i_scene_repository.dart' as _i23;
import 'domain/user/i_user_repository.dart' as _i25;
import 'infrastructure/add_user_to_home/add_user_to_home_reposityory.dart'
    as _i4;
import 'infrastructure/cbj_comp/cbj_comp_repository.dart' as _i8;
import 'infrastructure/create_home/create_home_repository.dart' as _i10;
import 'infrastructure/devices/device/device_repository.dart' as _i12;
import 'infrastructure/folder_of_scenes/folder_of_scenes_repository.dart'
    as _i14;
import 'infrastructure/folders_of_scenes/folders_of_scenes_repository.dart'
    as _i16;
import 'infrastructure/home_user/home_user_repository.dart' as _i18;
import 'infrastructure/hub_auth_facade/hub_auth_facade.dart' as _i6;
import 'infrastructure/hub_connection/hub_connection_repository.dart' as _i20;
import 'infrastructure/manage_wifi/manage_wifi_repository.dart' as _i22;
import 'infrastructure/mock_example.dart' as _i34;
import 'infrastructure/scenes/scene_repository.dart' as _i24;
import 'infrastructure/user/user_repository.dart'
    as _i26; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IAddUserToHomeRepository>(
      () => _i4.AddUserToHomeRepository(get<String>()));
  gh.lazySingleton<_i5.IAuthFacade>(() => _i6.HubAuthFacade());
  gh.lazySingleton<_i7.ICBJCompRepository>(() => _i8.CBJCompRepository());
  gh.lazySingleton<_i9.ICreateHomeRepository>(
      () => _i10.CreateHomeRepository());
  gh.lazySingleton<_i11.IDeviceRepository>(() => _i12.DeviceRepository());
  gh.lazySingleton<_i13.IFolderOfScenesRepository>(
      () => _i14.FolderOfScenesRepository());
  gh.lazySingleton<_i15.IFoldersOfScenesRepository>(
      () => _i16.FoldersOfScenesRepository());
  gh.lazySingleton<_i17.IHomeUserRepository>(() => _i18.HomeUserRepository());
  gh.lazySingleton<_i19.IHubConnectionRepository>(
      () => _i20.HubConnectionRepository());
  gh.lazySingleton<_i21.IManageNetworkRepository>(
      () => _i22.ManageWiFiRepository());
  gh.lazySingleton<_i23.ISceneRepository>(() => _i24.SceneRepository());
  gh.lazySingleton<_i25.IUserRepository>(() => _i26.UserRepository());
  gh.factory<_i27.JoinHomeByIdBloc>(
      () => _i27.JoinHomeByIdBloc(get<_i25.IUserRepository>()));
  gh.factory<_i28.LightToggleBloc>(
      () => _i28.LightToggleBloc(get<_i11.IDeviceRepository>()));
  gh.factory<_i29.LightsActorBloc>(
      () => _i29.LightsActorBloc(get<_i11.IDeviceRepository>()));
  gh.factory<_i30.LightsWatcherBloc>(
      () => _i30.LightsWatcherBloc(get<_i11.IDeviceRepository>()));
  gh.factory<_i31.ManageAccessPointBloc>(
      () => _i31.ManageAccessPointBloc(get<_i21.IManageNetworkRepository>()));
  gh.factory<_i32.ManageUsersBloc>(
      () => _i32.ManageUsersBloc(get<_i17.IHomeUserRepository>()));
  gh.factory<_i33.ManageWifiBloc>(
      () => _i33.ManageWifiBloc(get<_i21.IManageNetworkRepository>()));
  gh.factory<_i34.MockExample>(() => _i34.MockExample());
  gh.factory<_i35.SceneBloc>(
      () => _i35.SceneBloc(get<_i23.ISceneRepository>()));
  gh.factory<_i36.SignInFormBloc>(
      () => _i36.SignInFormBloc(get<_i5.IAuthFacade>()));
  gh.factory<_i37.UserHomesListBloc>(
      () => _i37.UserHomesListBloc(get<_i25.IUserRepository>()));
  gh.factory<_i38.AddUserToHomeBloc>(
      () => _i38.AddUserToHomeBloc(get<_i3.IAddUserToHomeRepository>()));
  gh.factory<_i39.AuthBloc>(() => _i39.AuthBloc(get<_i5.IAuthFacade>()));
  gh.factory<_i40.BlindsActorBloc>(
      () => _i40.BlindsActorBloc(get<_i11.IDeviceRepository>()));
  gh.factory<_i41.BlindsWatcherBloc>(
      () => _i41.BlindsWatcherBloc(get<_i11.IDeviceRepository>()));
  gh.factory<_i42.BoilersActorBloc>(
      () => _i42.BoilersActorBloc(get<_i11.IDeviceRepository>()));
  gh.factory<_i43.BoilersWatcherBloc>(
      () => _i43.BoilersWatcherBloc(get<_i11.IDeviceRepository>()));
  gh.factory<_i44.CBJCompBloc>(
      () => _i44.CBJCompBloc(get<_i7.ICBJCompRepository>()));
  gh.factory<_i45.ConfigureNewCbjCompBloc>(() => _i45.ConfigureNewCbjCompBloc(
      get<_i11.IDeviceRepository>(), get<_i7.ICBJCompRepository>()));
  gh.factory<_i46.CreateHomeBloc>(
      () => _i46.CreateHomeBloc(get<_i9.ICreateHomeRepository>()));
  gh.factory<_i47.DeviceActorBloc>(
      () => _i47.DeviceActorBloc(get<_i11.IDeviceRepository>()));
  gh.factory<_i48.DeviceWatcherBloc>(
      () => _i48.DeviceWatcherBloc(get<_i11.IDeviceRepository>()));
  gh.factory<_i49.FolderOfScenesBloc>(
      () => _i49.FolderOfScenesBloc(get<_i13.IFolderOfScenesRepository>()));
  gh.factory<_i50.FoldersOfScenesBloc>(
      () => _i50.FoldersOfScenesBloc(get<_i15.IFoldersOfScenesRepository>()));
  return get;
}
