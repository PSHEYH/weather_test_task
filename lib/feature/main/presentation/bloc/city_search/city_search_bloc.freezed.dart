// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CitySearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) searchCityByName,
    required TResult Function(Place place) selectCity,
    required TResult Function() fetchGeolocation,
    required TResult Function() clearSearchList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? searchCityByName,
    TResult? Function(Place place)? selectCity,
    TResult? Function()? fetchGeolocation,
    TResult? Function()? clearSearchList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? searchCityByName,
    TResult Function(Place place)? selectCity,
    TResult Function()? fetchGeolocation,
    TResult Function()? clearSearchList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchCityByName value) searchCityByName,
    required TResult Function(_SelectCity value) selectCity,
    required TResult Function(_FetchGeolocation value) fetchGeolocation,
    required TResult Function(_ClearSearchList value) clearSearchList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchCityByName value)? searchCityByName,
    TResult? Function(_SelectCity value)? selectCity,
    TResult? Function(_FetchGeolocation value)? fetchGeolocation,
    TResult? Function(_ClearSearchList value)? clearSearchList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchCityByName value)? searchCityByName,
    TResult Function(_SelectCity value)? selectCity,
    TResult Function(_FetchGeolocation value)? fetchGeolocation,
    TResult Function(_ClearSearchList value)? clearSearchList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitySearchEventCopyWith<$Res> {
  factory $CitySearchEventCopyWith(
          CitySearchEvent value, $Res Function(CitySearchEvent) then) =
      _$CitySearchEventCopyWithImpl<$Res, CitySearchEvent>;
}

/// @nodoc
class _$CitySearchEventCopyWithImpl<$Res, $Val extends CitySearchEvent>
    implements $CitySearchEventCopyWith<$Res> {
  _$CitySearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CitySearchEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SearchCityByNameImplCopyWith<$Res> {
  factory _$$SearchCityByNameImplCopyWith(_$SearchCityByNameImpl value,
          $Res Function(_$SearchCityByNameImpl) then) =
      __$$SearchCityByNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$SearchCityByNameImplCopyWithImpl<$Res>
    extends _$CitySearchEventCopyWithImpl<$Res, _$SearchCityByNameImpl>
    implements _$$SearchCityByNameImplCopyWith<$Res> {
  __$$SearchCityByNameImplCopyWithImpl(_$SearchCityByNameImpl _value,
      $Res Function(_$SearchCityByNameImpl) _then)
      : super(_value, _then);

  /// Create a copy of CitySearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$SearchCityByNameImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchCityByNameImpl implements _SearchCityByName {
  const _$SearchCityByNameImpl({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'CitySearchEvent.searchCityByName(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCityByNameImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of CitySearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCityByNameImplCopyWith<_$SearchCityByNameImpl> get copyWith =>
      __$$SearchCityByNameImplCopyWithImpl<_$SearchCityByNameImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) searchCityByName,
    required TResult Function(Place place) selectCity,
    required TResult Function() fetchGeolocation,
    required TResult Function() clearSearchList,
  }) {
    return searchCityByName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? searchCityByName,
    TResult? Function(Place place)? selectCity,
    TResult? Function()? fetchGeolocation,
    TResult? Function()? clearSearchList,
  }) {
    return searchCityByName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? searchCityByName,
    TResult Function(Place place)? selectCity,
    TResult Function()? fetchGeolocation,
    TResult Function()? clearSearchList,
    required TResult orElse(),
  }) {
    if (searchCityByName != null) {
      return searchCityByName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchCityByName value) searchCityByName,
    required TResult Function(_SelectCity value) selectCity,
    required TResult Function(_FetchGeolocation value) fetchGeolocation,
    required TResult Function(_ClearSearchList value) clearSearchList,
  }) {
    return searchCityByName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchCityByName value)? searchCityByName,
    TResult? Function(_SelectCity value)? selectCity,
    TResult? Function(_FetchGeolocation value)? fetchGeolocation,
    TResult? Function(_ClearSearchList value)? clearSearchList,
  }) {
    return searchCityByName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchCityByName value)? searchCityByName,
    TResult Function(_SelectCity value)? selectCity,
    TResult Function(_FetchGeolocation value)? fetchGeolocation,
    TResult Function(_ClearSearchList value)? clearSearchList,
    required TResult orElse(),
  }) {
    if (searchCityByName != null) {
      return searchCityByName(this);
    }
    return orElse();
  }
}

abstract class _SearchCityByName implements CitySearchEvent {
  const factory _SearchCityByName({required final String name}) =
      _$SearchCityByNameImpl;

  String get name;

