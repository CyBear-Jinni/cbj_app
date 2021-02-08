// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'application/auth/auth_bloc.dart';
import 'infrastructure/auth/firebase_auth_facade.dart';
import 'infrastructure/core/firebase_injectable_module.dart';
import 'application/folders_of_scenes/folders_of_scenes_bloc.dart';
import 'domain/auth/i_auth_facade.dart';
import 'infrastructure/folders_of_scenes/folders_of_scenes.dart';
import 'domain/folders_of_scenes/i_folders_of_scenes_repository.dart';
import 'domain/initialize_home/i_initialize_home_repository.dart';
import 'application/initialize_home/initialize_home_bloc.dart';
import 'infrastructure/initialize_home/initialize_home_repository.dart';
import 'infrastructure/mock_example.dart';
import 'application/auth/sign_in_form/sign_in_form_bloc.dart';

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
  gh.lazySingleton<IAuthFacade>(
      () => FirebaseAuthFacade(get<FirebaseAuth>(), get<GoogleSignIn>()));
  gh.lazySingleton<IIFoldersOfScenesRepository>(
      () => IFoldersOfScenesRepository());
  gh.lazySingleton<IInitializeHomeRepository>(() =>
      InitializeHomeRepository(get<FirebaseFirestore>(), get<FirebaseAuth>()));
  gh.factory<InitializeHomeBloc>(
      () => InitializeHomeBloc(get<IInitializeHomeRepository>()));
  gh.factory<MockExample>(() => MockExample());
  gh.factory<SignInFormBloc>(() => SignInFormBloc(get<IAuthFacade>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<IAuthFacade>()));
  gh.factory<FoldersOfScenesBloc>(
      () => FoldersOfScenesBloc(get<IIFoldersOfScenesRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
