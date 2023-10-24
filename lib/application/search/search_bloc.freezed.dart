// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchValue) searchValueChanged,
    required TResult Function() valueDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchValue)? searchValueChanged,
    TResult? Function()? valueDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchValue)? searchValueChanged,
    TResult Function()? valueDeleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchValueChanged value) searchValueChanged,
    required TResult Function(ValueDeleted value) valueDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchValueChanged value)? searchValueChanged,
    TResult? Function(ValueDeleted value)? valueDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchValueChanged value)? searchValueChanged,
    TResult Function(ValueDeleted value)? valueDeleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchValueChangedImplCopyWith<$Res> {
  factory _$$SearchValueChangedImplCopyWith(_$SearchValueChangedImpl value,
          $Res Function(_$SearchValueChangedImpl) then) =
      __$$SearchValueChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchValue});
}

/// @nodoc
class __$$SearchValueChangedImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchValueChangedImpl>
    implements _$$SearchValueChangedImplCopyWith<$Res> {
  __$$SearchValueChangedImplCopyWithImpl(_$SearchValueChangedImpl _value,
      $Res Function(_$SearchValueChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchValue = null,
  }) {
    return _then(_$SearchValueChangedImpl(
      null == searchValue
          ? _value.searchValue
          : searchValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchValueChangedImpl implements SearchValueChanged {
  const _$SearchValueChangedImpl(this.searchValue);

  @override
  final String searchValue;

  @override
  String toString() {
    return 'SearchEvent.searchValueChanged(searchValue: $searchValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchValueChangedImpl &&
            (identical(other.searchValue, searchValue) ||
                other.searchValue == searchValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchValueChangedImplCopyWith<_$SearchValueChangedImpl> get copyWith =>
      __$$SearchValueChangedImplCopyWithImpl<_$SearchValueChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchValue) searchValueChanged,
    required TResult Function() valueDeleted,
  }) {
    return searchValueChanged(searchValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchValue)? searchValueChanged,
    TResult? Function()? valueDeleted,
  }) {
    return searchValueChanged?.call(searchValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchValue)? searchValueChanged,
    TResult Function()? valueDeleted,
    required TResult orElse(),
  }) {
    if (searchValueChanged != null) {
      return searchValueChanged(searchValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchValueChanged value) searchValueChanged,
    required TResult Function(ValueDeleted value) valueDeleted,
  }) {
    return searchValueChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchValueChanged value)? searchValueChanged,
    TResult? Function(ValueDeleted value)? valueDeleted,
  }) {
    return searchValueChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchValueChanged value)? searchValueChanged,
    TResult Function(ValueDeleted value)? valueDeleted,
    required TResult orElse(),
  }) {
    if (searchValueChanged != null) {
      return searchValueChanged(this);
    }
    return orElse();
  }
}

abstract class SearchValueChanged implements SearchEvent {
  const factory SearchValueChanged(final String searchValue) =
      _$SearchValueChangedImpl;

  String get searchValue;
  @JsonKey(ignore: true)
  _$$SearchValueChangedImplCopyWith<_$SearchValueChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValueDeletedImplCopyWith<$Res> {
  factory _$$ValueDeletedImplCopyWith(
          _$ValueDeletedImpl value, $Res Function(_$ValueDeletedImpl) then) =
      __$$ValueDeletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ValueDeletedImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$ValueDeletedImpl>
    implements _$$ValueDeletedImplCopyWith<$Res> {
  __$$ValueDeletedImplCopyWithImpl(
      _$ValueDeletedImpl _value, $Res Function(_$ValueDeletedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ValueDeletedImpl implements ValueDeleted {
  const _$ValueDeletedImpl();

  @override
  String toString() {
    return 'SearchEvent.valueDeleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ValueDeletedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchValue) searchValueChanged,
    required TResult Function() valueDeleted,
  }) {
    return valueDeleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchValue)? searchValueChanged,
    TResult? Function()? valueDeleted,
  }) {
    return valueDeleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchValue)? searchValueChanged,
    TResult Function()? valueDeleted,
    required TResult orElse(),
  }) {
    if (valueDeleted != null) {
      return valueDeleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchValueChanged value) searchValueChanged,
    required TResult Function(ValueDeleted value) valueDeleted,
  }) {
    return valueDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchValueChanged value)? searchValueChanged,
    TResult? Function(ValueDeleted value)? valueDeleted,
  }) {
    return valueDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchValueChanged value)? searchValueChanged,
    TResult Function(ValueDeleted value)? valueDeleted,
    required TResult orElse(),
  }) {
    if (valueDeleted != null) {
      return valueDeleted(this);
    }
    return orElse();
  }
}