  /// Create a copy of CitySearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchCityByNameImplCopyWith<_$SearchCityByNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectCityImplCopyWith<$Res> {
  factory _$$SelectCityImplCopyWith(
          _$SelectCityImpl value, $Res Function(_$SelectCityImpl) then) =
      __$$SelectCityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Place place});
}

/// @nodoc
class __$$SelectCityImplCopyWithImpl<$Res>
    extends _$CitySearchEventCopyWithImpl<$Res, _$SelectCityImpl>
    implements _$$SelectCityImplCopyWith<$Res> {
  __$$SelectCityImplCopyWithImpl(
      _$SelectCityImpl _value, $Res Function(_$SelectCityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CitySearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = null,
  }) {
    return _then(_$SelectCityImpl(
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place,
    ));
  }
}

/// @nodoc

class _$SelectCityImpl implements _SelectCity {
  const _$SelectCityImpl({required this.place});

  @override
  final Place place;

  @override
  String toString() {
    return 'CitySearchEvent.selectCity(place: $place)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectCityImpl &&
            (identical(other.place, place) || other.place == place));
  }

  @override
  int get hashCode => Object.hash(runtimeType, place);

  /// Create a copy of CitySearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectCityImplCopyWith<_$SelectCityImpl> get copyWith =>
      __$$SelectCityImplCopyWithImpl<_$SelectCityImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) searchCityByName,
    required TResult Function(Place place) selectCity,
    required TResult Function() fetchGeolocation,
    required TResult Function() clearSearchList,
  }) {
    return selectCity(place);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? searchCityByName,
    TResult? Function(Place place)? selectCity,
    TResult? Function()? fetchGeolocation,
    TResult? Function()? clearSearchList,
  }) {
    return selectCity?.call(place);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? searchCityByName,
    TResult Function(Place place)? selectCity,
    TResult Function()? fetchGeolocation,
    TResult Function()? clearSearchList,
    required TResult orElse(),
  }) {
    if (selectCity != null) {
      return selectCity(place);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchCityByName value) searchCityByName,
    required TResult Function(_SelectCity value) selectCity,
    required TResult Function(_FetchGeolocation value) fetchGeolocation,
    required TResult Function(_ClearSearchList value) clearSearchList,
  }) {
    return selectCity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchCityByName value)? searchCityByName,
    TResult? Function(_SelectCity value)? selectCity,
    TResult? Function(_FetchGeolocation value)? fetchGeolocation,
    TResult? Function(_ClearSearchList value)? clearSearchList,
  }) {
    return selectCity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchCityByName value)? searchCityByName,
    TResult Function(_SelectCity value)? selectCity,
    TResult Function(_FetchGeolocation value)? fetchGeolocation,
    TResult Function(_ClearSearchList value)? clearSearchList,
    required TResult orElse(),
  }) {
    if (selectCity != null) {
      return selectCity(this);
    }
    return orElse();
  }
}

abstract class _SelectCity implements CitySearchEvent {
  const factory _SelectCity({required final Place place}) = _$SelectCityImpl;

  Place get place;

  /// Create a copy of CitySearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectCityImplCopyWith<_$SelectCityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchGeolocationImplCopyWith<$Res> {
  factory _$$FetchGeolocationImplCopyWith(_$FetchGeolocationImpl value,
          $Res Function(_$FetchGeolocationImpl) then) =
      __$$FetchGeolocationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchGeolocationImplCopyWithImpl<$Res>
    extends _$CitySearchEventCopyWithImpl<$Res, _$FetchGeolocationImpl>
    implements _$$FetchGeolocationImplCopyWith<$Res> {
  __$$FetchGeolocationImplCopyWithImpl(_$FetchGeolocationImpl _value,
      $Res Function(_$FetchGeolocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of CitySearchEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchGeolocationImpl implements _FetchGeolocation {
  const _$FetchGeolocationImpl();

  @override
  String toString() {
    return 'CitySearchEvent.fetchGeolocation()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchGeolocationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) searchCityByName,
    required TResult Function(Place place) selectCity,
    required TResult Function() fetchGeolocation,
    required TResult Function() clearSearchList,
  }) {
    return fetchGeolocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? searchCityByName,
    TResult? Function(Place place)? selectCity,
    TResult? Function()? fetchGeolocation,
    TResult? Function()? clearSearchList,
  }) {
    return fetchGeolocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? searchCityByName,
    TResult Function(Place place)? selectCity,
    TResult Function()? fetchGeolocation,
    TResult Function()? clearSearchList,
    required TResult orElse(),
  }) {
    if (fetchGeolocation != null) {
      return fetchGeolocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchCityByName value) searchCityByName,
    required TResult Function(_SelectCity value) selectCity,
    required TResult Function(_FetchGeolocation value) fetchGeolocation,
    required TResult Function(_ClearSearchList value) clearSearchList,
  }) {
    return fetchGeolocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchCityByName value)? searchCityByName,
    TResult? Function(_SelectCity value)? selectCity,
    TResult? Function(_FetchGeolocation value)? fetchGeolocation,
    TResult? Function(_ClearSearchList value)? clearSearchList,
  }) {
    return fetchGeolocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchCityByName value)? searchCityByName,
    TResult Function(_SelectCity value)? selectCity,
    TResult Function(_FetchGeolocation value)? fetchGeolocation,
    TResult Function(_ClearSearchList value)? clearSearchList,
    required TResult orElse(),
  }) {
    if (fetchGeolocation != null) {
      return fetchGeolocation(this);
    }
    return orElse();
  }
}

