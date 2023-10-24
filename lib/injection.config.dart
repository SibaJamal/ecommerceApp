// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i12;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i11;
import 'application/cart/cart_bloc.dart' as _i13;
import 'application/category/category_cubit.dart' as _i14;
import 'application/counter_cubit.dart' as _i5;
import 'application/my_products/my_products_cubit.dart' as _i8;
import 'application/products/products_cubit.dart' as _i15;
import 'application/search/search_bloc.dart' as _i16;
import 'domain/auth/i_auth_facade.dart' as _i6;
import 'infrastructure/auth/auth_facade.dart' as _i7;
import 'infrastructure/auth/authentication_data_provider.dart' as _i3;
import 'infrastructure/cart/cart_repository.dart' as _i4;
import 'infrastructure/products/products_data_repository.dart' as _i9;
import 'infrastructure/search/search_repository.dart' as _i10;

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
    gh.singleton<_i3.AuthenticationHelper>(_i3.AuthenticationHelper());
    gh.singleton<_i4.CartRepository>(
        _i4.CartRepository(gh<_i3.AuthenticationHelper>()));
    gh.factory<_i5.CounterCubit>(() => _i5.CounterCubit());
    gh.lazySingleton<_i6.IAuthFacade>(
        () => _i7.AuthFacade(gh<_i3.AuthenticationHelper>()));
    gh.factory<_i8.MyProductsCubit>(
        () => _i8.MyProductsCubit(gh<_i3.AuthenticationHelper>()));
    gh.singleton<_i9.ProductsRepository>(_i9.ProductsRepository());
    gh.singleton<_i10.SearchRepository>(_i10.SearchRepository());
    gh.singleton<_i11.SignInFormBloc>(
        _i11.SignInFormBloc(gh<_i6.IAuthFacade>()));
    gh.singleton<_i12.AuthBloc>(_i12.AuthBloc(gh<_i6.IAuthFacade>()));
    gh.factory<_i13.CartBloc>(() => _i13.CartBloc(gh<_i4.CartRepository>()));
    gh.singleton<_i14.CategoryCubit>(
        _i14.CategoryCubit(gh<_i9.ProductsRepository>()));
    gh.singleton<_i15.ProductsCubit>(
        _i15.ProductsCubit(gh<_i9.ProductsRepository>()));
    gh.factory<_i16.SearchBloc>(
        () => _i16.SearchBloc(gh<_i10.SearchRepository>()));
    return this;
  }
}
