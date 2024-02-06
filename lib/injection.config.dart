// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i13;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i12;
import 'application/cart/cart_bloc.dart' as _i3;
import 'application/category/category_cubit.dart' as _i14;
import 'application/my_products/my_products_cubit.dart' as _i9;
import 'application/products/products_cubit.dart' as _i15;
import 'application/search/search_bloc.dart' as _i16;
import 'domain/auth/i_auth_facade.dart' as _i7;
import 'infrastructure/auth/auth_facade.dart' as _i8;
import 'infrastructure/cart/cart_repository.dart' as _i4;
import 'infrastructure/core/firebase_injectable_module.dart' as _i17;
import 'infrastructure/products/products_data_repository.dart' as _i10;
import 'infrastructure/search/search_repository.dart' as _i11;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseInjectableModule = _$FirebaseInjectableModule();
    gh.factory<_i3.CartBloc>(() => _i3.CartBloc());
    gh.singleton<_i4.CartRepository>(_i4.CartRepository());
    gh.lazySingleton<_i5.FirebaseAuth>(
        () => firebaseInjectableModule.firebaseAuth);
    gh.lazySingleton<_i6.GoogleSignIn>(
        () => firebaseInjectableModule.googleSignIn);
    gh.lazySingleton<_i7.IAuthFacade>(() => _i8.AuthFacade(
          gh<_i5.FirebaseAuth>(),
          gh<_i6.GoogleSignIn>(),
        ));
    gh.factory<_i9.MyProductsCubit>(() => _i9.MyProductsCubit());
    gh.singleton<_i10.ProductsRepository>(_i10.ProductsRepository());
    gh.singleton<_i11.SearchRepository>(_i11.SearchRepository());
    gh.singleton<_i12.SignInFormBloc>(
        _i12.SignInFormBloc(gh<_i7.IAuthFacade>()));
    gh.singleton<_i13.AuthBloc>(_i13.AuthBloc(gh<_i7.IAuthFacade>()));
    gh.singleton<_i14.CategoryCubit>(
        _i14.CategoryCubit(gh<_i10.ProductsRepository>()));
    gh.singleton<_i15.ProductsCubit>(
        _i15.ProductsCubit(gh<_i10.ProductsRepository>()));
    gh.factory<_i16.SearchBloc>(
        () => _i16.SearchBloc(gh<_i11.SearchRepository>()));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i17.FirebaseInjectableModule {}