abstract class _FetchGeolocation implements CitySearchEvent {
  const factory _FetchGeolocation() = _$FetchGeolocationImpl;
}

/// @nodoc
abstract class _$$ClearSearchListImplCopyWith<$Res> {
  factory _$$ClearSearchListImplCopyWith(_$ClearSearchListImpl value,
          $Res Function(_$ClearSearchListImpl) then) =
      __$$ClearSearchListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearSearchListImplCopyWithImpl<$Res>
    extends _$CitySearchEventCopyWithImpl<$Res, _$ClearSearchListImpl>
    implements _$$ClearSearchListImplCopyWith<$Res> {
  __$$ClearSearchListImplCopyWithImpl(
      _$ClearSearchListImpl _value, $Res Function(_$ClearSearchListImpl) _then)
      : super(_value, _then);

  /// Create a copy of CitySearchEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearSearchListImpl implements _ClearSearchList {
  const _$ClearSearchListImpl();

  @override
  String toString() {
    return 'CitySearchEvent.clearSearchList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearSearchListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) searchCityByName,
    required TResult Function(Place place) selectCity,
    required TResult Function() fetchGeolocation,
    required TResult Function() clearSearchList,
  }) {
    return clearSearchList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? searchCityByName,
    TResult? Function(Place place)? selectCity,
    TResult? Function()? fetchGeolocation,
    TResult? Function()? clearSearchList,
  }) {
    return clearSearchList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? searchCityByName,
    TResult Function(Place place)? selectCity,
    TResult Function()? fetchGeolocation,
    TResult Function()? clearSearchList,
    required TResult orElse(),
  }) {
    if (clearSearchList != null) {
      return clearSearchList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchCityByName value) searchCityByName,
    required TResult Function(_SelectCity value) selectCity,
    required TResult Function(_FetchGeolocation value) fetchGeolocation,
    required TResult Function(_ClearSearchList value) clearSearchList,
  }) {
    return clearSearchList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchCityByName value)? searchCityByName,
    TResult? Function(_SelectCity value)? selectCity,
    TResult? Function(_FetchGeolocation value)? fetchGeolocation,
    TResult? Function(_ClearSearchList value)? clearSearchList,
  }) {
    return clearSearchList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchCityByName value)? searchCityByName,
    TResult Function(_SelectCity value)? selectCity,
    TResult Function(_FetchGeolocation value)? fetchGeolocation,
    TResult Function(_ClearSearchList value)? clearSearchList,
    required TResult orElse(),
  }) {
    if (clearSearchList != null) {
      return clearSearchList(this);
    }
    return orElse();
  }
}

abstract class _ClearSearchList implements CitySearchEvent {
  const factory _ClearSearchList() = _$ClearSearchListImpl;
}

/// @nodoc
mixin _$CitySearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Place? place) loading,
    required TResult Function(Place? place, List<Place> searchList)
        loadedSearchList,
    required TResult Function(Place place) success,
    required TResult Function(String message, Place? place) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Place? place)? loading,
    TResult? Function(Place? place, List<Place> searchList)? loadedSearchList,
    TResult? Function(Place place)? success,
    TResult? Function(String message, Place? place)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Place? place)? loading,
    TResult Function(Place? place, List<Place> searchList)? loadedSearchList,
    TResult Function(Place place)? success,
    TResult Function(String message, Place? place)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedSearchList value) loadedSearchList,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedSearchList value)? loadedSearchList,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedSearchList value)? loadedSearchList,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitySearchStateCopyWith<$Res> {
  factory $CitySearchStateCopyWith(
          CitySearchState value, $Res Function(CitySearchState) then) =
      _$CitySearchStateCopyWithImpl<$Res, CitySearchState>;
}

