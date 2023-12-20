// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_products_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MyProductsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> allMyData) productLoaded,
    required TResult Function() productError,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> allMyData)? productLoaded,
    TResult? Function()? productError,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> allMyData)? productLoaded,
    TResult Function()? productError,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ProductLoaded value) productLoaded,
    required TResult Function(ProductError value) productError,
    required TResult Function(Empty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ProductLoaded value)? productLoaded,
    TResult? Function(ProductError value)? productError,
    TResult? Function(Empty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ProductLoaded value)? productLoaded,
    TResult Function(ProductError value)? productError,
    TResult Function(Empty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyProductsStateCopyWith<$Res> {
  factory $MyProductsStateCopyWith(
          MyProductsState value, $Res Function(MyProductsState) then) =
      _$MyProductsStateCopyWithImpl<$Res, MyProductsState>;
}

/// @nodoc
class _$MyProductsStateCopyWithImpl<$Res, $Val extends MyProductsState>
    implements $MyProductsStateCopyWith<$Res> {
  _$MyProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$MyProductsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'MyProductsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> allMyData) productLoaded,
    required TResult Function() productError,
    required TResult Function() empty,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> allMyData)? productLoaded,
    TResult? Function()? productError,
    TResult? Function()? empty,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> allMyData)? productLoaded,
    TResult Function()? productError,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ProductLoaded value) productLoaded,
    required TResult Function(ProductError value) productError,
    required TResult Function(Empty value) empty,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ProductLoaded value)? productLoaded,
    TResult? Function(ProductError value)? productError,
    TResult? Function(Empty value)? empty,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ProductLoaded value)? productLoaded,
    TResult Function(ProductError value)? productError,
    TResult Function(Empty value)? empty,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements MyProductsState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$MyProductsStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'MyProductsState.loading()';
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
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> allMyData) productLoaded,
    required TResult Function() productError,
    required TResult Function() empty,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> allMyData)? productLoaded,
    TResult? Function()? productError,
    TResult? Function()? empty,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> allMyData)? productLoaded,
    TResult Function()? productError,
    TResult Function()? empty,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ProductLoaded value) productLoaded,
    required TResult Function(ProductError value) productError,
    required TResult Function(Empty value) empty,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ProductLoaded value)? productLoaded,
    TResult? Function(ProductError value)? productError,
    TResult? Function(Empty value)? empty,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ProductLoaded value)? productLoaded,
    TResult Function(ProductError value)? productError,
    TResult Function(Empty value)? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements MyProductsState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ProductLoadedImplCopyWith<$Res> {
  factory _$$ProductLoadedImplCopyWith(
          _$ProductLoadedImpl value, $Res Function(_$ProductLoadedImpl) then) =
      __$$ProductLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<dynamic> allMyData});
}

/// @nodoc
class __$$ProductLoadedImplCopyWithImpl<$Res>
    extends _$MyProductsStateCopyWithImpl<$Res, _$ProductLoadedImpl>
    implements _$$ProductLoadedImplCopyWith<$Res> {
  __$$ProductLoadedImplCopyWithImpl(
      _$ProductLoadedImpl _value, $Res Function(_$ProductLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allMyData = null,
  }) {
    return _then(_$ProductLoadedImpl(
      allMyData: null == allMyData
          ? _value._allMyData
          : allMyData // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$ProductLoadedImpl implements ProductLoaded {
  const _$ProductLoadedImpl({required final List<dynamic> allMyData})
      : _allMyData = allMyData;

  final List<dynamic> _allMyData;
  @override
  List<dynamic> get allMyData {
    if (_allMyData is EqualUnmodifiableListView) return _allMyData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allMyData);
  }

  @override
  String toString() {
    return 'MyProductsState.productLoaded(allMyData: $allMyData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._allMyData, _allMyData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_allMyData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductLoadedImplCopyWith<_$ProductLoadedImpl> get copyWith =>
      __$$ProductLoadedImplCopyWithImpl<_$ProductLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> allMyData) productLoaded,
    required TResult Function() productError,
    required TResult Function() empty,
  }) {
    return productLoaded(allMyData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> allMyData)? productLoaded,
    TResult? Function()? productError,
    TResult? Function()? empty,
  }) {
    return productLoaded?.call(allMyData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> allMyData)? productLoaded,
    TResult Function()? productError,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (productLoaded != null) {
      return productLoaded(allMyData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ProductLoaded value) productLoaded,
    required TResult Function(ProductError value) productError,
    required TResult Function(Empty value) empty,
  }) {
    return productLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ProductLoaded value)? productLoaded,
    TResult? Function(ProductError value)? productError,
    TResult? Function(Empty value)? empty,
  }) {
    return productLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ProductLoaded value)? productLoaded,
    TResult Function(ProductError value)? productError,
    TResult Function(Empty value)? empty,
    required TResult orElse(),
  }) {
    if (productLoaded != null) {
      return productLoaded(this);
    }
    return orElse();
  }
}

abstract class ProductLoaded implements MyProductsState {
  const factory ProductLoaded({required final List<dynamic> allMyData}) =
      _$ProductLoadedImpl;

  List<dynamic> get allMyData;
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
    extends _$MyProductsStateCopyWithImpl<$Res, _$ProductErrorImpl>
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
    return 'MyProductsState.productError()';
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
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> allMyData) productLoaded,
    required TResult Function() productError,
    required TResult Function() empty,
  }) {
    return productError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> allMyData)? productLoaded,
    TResult? Function()? productError,
    TResult? Function()? empty,
  }) {
    return productError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> allMyData)? productLoaded,
    TResult Function()? productError,
    TResult Function()? empty,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ProductLoaded value) productLoaded,
    required TResult Function(ProductError value) productError,
    required TResult Function(Empty value) empty,
  }) {
    return productError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ProductLoaded value)? productLoaded,
    TResult? Function(ProductError value)? productError,
    TResult? Function(Empty value)? empty,
  }) {
    return productError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ProductLoaded value)? productLoaded,
    TResult Function(ProductError value)? productError,
    TResult Function(Empty value)? empty,
    required TResult orElse(),
  }) {
    if (productError != null) {
      return productError(this);
    }
    return orElse();
  }
}

abstract class ProductError implements MyProductsState {
  const factory ProductError() = _$ProductErrorImpl;
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<$Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl value, $Res Function(_$EmptyImpl) then) =
      __$$EmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<$Res>
    extends _$MyProductsStateCopyWithImpl<$Res, _$EmptyImpl>
    implements _$$EmptyImplCopyWith<$Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl _value, $Res Function(_$EmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyImpl implements Empty {
  const _$EmptyImpl();

  @override
  String toString() {
    return 'MyProductsState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> allMyData) productLoaded,
    required TResult Function() productError,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> allMyData)? productLoaded,
    TResult? Function()? productError,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> allMyData)? productLoaded,
    TResult Function()? productError,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ProductLoaded value) productLoaded,
    required TResult Function(ProductError value) productError,
    required TResult Function(Empty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ProductLoaded value)? productLoaded,
    TResult? Function(ProductError value)? productError,
    TResult? Function(Empty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ProductLoaded value)? productLoaded,
    TResult Function(ProductError value)? productError,
    TResult Function(Empty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty implements MyProductsState {
  const factory Empty() = _$EmptyImpl;
}
