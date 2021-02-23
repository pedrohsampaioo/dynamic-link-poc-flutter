// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'dynamic_link_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$DynamicLinkStateTearOff {
  const _$DynamicLinkStateTearOff();

// ignore: unused_element
  DynamicLinkStateStarted started() {
    return const DynamicLinkStateStarted();
  }

// ignore: unused_element
  DynamicLinkStateLoadInProgress loadInProgress() {
    return const DynamicLinkStateLoadInProgress();
  }

// ignore: unused_element
  DynamicLinkStateLoadRedirect redirect(void Function() redirectCallback) {
    return DynamicLinkStateLoadRedirect(
      redirectCallback,
    );
  }

// ignore: unused_element
  DynamicLinkStateNotRedirect notRedirect() {
    return const DynamicLinkStateNotRedirect();
  }
}

/// @nodoc
// ignore: unused_element
const $DynamicLinkState = _$DynamicLinkStateTearOff();

/// @nodoc
mixin _$DynamicLinkState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult loadInProgress(),
    @required TResult redirect(void Function() redirectCallback),
    @required TResult notRedirect(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult loadInProgress(),
    TResult redirect(void Function() redirectCallback),
    TResult notRedirect(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(DynamicLinkStateStarted value),
    @required TResult loadInProgress(DynamicLinkStateLoadInProgress value),
    @required TResult redirect(DynamicLinkStateLoadRedirect value),
    @required TResult notRedirect(DynamicLinkStateNotRedirect value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(DynamicLinkStateStarted value),
    TResult loadInProgress(DynamicLinkStateLoadInProgress value),
    TResult redirect(DynamicLinkStateLoadRedirect value),
    TResult notRedirect(DynamicLinkStateNotRedirect value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $DynamicLinkStateCopyWith<$Res> {
  factory $DynamicLinkStateCopyWith(
          DynamicLinkState value, $Res Function(DynamicLinkState) then) =
      _$DynamicLinkStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DynamicLinkStateCopyWithImpl<$Res>
    implements $DynamicLinkStateCopyWith<$Res> {
  _$DynamicLinkStateCopyWithImpl(this._value, this._then);

  final DynamicLinkState _value;
  // ignore: unused_field
  final $Res Function(DynamicLinkState) _then;
}

/// @nodoc
abstract class $DynamicLinkStateStartedCopyWith<$Res> {
  factory $DynamicLinkStateStartedCopyWith(DynamicLinkStateStarted value,
          $Res Function(DynamicLinkStateStarted) then) =
      _$DynamicLinkStateStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$DynamicLinkStateStartedCopyWithImpl<$Res>
    extends _$DynamicLinkStateCopyWithImpl<$Res>
    implements $DynamicLinkStateStartedCopyWith<$Res> {
  _$DynamicLinkStateStartedCopyWithImpl(DynamicLinkStateStarted _value,
      $Res Function(DynamicLinkStateStarted) _then)
      : super(_value, (v) => _then(v as DynamicLinkStateStarted));

  @override
  DynamicLinkStateStarted get _value => super._value as DynamicLinkStateStarted;
}

/// @nodoc
class _$DynamicLinkStateStarted implements DynamicLinkStateStarted {
  const _$DynamicLinkStateStarted();

  @override
  String toString() {
    return 'DynamicLinkState.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DynamicLinkStateStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult loadInProgress(),
    @required TResult redirect(void Function() redirectCallback),
    @required TResult notRedirect(),
  }) {
    assert(started != null);
    assert(loadInProgress != null);
    assert(redirect != null);
    assert(notRedirect != null);
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult loadInProgress(),
    TResult redirect(void Function() redirectCallback),
    TResult notRedirect(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(DynamicLinkStateStarted value),
    @required TResult loadInProgress(DynamicLinkStateLoadInProgress value),
    @required TResult redirect(DynamicLinkStateLoadRedirect value),
    @required TResult notRedirect(DynamicLinkStateNotRedirect value),
  }) {
    assert(started != null);
    assert(loadInProgress != null);
    assert(redirect != null);
    assert(notRedirect != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(DynamicLinkStateStarted value),
    TResult loadInProgress(DynamicLinkStateLoadInProgress value),
    TResult redirect(DynamicLinkStateLoadRedirect value),
    TResult notRedirect(DynamicLinkStateNotRedirect value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class DynamicLinkStateStarted implements DynamicLinkState {
  const factory DynamicLinkStateStarted() = _$DynamicLinkStateStarted;
}

/// @nodoc
abstract class $DynamicLinkStateLoadInProgressCopyWith<$Res> {
  factory $DynamicLinkStateLoadInProgressCopyWith(
          DynamicLinkStateLoadInProgress value,
          $Res Function(DynamicLinkStateLoadInProgress) then) =
      _$DynamicLinkStateLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$DynamicLinkStateLoadInProgressCopyWithImpl<$Res>
    extends _$DynamicLinkStateCopyWithImpl<$Res>
    implements $DynamicLinkStateLoadInProgressCopyWith<$Res> {
  _$DynamicLinkStateLoadInProgressCopyWithImpl(
      DynamicLinkStateLoadInProgress _value,
      $Res Function(DynamicLinkStateLoadInProgress) _then)
      : super(_value, (v) => _then(v as DynamicLinkStateLoadInProgress));

  @override
  DynamicLinkStateLoadInProgress get _value =>
      super._value as DynamicLinkStateLoadInProgress;
}

/// @nodoc
class _$DynamicLinkStateLoadInProgress
    implements DynamicLinkStateLoadInProgress {
  const _$DynamicLinkStateLoadInProgress();

  @override
  String toString() {
    return 'DynamicLinkState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DynamicLinkStateLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult loadInProgress(),
    @required TResult redirect(void Function() redirectCallback),
    @required TResult notRedirect(),
  }) {
    assert(started != null);
    assert(loadInProgress != null);
    assert(redirect != null);
    assert(notRedirect != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult loadInProgress(),
    TResult redirect(void Function() redirectCallback),
    TResult notRedirect(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(DynamicLinkStateStarted value),
    @required TResult loadInProgress(DynamicLinkStateLoadInProgress value),
    @required TResult redirect(DynamicLinkStateLoadRedirect value),
    @required TResult notRedirect(DynamicLinkStateNotRedirect value),
  }) {
    assert(started != null);
    assert(loadInProgress != null);
    assert(redirect != null);
    assert(notRedirect != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(DynamicLinkStateStarted value),
    TResult loadInProgress(DynamicLinkStateLoadInProgress value),
    TResult redirect(DynamicLinkStateLoadRedirect value),
    TResult notRedirect(DynamicLinkStateNotRedirect value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class DynamicLinkStateLoadInProgress implements DynamicLinkState {
  const factory DynamicLinkStateLoadInProgress() =
      _$DynamicLinkStateLoadInProgress;
}

/// @nodoc
abstract class $DynamicLinkStateLoadRedirectCopyWith<$Res> {
  factory $DynamicLinkStateLoadRedirectCopyWith(
          DynamicLinkStateLoadRedirect value,
          $Res Function(DynamicLinkStateLoadRedirect) then) =
      _$DynamicLinkStateLoadRedirectCopyWithImpl<$Res>;
  $Res call({void Function() redirectCallback});
}

/// @nodoc
class _$DynamicLinkStateLoadRedirectCopyWithImpl<$Res>
    extends _$DynamicLinkStateCopyWithImpl<$Res>
    implements $DynamicLinkStateLoadRedirectCopyWith<$Res> {
  _$DynamicLinkStateLoadRedirectCopyWithImpl(
      DynamicLinkStateLoadRedirect _value,
      $Res Function(DynamicLinkStateLoadRedirect) _then)
      : super(_value, (v) => _then(v as DynamicLinkStateLoadRedirect));

  @override
  DynamicLinkStateLoadRedirect get _value =>
      super._value as DynamicLinkStateLoadRedirect;

  @override
  $Res call({
    Object redirectCallback = freezed,
  }) {
    return _then(DynamicLinkStateLoadRedirect(
      redirectCallback == freezed
          ? _value.redirectCallback
          : redirectCallback as void Function(),
    ));
  }
}

/// @nodoc
class _$DynamicLinkStateLoadRedirect implements DynamicLinkStateLoadRedirect {
  const _$DynamicLinkStateLoadRedirect(this.redirectCallback)
      : assert(redirectCallback != null);

  @override
  final void Function() redirectCallback;

  @override
  String toString() {
    return 'DynamicLinkState.redirect(redirectCallback: $redirectCallback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DynamicLinkStateLoadRedirect &&
            (identical(other.redirectCallback, redirectCallback) ||
                const DeepCollectionEquality()
                    .equals(other.redirectCallback, redirectCallback)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(redirectCallback);

  @JsonKey(ignore: true)
  @override
  $DynamicLinkStateLoadRedirectCopyWith<DynamicLinkStateLoadRedirect>
      get copyWith => _$DynamicLinkStateLoadRedirectCopyWithImpl<
          DynamicLinkStateLoadRedirect>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult loadInProgress(),
    @required TResult redirect(void Function() redirectCallback),
    @required TResult notRedirect(),
  }) {
    assert(started != null);
    assert(loadInProgress != null);
    assert(redirect != null);
    assert(notRedirect != null);
    return redirect(redirectCallback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult loadInProgress(),
    TResult redirect(void Function() redirectCallback),
    TResult notRedirect(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (redirect != null) {
      return redirect(redirectCallback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(DynamicLinkStateStarted value),
    @required TResult loadInProgress(DynamicLinkStateLoadInProgress value),
    @required TResult redirect(DynamicLinkStateLoadRedirect value),
    @required TResult notRedirect(DynamicLinkStateNotRedirect value),
  }) {
    assert(started != null);
    assert(loadInProgress != null);
    assert(redirect != null);
    assert(notRedirect != null);
    return redirect(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(DynamicLinkStateStarted value),
    TResult loadInProgress(DynamicLinkStateLoadInProgress value),
    TResult redirect(DynamicLinkStateLoadRedirect value),
    TResult notRedirect(DynamicLinkStateNotRedirect value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (redirect != null) {
      return redirect(this);
    }
    return orElse();
  }
}

abstract class DynamicLinkStateLoadRedirect implements DynamicLinkState {
  const factory DynamicLinkStateLoadRedirect(void Function() redirectCallback) =
      _$DynamicLinkStateLoadRedirect;

  void Function() get redirectCallback;
  @JsonKey(ignore: true)
  $DynamicLinkStateLoadRedirectCopyWith<DynamicLinkStateLoadRedirect>
      get copyWith;
}

/// @nodoc
abstract class $DynamicLinkStateNotRedirectCopyWith<$Res> {
  factory $DynamicLinkStateNotRedirectCopyWith(
          DynamicLinkStateNotRedirect value,
          $Res Function(DynamicLinkStateNotRedirect) then) =
      _$DynamicLinkStateNotRedirectCopyWithImpl<$Res>;
}

/// @nodoc
class _$DynamicLinkStateNotRedirectCopyWithImpl<$Res>
    extends _$DynamicLinkStateCopyWithImpl<$Res>
    implements $DynamicLinkStateNotRedirectCopyWith<$Res> {
  _$DynamicLinkStateNotRedirectCopyWithImpl(DynamicLinkStateNotRedirect _value,
      $Res Function(DynamicLinkStateNotRedirect) _then)
      : super(_value, (v) => _then(v as DynamicLinkStateNotRedirect));

  @override
  DynamicLinkStateNotRedirect get _value =>
      super._value as DynamicLinkStateNotRedirect;
}

/// @nodoc
class _$DynamicLinkStateNotRedirect implements DynamicLinkStateNotRedirect {
  const _$DynamicLinkStateNotRedirect();

  @override
  String toString() {
    return 'DynamicLinkState.notRedirect()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DynamicLinkStateNotRedirect);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult loadInProgress(),
    @required TResult redirect(void Function() redirectCallback),
    @required TResult notRedirect(),
  }) {
    assert(started != null);
    assert(loadInProgress != null);
    assert(redirect != null);
    assert(notRedirect != null);
    return notRedirect();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult loadInProgress(),
    TResult redirect(void Function() redirectCallback),
    TResult notRedirect(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (notRedirect != null) {
      return notRedirect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(DynamicLinkStateStarted value),
    @required TResult loadInProgress(DynamicLinkStateLoadInProgress value),
    @required TResult redirect(DynamicLinkStateLoadRedirect value),
    @required TResult notRedirect(DynamicLinkStateNotRedirect value),
  }) {
    assert(started != null);
    assert(loadInProgress != null);
    assert(redirect != null);
    assert(notRedirect != null);
    return notRedirect(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(DynamicLinkStateStarted value),
    TResult loadInProgress(DynamicLinkStateLoadInProgress value),
    TResult redirect(DynamicLinkStateLoadRedirect value),
    TResult notRedirect(DynamicLinkStateNotRedirect value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (notRedirect != null) {
      return notRedirect(this);
    }
    return orElse();
  }
}

abstract class DynamicLinkStateNotRedirect implements DynamicLinkState {
  const factory DynamicLinkStateNotRedirect() = _$DynamicLinkStateNotRedirect;
}