/// @nodoc
class _$CitySearchStateCopyWithImpl<$Res, $Val extends CitySearchState>
    implements $CitySearchStateCopyWith<$Res> {
  _$CitySearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CitySearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CitySearchStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CitySearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl extends _Initial {
  const _$InitialImpl() : super._();

  @override
  String toString() {
    return 'CitySearchState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Place? place) loading,
    required TResult Function(Place? place, List<Place> searchList)
        loadedSearchList,
    required TResult Function(Place place) success,
    required TResult Function(String message, Place? place) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Place? place)? loading,
    TResult? Function(Place? place, List<Place> searchList)? loadedSearchList,
    TResult? Function(Place place)? success,
    TResult? Function(String message, Place? place)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Place? place)? loading,
    TResult Function(Place? place, List<Place> searchList)? loadedSearchList,
    TResult Function(Place place)? success,
    TResult Function(String message, Place? place)? failure,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedSearchList value) loadedSearchList,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedSearchList value)? loadedSearchList,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedSearchList value)? loadedSearchList,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends CitySearchState {
  const factory _Initial() = _$InitialImpl;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Place? place});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$CitySearchStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CitySearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = freezed,
  }) {
    return _then(_$LoadingImpl(
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place?,
    ));
  }
}

/// @nodoc

class _$LoadingImpl extends _Loading {
  const _$LoadingImpl({required this.place}) : super._();

  @override
  final Place? place;

  @override
  String toString() {
    return 'CitySearchState.loading(place: $place)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            (identical(other.place, place) || other.place == place));
  }

  @override
  int get hashCode => Object.hash(runtimeType, place);

  /// Create a copy of CitySearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Place? place) loading,
    required TResult Function(Place? place, List<Place> searchList)
        loadedSearchList,
    required TResult Function(Place place) success,
    required TResult Function(String message, Place? place) failure,
  }) {
    return loading(place);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Place? place)? loading,
    TResult? Function(Place? place, List<Place> searchList)? loadedSearchList,
    TResult? Function(Place place)? success,
    TResult? Function(String message, Place? place)? failure,
  }) {
    return loading?.call(place);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Place? place)? loading,
    TResult Function(Place? place, List<Place> searchList)? loadedSearchList,
    TResult Function(Place place)? success,
    TResult Function(String message, Place? place)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(place);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedSearchList value) loadedSearchList,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedSearchList value)? loadedSearchList,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedSearchList value)? loadedSearchList,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends CitySearchState {
  const factory _Loading({required final Place? place}) = _$LoadingImpl;
  const _Loading._() : super._();

  Place? get place;

  /// Create a copy of CitySearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedSearchListImplCopyWith<$Res> {
  factory _$$LoadedSearchListImplCopyWith(_$LoadedSearchListImpl value,
          $Res Function(_$LoadedSearchListImpl) then) =
      __$$LoadedSearchListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Place? place, List<Place> searchList});
}

/// @nodoc
class __$$LoadedSearchListImplCopyWithImpl<$Res>
    extends _$CitySearchStateCopyWithImpl<$Res, _$LoadedSearchListImpl>
    implements _$$LoadedSearchListImplCopyWith<$Res> {
  __$$LoadedSearchListImplCopyWithImpl(_$LoadedSearchListImpl _value,
      $Res Function(_$LoadedSearchListImpl) _then)
      : super(_value, _then);

  /// Create a copy of CitySearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = freezed,
    Object? searchList = null,
  }) {
    return _then(_$LoadedSearchListImpl(
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place?,
      searchList: null == searchList
          ? _value._searchList
          : searchList // ignore: cast_nullable_to_non_nullable
              as List<Place>,
    ));
  }
}

/// @nodoc

class _$LoadedSearchListImpl extends _LoadedSearchList {
  const _$LoadedSearchListImpl(
      {required this.place, required final List<Place> searchList})
      : _searchList = searchList,
        super._();