abstract class ValueDeleted implements SearchEvent {
  const factory ValueDeleted() = _$ValueDeletedImpl;
}

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> allData) loadedData,
    required TResult Function() notFound,
    required TResult Function() connection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> allData)? loadedData,
    TResult? Function()? notFound,
    TResult? Function()? connection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> allData)? loadedData,
    TResult Function()? notFound,
    TResult Function()? connection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadedData value) loadedData,
    required TResult Function(NotFound value) notFound,
    required TResult Function(Connection value) connection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(LoadedData value)? loadedData,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(Connection value)? connection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadedData value)? loadedData,
    TResult Function(NotFound value)? notFound,
    TResult Function(Connection value)? connection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

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
    extends _$SearchStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'SearchState.initial()';
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
    required TResult Function(List<dynamic> allData) loadedData,
    required TResult Function() notFound,
    required TResult Function() connection,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> allData)? loadedData,
    TResult? Function()? notFound,
    TResult? Function()? connection,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> allData)? loadedData,
    TResult Function()? notFound,
    TResult Function()? connection,
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
    required TResult Function(LoadedData value) loadedData,
    required TResult Function(NotFound value) notFound,
    required TResult Function(Connection value) connection,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(LoadedData value)? loadedData,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(Connection value)? connection,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadedData value)? loadedData,
    TResult Function(NotFound value)? notFound,
    TResult Function(Connection value)? connection,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SearchState {
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
    extends _$SearchStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'SearchState.loading()';
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
    required TResult Function(List<dynamic> allData) loadedData,
    required TResult Function() notFound,
    required TResult Function() connection,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> allData)? loadedData,
    TResult? Function()? notFound,
    TResult? Function()? connection,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> allData)? loadedData,
    TResult Function()? notFound,
    TResult Function()? connection,
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
    required TResult Function(LoadedData value) loadedData,
    required TResult Function(NotFound value) notFound,
    required TResult Function(Connection value) connection,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(LoadedData value)? loadedData,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(Connection value)? connection,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadedData value)? loadedData,
    TResult Function(NotFound value)? notFound,
    TResult Function(Connection value)? connection,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements SearchState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedDataImplCopyWith<$Res> {
  factory _$$LoadedDataImplCopyWith(
          _$LoadedDataImpl value, $Res Function(_$LoadedDataImpl) then) =
      __$$LoadedDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<dynamic> allData});
}

/// @nodoc
class __$$LoadedDataImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$LoadedDataImpl>
    implements _$$LoadedDataImplCopyWith<$Res> {
  __$$LoadedDataImplCopyWithImpl(
      _$LoadedDataImpl _value, $Res Function(_$LoadedDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allData = null,
  }) {
    return _then(_$LoadedDataImpl(
      allData: null == allData
          ? _value._allData
          : allData // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$LoadedDataImpl implements LoadedData {
  const _$LoadedDataImpl({required final List<dynamic> allData})
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
    return 'SearchState.loadedData(allData: $allData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedDataImpl &&
            const DeepCollectionEquality().equals(other._allData, _allData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_allData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedDataImplCopyWith<_$LoadedDataImpl> get copyWith =>
      __$$LoadedDataImplCopyWithImpl<_$LoadedDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> allData) loadedData,
    required TResult Function() notFound,
    required TResult Function() connection,
  }) {
    return loadedData(allData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> allData)? loadedData,
    TResult? Function()? notFound,
    TResult? Function()? connection,
  }) {
    return loadedData?.call(allData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> allData)? loadedData,
    TResult Function()? notFound,
    TResult Function()? connection,
    required TResult orElse(),
  }) {
    if (loadedData != null) {
      return loadedData(allData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadedData value) loadedData,
    required TResult Function(NotFound value) notFound,
    required TResult Function(Connection value) connection,
  }) {
    return loadedData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(LoadedData value)? loadedData,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(Connection value)? connection,
  }) {
    return loadedData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadedData value)? loadedData,
    TResult Function(NotFound value)? notFound,
    TResult Function(Connection value)? connection,
    required TResult orElse(),
  }) {
    if (loadedData != null) {
      return loadedData(this);
    }
    return orElse();
  }
}

