// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<dynamic> allData) productLoaded,
    required TResult Function() productError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<dynamic> allData)? productLoaded,
    TResult? Function()? productError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<dynamic> allData)? productLoaded,
    TResult Function()? productError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(ProductLoaded value) productLoaded,
    required TResult Function(ProductError value) productError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(ProductLoaded value)? productLoaded,
    TResult? Function(ProductError value)? productError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(ProductLoaded value)? productLoaded,
    TResult Function(ProductError value)? productError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ProductState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<dynamic> allData) productLoaded,
    required TResult Function() productError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<dynamic> allData)? productLoaded,
    TResult? Function()? productError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<dynamic> allData)? productLoaded,
    TResult Function()? productError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(ProductLoaded value) productLoaded,
    required TResult Function(ProductError value) productError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(ProductLoaded value)? productLoaded,
    TResult? Function(ProductError value)? productError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(ProductLoaded value)? productLoaded,
    TResult Function(ProductError value)? productError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements ProductState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ProductLoadedImplCopyWith<$Res> {
  factory _$$ProductLoadedImplCopyWith(
          _$ProductLoadedImpl value, $Res Function(_$ProductLoadedImpl) then) =
      __$$ProductLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<dynamic> allData});
}

/// @nodoc
class __$$ProductLoadedImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductLoadedImpl>
    implements _$$ProductLoadedImplCopyWith<$Res> {
  __$$ProductLoadedImplCopyWithImpl(
      _$ProductLoadedImpl _value, $Res Function(_$ProductLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allData = null,
  }) {
    return _then(_$ProductLoadedImpl(
      allData: null == allData
          ? _value._allData
          : allData // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$ProductLoadedImpl implements ProductLoaded {
  const _$ProductLoadedImpl({required final List<dynamic> allData})
      : _allData = allData;

  final List<dynamic> _allData;
  @override
  List<dynamic> get allData {
    if (_allData is EqualUnmodifiableListView) return _allData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allData);
  }

  @override
  String toString() {
    return 'ProductState.productLoaded(allData: $allData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductLoadedImpl &&
            const DeepCollectionEquality().equals(other._allData, _allData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_allData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductLoadedImplCopyWith<_$ProductLoadedImpl> get copyWith =>
      __$$ProductLoadedImplCopyWithImpl<_$ProductLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<dynamic> allData) productLoaded,
    required TResult Function() productError,
  }) {
    return productLoaded(allData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<dynamic> allData)? productLoaded,
    TResult? Function()? productError,
  }) {
    return productLoaded?.call(allData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<dynamic> allData)? productLoaded,
    TResult Function()? productError,
    required TResult orElse(),
  }) {
    if (productLoaded != null) {
      return productLoaded(allData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(ProductLoaded value) productLoaded,
    required TResult Function(ProductError value) productError,
  }) {
    return productLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(ProductLoaded value)? productLoaded,
    TResult? Function(ProductError value)? productError,
  }) {
    return productLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(ProductLoaded value)? productLoaded,
    TResult Function(ProductError value)? productError,
    required TResult orElse(),
  }) {
    if (productLoaded != null) {
      return productLoaded(this);
    }
    return orElse();
  }
}

abstract class ProductLoaded implements ProductState {
  const factory ProductLoaded({required final List<dynamic> allData}) =
      _$ProductLoadedImpl;

  List<dynamic> get allData;
  @JsonKey(ignore: true)
  _$$ProductLoadedImplCopyWith<_$ProductLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductErrorImplCopyWith<$Res> {
  factory _$$ProductErrorImplCopyWith(
          _$ProductErrorImpl value, $Res Function(_$ProductErrorImpl) then) =
      __$$ProductErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductErrorImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductErrorImpl>
    implements _$$ProductErrorImplCopyWith<$Res> {
  __$$ProductErrorImplCopyWithImpl(
      _$ProductErrorImpl _value, $Res Function(_$ProductErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProductErrorImpl implements ProductError {
  const _$ProductErrorImpl();

  @override
  String toString() {
    return 'ProductState.productError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProductErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<dynamic> allData) productLoaded,
    required TResult Function() productError,
  }) {
    return productError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<dynamic> allData)? productLoaded,
    TResult? Function()? productError,
  }) {
    return productError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<dynamic> allData)? productLoaded,
    TResult Function()? productError,
    required TResult orElse(),
  }) {
    if (productError != null) {
      return productError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(ProductLoaded value) productLoaded,
    required TResult Function(ProductError value) productError,
  }) {
    return productError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(ProductLoaded value)? productLoaded,
    TResult? Function(ProductError value)? productError,
  }) {
    return productError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(ProductLoaded value)? productLoaded,
    TResult Function(ProductError value)? productError,
    required TResult orElse(),
  }) {
    if (productError != null) {
      return productError(this);
    }
    return orElse();
  }
}

abstract class ProductError implements ProductState {
  const factory ProductError() = _$ProductErrorImpl;
}
