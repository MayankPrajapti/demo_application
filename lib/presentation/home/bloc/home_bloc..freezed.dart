// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc..dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            LoadingStatus loadingStatus, ClientFailure? failure)
        empty,
    required TResult Function(
            LoadingStatus loadingStatus, LeadDataModel leadData)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(LoadingStatus loadingStatus, ClientFailure? failure)?
        empty,
    TResult? Function(LoadingStatus loadingStatus, LeadDataModel leadData)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(LoadingStatus loadingStatus, ClientFailure? failure)?
        empty,
    TResult Function(LoadingStatus loadingStatus, LeadDataModel leadData)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeLoadingState value) loading,
    required TResult Function(_HomeEmptyState value) empty,
    required TResult Function(_HomeLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeLoadingState value)? loading,
    TResult? Function(_HomeEmptyState value)? empty,
    TResult? Function(_HomeLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeLoadingState value)? loading,
    TResult Function(_HomeEmptyState value)? empty,
    TResult Function(_HomeLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_HomeLoadingStateCopyWith<$Res> {
  factory _$$_HomeLoadingStateCopyWith(
          _$_HomeLoadingState value, $Res Function(_$_HomeLoadingState) then) =
      __$$_HomeLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HomeLoadingStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeLoadingState>
    implements _$$_HomeLoadingStateCopyWith<$Res> {
  __$$_HomeLoadingStateCopyWithImpl(
      _$_HomeLoadingState _value, $Res Function(_$_HomeLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_HomeLoadingState implements _HomeLoadingState {
  const _$_HomeLoadingState();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_HomeLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            LoadingStatus loadingStatus, ClientFailure? failure)
        empty,
    required TResult Function(
            LoadingStatus loadingStatus, LeadDataModel leadData)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(LoadingStatus loadingStatus, ClientFailure? failure)?
        empty,
    TResult? Function(LoadingStatus loadingStatus, LeadDataModel leadData)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(LoadingStatus loadingStatus, ClientFailure? failure)?
        empty,
    TResult Function(LoadingStatus loadingStatus, LeadDataModel leadData)?
        loaded,
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
    required TResult Function(_HomeLoadingState value) loading,
    required TResult Function(_HomeEmptyState value) empty,
    required TResult Function(_HomeLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeLoadingState value)? loading,
    TResult? Function(_HomeEmptyState value)? empty,
    TResult? Function(_HomeLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeLoadingState value)? loading,
    TResult Function(_HomeEmptyState value)? empty,
    TResult Function(_HomeLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _HomeLoadingState implements HomeState {
  const factory _HomeLoadingState() = _$_HomeLoadingState;
}

/// @nodoc
abstract class _$$_HomeEmptyStateCopyWith<$Res> {
  factory _$$_HomeEmptyStateCopyWith(
          _$_HomeEmptyState value, $Res Function(_$_HomeEmptyState) then) =
      __$$_HomeEmptyStateCopyWithImpl<$Res>;
  @useResult
  $Res call({LoadingStatus loadingStatus, ClientFailure? failure});
}

/// @nodoc
class __$$_HomeEmptyStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeEmptyState>
    implements _$$_HomeEmptyStateCopyWith<$Res> {
  __$$_HomeEmptyStateCopyWithImpl(
      _$_HomeEmptyState _value, $Res Function(_$_HomeEmptyState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadingStatus = null,
    Object? failure = freezed,
  }) {
    return _then(_$_HomeEmptyState(
      null == loadingStatus
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
      freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ClientFailure?,
    ));
  }
}

/// @nodoc

class _$_HomeEmptyState implements _HomeEmptyState {
  const _$_HomeEmptyState(this.loadingStatus, this.failure);

  @override
  final LoadingStatus loadingStatus;
  @override
  final ClientFailure? failure;

  @override
  String toString() {
    return 'HomeState.empty(loadingStatus: $loadingStatus, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeEmptyState &&
            (identical(other.loadingStatus, loadingStatus) ||
                other.loadingStatus == loadingStatus) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loadingStatus, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeEmptyStateCopyWith<_$_HomeEmptyState> get copyWith =>
      __$$_HomeEmptyStateCopyWithImpl<_$_HomeEmptyState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            LoadingStatus loadingStatus, ClientFailure? failure)
        empty,
    required TResult Function(
            LoadingStatus loadingStatus, LeadDataModel leadData)
        loaded,
  }) {
    return empty(loadingStatus, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(LoadingStatus loadingStatus, ClientFailure? failure)?
        empty,
    TResult? Function(LoadingStatus loadingStatus, LeadDataModel leadData)?
        loaded,
  }) {
    return empty?.call(loadingStatus, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(LoadingStatus loadingStatus, ClientFailure? failure)?
        empty,
    TResult Function(LoadingStatus loadingStatus, LeadDataModel leadData)?
        loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(loadingStatus, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeLoadingState value) loading,
    required TResult Function(_HomeEmptyState value) empty,
    required TResult Function(_HomeLoadedState value) loaded,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeLoadingState value)? loading,
    TResult? Function(_HomeEmptyState value)? empty,
    TResult? Function(_HomeLoadedState value)? loaded,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeLoadingState value)? loading,
    TResult Function(_HomeEmptyState value)? empty,
    TResult Function(_HomeLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _HomeEmptyState implements HomeState {
  const factory _HomeEmptyState(
          final LoadingStatus loadingStatus, final ClientFailure? failure) =
      _$_HomeEmptyState;

  LoadingStatus get loadingStatus;
  ClientFailure? get failure;
  @JsonKey(ignore: true)
  _$$_HomeEmptyStateCopyWith<_$_HomeEmptyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HomeLoadedStateCopyWith<$Res> {
  factory _$$_HomeLoadedStateCopyWith(
          _$_HomeLoadedState value, $Res Function(_$_HomeLoadedState) then) =
      __$$_HomeLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({LoadingStatus loadingStatus, LeadDataModel leadData});
}

/// @nodoc
class __$$_HomeLoadedStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeLoadedState>
    implements _$$_HomeLoadedStateCopyWith<$Res> {
  __$$_HomeLoadedStateCopyWithImpl(
      _$_HomeLoadedState _value, $Res Function(_$_HomeLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadingStatus = null,
    Object? leadData = null,
  }) {
    return _then(_$_HomeLoadedState(
      null == loadingStatus
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
      null == leadData
          ? _value.leadData
          : leadData // ignore: cast_nullable_to_non_nullable
              as LeadDataModel,
    ));
  }
}

/// @nodoc

class _$_HomeLoadedState implements _HomeLoadedState {
  const _$_HomeLoadedState(this.loadingStatus, this.leadData);

  @override
  final LoadingStatus loadingStatus;
  @override
  final LeadDataModel leadData;

  @override
  String toString() {
    return 'HomeState.loaded(loadingStatus: $loadingStatus, leadData: $leadData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeLoadedState &&
            (identical(other.loadingStatus, loadingStatus) ||
                other.loadingStatus == loadingStatus) &&
            (identical(other.leadData, leadData) ||
                other.leadData == leadData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loadingStatus, leadData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeLoadedStateCopyWith<_$_HomeLoadedState> get copyWith =>
      __$$_HomeLoadedStateCopyWithImpl<_$_HomeLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            LoadingStatus loadingStatus, ClientFailure? failure)
        empty,
    required TResult Function(
            LoadingStatus loadingStatus, LeadDataModel leadData)
        loaded,
  }) {
    return loaded(loadingStatus, leadData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(LoadingStatus loadingStatus, ClientFailure? failure)?
        empty,
    TResult? Function(LoadingStatus loadingStatus, LeadDataModel leadData)?
        loaded,
  }) {
    return loaded?.call(loadingStatus, leadData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(LoadingStatus loadingStatus, ClientFailure? failure)?
        empty,
    TResult Function(LoadingStatus loadingStatus, LeadDataModel leadData)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(loadingStatus, leadData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeLoadingState value) loading,
    required TResult Function(_HomeEmptyState value) empty,
    required TResult Function(_HomeLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeLoadingState value)? loading,
    TResult? Function(_HomeEmptyState value)? empty,
    TResult? Function(_HomeLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeLoadingState value)? loading,
    TResult Function(_HomeEmptyState value)? empty,
    TResult Function(_HomeLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _HomeLoadedState implements HomeState {
  const factory _HomeLoadedState(
          final LoadingStatus loadingStatus, final LeadDataModel leadData) =
      _$_HomeLoadedState;

  LoadingStatus get loadingStatus;
  LeadDataModel get leadData;
  @JsonKey(ignore: true)
  _$$_HomeLoadedStateCopyWith<_$_HomeLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLeadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getLeadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLeadData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLeadData value) getLeadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetLeadData value)? getLeadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLeadData value)? getLeadData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetLeadDataCopyWith<$Res> {
  factory _$$_GetLeadDataCopyWith(
          _$_GetLeadData value, $Res Function(_$_GetLeadData) then) =
      __$$_GetLeadDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetLeadDataCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_GetLeadData>
    implements _$$_GetLeadDataCopyWith<$Res> {
  __$$_GetLeadDataCopyWithImpl(
      _$_GetLeadData _value, $Res Function(_$_GetLeadData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetLeadData implements _GetLeadData {
  const _$_GetLeadData();

  @override
  String toString() {
    return 'HomeEvent.getLeadData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetLeadData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLeadData,
  }) {
    return getLeadData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getLeadData,
  }) {
    return getLeadData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLeadData,
    required TResult orElse(),
  }) {
    if (getLeadData != null) {
      return getLeadData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLeadData value) getLeadData,
  }) {
    return getLeadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetLeadData value)? getLeadData,
  }) {
    return getLeadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLeadData value)? getLeadData,
    required TResult orElse(),
  }) {
    if (getLeadData != null) {
      return getLeadData(this);
    }
    return orElse();
  }
}

abstract class _GetLeadData implements HomeEvent {
  const factory _GetLeadData() = _$_GetLeadData;
}
