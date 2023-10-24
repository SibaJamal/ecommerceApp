// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<dynamic> allCategories) categoryLoaded,
    required TResult Function() categoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<dynamic> allCategories)? categoryLoaded,
    TResult? Function()? categoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<dynamic> allCategories)? categoryLoaded,
    TResult Function()? categoryError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(CategoryLoaded value) categoryLoaded,
    required TResult Function(CategoryError value) categoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(CategoryLoaded value)? categoryLoaded,
    TResult? Function(CategoryError value)? categoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(CategoryLoaded value)? categoryLoaded,
    TResult Function(CategoryError value)? categoryError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res, CategoryState>;
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res, $Val extends CategoryState>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

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
    extends _$CategoryStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'CategoryState.loading()';
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
    required TResult Function(List<dynamic> allCategories) categoryLoaded,
    required TResult Function() categoryError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<dynamic> allCategories)? categoryLoaded,
    TResult? Function()? categoryError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<dynamic> allCategories)? categoryLoaded,
    TResult Function()? categoryError,
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
    required TResult Function(CategoryLoaded value) categoryLoaded,
    required TResult Function(CategoryError value) categoryError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(CategoryLoaded value)? categoryLoaded,
    TResult? Function(CategoryError value)? categoryError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(CategoryLoaded value)? categoryLoaded,
    TResult Function(CategoryError value)? categoryError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements CategoryState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$CategoryLoadedImplCopyWith<$Res> {
  factory _$$CategoryLoadedImplCopyWith(_$CategoryLoadedImpl value,
          $Res Function(_$CategoryLoadedImpl) then) =
      __$$CategoryLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<dynamic> allCategories});
}

/// @nodoc
class __$$CategoryLoadedImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$CategoryLoadedImpl>
    implements _$$CategoryLoadedImplCopyWith<$Res> {
  __$$CategoryLoadedImplCopyWithImpl(
      _$CategoryLoadedImpl _value, $Res Function(_$CategoryLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allCategories = null,
  }) {
    return _then(_$CategoryLoadedImpl(
      allCategories: null == allCategories
          ? _value._allCategories
          : allCategories // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$CategoryLoadedImpl implements CategoryLoaded {
  const _$CategoryLoadedImpl({required final List<dynamic> allCategories})
      : _allCategories = allCategories;

  final List<dynamic> _allCategories;
  @override
  List<dynamic> get allCategories {
    if (_allCategories is EqualUnmodifiableListView) return _allCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allCategories);
  }

  @override
  String toString() {
    return 'CategoryState.categoryLoaded(allCategories: $allCategories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._allCategories, _allCategories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_allCategories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryLoadedImplCopyWith<_$CategoryLoadedImpl> get copyWith =>
      __$$CategoryLoadedImplCopyWithImpl<_$CategoryLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<dynamic> allCategories) categoryLoaded,
    required TResult Function() categoryError,
  }) {
    return categoryLoaded(allCategories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<dynamic> allCategories)? categoryLoaded,
    TResult? Function()? categoryError,
  }) {
    return categoryLoaded?.call(allCategories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<dynamic> allCategories)? categoryLoaded,
    TResult Function()? categoryError,
    required TResult orElse(),
  }) {
    if (categoryLoaded != null) {
      return categoryLoaded(allCategories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(CategoryLoaded value) categoryLoaded,
    required TResult Function(CategoryError value) categoryError,
  }) {
    return categoryLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(CategoryLoaded value)? categoryLoaded,
    TResult? Function(CategoryError value)? categoryError,
  }) {
    return categoryLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(CategoryLoaded value)? categoryLoaded,
    TResult Function(CategoryError value)? categoryError,
    required TResult orElse(),
  }) {
    if (categoryLoaded != null) {
      return categoryLoaded(this);
    }
    return orElse();
  }
}

abstract class CategoryLoaded implements CategoryState {
  const factory CategoryLoaded({required final List<dynamic> allCategories}) =
      _$CategoryLoadedImpl;

  List<dynamic> get allCategories;
  @JsonKey(ignore: true)
  _$$CategoryLoadedImplCopyWith<_$CategoryLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryErrorImplCopyWith<$Res> {
  factory _$$CategoryErrorImplCopyWith(
          _$CategoryErrorImpl value, $Res Function(_$CategoryErrorImpl) then) =
      __$$CategoryErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoryErrorImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$CategoryErrorImpl>
    implements _$$CategoryErrorImplCopyWith<$Res> {
  __$$CategoryErrorImplCopyWithImpl(
      _$CategoryErrorImpl _value, $Res Function(_$CategoryErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CategoryErrorImpl implements CategoryError {
  const _$CategoryErrorImpl();

  @override
  String toString() {
    return 'CategoryState.categoryError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CategoryErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<dynamic> allCategories) categoryLoaded,
    required TResult Function() categoryError,
  }) {
    return categoryError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<dynamic> allCategories)? categoryLoaded,
    TResult? Function()? categoryError,
  }) {
    return categoryError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<dynamic> allCategories)? categoryLoaded,
    TResult Function()? categoryError,
    required TResult orElse(),
  }) {
    if (categoryError != null) {
      return categoryError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(CategoryLoaded value) categoryLoaded,
    required TResult Function(CategoryError value) categoryError,
  }) {
    return categoryError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(CategoryLoaded value)? categoryLoaded,
    TResult? Function(CategoryError value)? categoryError,
  }) {
    return categoryError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(CategoryLoaded value)? categoryLoaded,
    TResult Function(CategoryError value)? categoryError,
    required TResult orElse(),
  }) {
    if (categoryError != null) {
      return categoryError(this);
    }
    return orElse();
  }
}

abstract class CategoryError implements CategoryState {
  const factory CategoryError() = _$CategoryErrorImpl;
}