  @override
  final Place? place;
  final List<Place> _searchList;
  @override
  List<Place> get searchList {
    if (_searchList is EqualUnmodifiableListView) return _searchList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchList);
  }

  @override
  String toString() {
    return 'CitySearchState.loadedSearchList(place: $place, searchList: $searchList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedSearchListImpl &&
            (identical(other.place, place) || other.place == place) &&
            const DeepCollectionEquality()
                .equals(other._searchList, _searchList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, place, const DeepCollectionEquality().hash(_searchList));

  /// Create a copy of CitySearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedSearchListImplCopyWith<_$LoadedSearchListImpl> get copyWith =>
      __$$LoadedSearchListImplCopyWithImpl<_$LoadedSearchListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Place? place) loading,
    required TResult Function(Place? place, List<Place> searchList)
        loadedSearchList,
    required TResult Function(Place place) success,
    required TResult Function(String message, Place? place) failure,
  }) {
    return loadedSearchList(place, searchList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Place? place)? loading,
    TResult? Function(Place? place, List<Place> searchList)? loadedSearchList,
    TResult? Function(Place place)? success,
    TResult? Function(String message, Place? place)? failure,
  }) {
    return loadedSearchList?.call(place, searchList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Place? place)? loading,
    TResult Function(Place? place, List<Place> searchList)? loadedSearchList,
    TResult Function(Place place)? success,
    TResult Function(String message, Place? place)? failure,
    required TResult orElse(),
  }) {
    if (loadedSearchList != null) {
      return loadedSearchList(place, searchList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedSearchList value) loadedSearchList,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return loadedSearchList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedSearchList value)? loadedSearchList,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return loadedSearchList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedSearchList value)? loadedSearchList,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loadedSearchList != null) {
      return loadedSearchList(this);
    }
    return orElse();
  }
}

abstract class _LoadedSearchList extends CitySearchState {
  const factory _LoadedSearchList(
      {required final Place? place,
      required final List<Place> searchList}) = _$LoadedSearchListImpl;
  const _LoadedSearchList._() : super._();

  Place? get place;
  List<Place> get searchList;

  /// Create a copy of CitySearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedSearchListImplCopyWith<_$LoadedSearchListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Place place});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$CitySearchStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of CitySearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = null,
  }) {
    return _then(_$SuccessImpl(
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place,
    ));
  }
}

/// @nodoc

class _$SuccessImpl extends _Success {
  const _$SuccessImpl({required this.place}) : super._();

  @override
  final Place place;

  @override
  String toString() {
    return 'CitySearchState.success(place: $place)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.place, place) || other.place == place));
  }

  @override
  int get hashCode => Object.hash(runtimeType, place);

  /// Create a copy of CitySearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Place? place) loading,
    required TResult Function(Place? place, List<Place> searchList)
        loadedSearchList,
    required TResult Function(Place place) success,
    required TResult Function(String message, Place? place) failure,
  }) {
    return success(place);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Place? place)? loading,
    TResult? Function(Place? place, List<Place> searchList)? loadedSearchList,
    TResult? Function(Place place)? success,
    TResult? Function(String message, Place? place)? failure,
  }) {
    return success?.call(place);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Place? place)? loading,
    TResult Function(Place? place, List<Place> searchList)? loadedSearchList,
    TResult Function(Place place)? success,
    TResult Function(String message, Place? place)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(place);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedSearchList value) loadedSearchList,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedSearchList value)? loadedSearchList,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedSearchList value)? loadedSearchList,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success extends CitySearchState {
  const factory _Success({required final Place place}) = _$SuccessImpl;
  const _Success._() : super._();

  Place get place;

  /// Create a copy of CitySearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, Place? place});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$CitySearchStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of CitySearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? place = freezed,
  }) {
    return _then(_$FailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place?,
    ));
  }
}

/// @nodoc

class _$FailureImpl extends _Failure {
  const _$FailureImpl(this.message, {required this.place}) : super._();

  @override
  final String message;
  @override
  final Place? place;

  @override
  String toString() {
    return 'CitySearchState.failure(message: $message, place: $place)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.place, place) || other.place == place));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, place);

  /// Create a copy of CitySearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Place? place) loading,
    required TResult Function(Place? place, List<Place> searchList)
        loadedSearchList,
    required TResult Function(Place place) success,
    required TResult Function(String message, Place? place) failure,
  }) {
    return failure(message, place);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Place? place)? loading,
    TResult? Function(Place? place, List<Place> searchList)? loadedSearchList,
    TResult? Function(Place place)? success,
    TResult? Function(String message, Place? place)? failure,
  }) {
    return failure?.call(message, place);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Place? place)? loading,
    TResult Function(Place? place, List<Place> searchList)? loadedSearchList,
    TResult Function(Place place)? success,
    TResult Function(String message, Place? place)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message, place);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedSearchList value) loadedSearchList,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedSearchList value)? loadedSearchList,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedSearchList value)? loadedSearchList,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure extends CitySearchState {
  const factory _Failure(final String message, {required final Place? place}) =
      _$FailureImpl;
  const _Failure._() : super._();

  String get message;
  Place? get place;

  /// Create a copy of CitySearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