abstract class LoadedData implements SearchState {
  const factory LoadedData({required final List<dynamic> allData}) =
      _$LoadedDataImpl;

  List<dynamic> get allData;
  @JsonKey(ignore: true)
  _$$LoadedDataImplCopyWith<_$LoadedDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotFoundImplCopyWith<$Res> {
  factory _$$NotFoundImplCopyWith(
          _$NotFoundImpl value, $Res Function(_$NotFoundImpl) then) =
      __$$NotFoundImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotFoundImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$NotFoundImpl>
    implements _$$NotFoundImplCopyWith<$Res> {
  __$$NotFoundImplCopyWithImpl(
      _$NotFoundImpl _value, $Res Function(_$NotFoundImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotFoundImpl implements NotFound {
  const _$NotFoundImpl();

  @override
  String toString() {
    return 'SearchState.notFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotFoundImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> allData) loadedData,
    required TResult Function() notFound,
    required TResult Function() connection,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> allData)? loadedData,
    TResult? Function()? notFound,
    TResult? Function()? connection,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> allData)? loadedData,
    TResult Function()? notFound,
    TResult Function()? connection,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadedData value) loadedData,
    required TResult Function(NotFound value) notFound,
    required TResult Function(Connection value) connection,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(LoadedData value)? loadedData,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(Connection value)? connection,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadedData value)? loadedData,
    TResult Function(NotFound value)? notFound,
    TResult Function(Connection value)? connection,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NotFound implements SearchState {
  const factory NotFound() = _$NotFoundImpl;
}

/// @nodoc
abstract class _$$ConnectionImplCopyWith<$Res> {
  factory _$$ConnectionImplCopyWith(
          _$ConnectionImpl value, $Res Function(_$ConnectionImpl) then) =
      __$$ConnectionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectionImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$ConnectionImpl>
    implements _$$ConnectionImplCopyWith<$Res> {
  __$$ConnectionImplCopyWithImpl(
      _$ConnectionImpl _value, $Res Function(_$ConnectionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConnectionImpl implements Connection {
  const _$ConnectionImpl();

  @override
  String toString() {
    return 'SearchState.connection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConnectionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> allData) loadedData,
    required TResult Function() notFound,
    required TResult Function() connection,
  }) {
    return connection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> allData)? loadedData,
    TResult? Function()? notFound,
    TResult? Function()? connection,
  }) {
    return connection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> allData)? loadedData,
    TResult Function()? notFound,
    TResult Function()? connection,
    required TResult orElse(),
  }) {
    if (connection != null) {
      return connection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadedData value) loadedData,
    required TResult Function(NotFound value) notFound,
    required TResult Function(Connection value) connection,
  }) {
    return connection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(LoadedData value)? loadedData,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(Connection value)? connection,
  }) {
    return connection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadedData value)? loadedData,
    TResult Function(NotFound value)? notFound,
    TResult Function(Connection value)? connection,
    required TResult orElse(),
  }) {
    if (connection != null) {
      return connection(this);
    }
    return orElse();
  }
}

abstract class Connection implements SearchState {
  const factory Connection() = _$ConnectionImpl;
}
