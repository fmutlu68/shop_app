// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'navigation_route.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NavigationRouteTearOff {
  const _$NavigationRouteTearOff();

  NavigationRouteHome navigateToHome(Widget screen) {
    return NavigationRouteHome(
      screen,
    );
  }

  NavigationRoutePayment navigateToPayment(Widget screen) {
    return NavigationRoutePayment(
      screen,
    );
  }

  NavigationRouteOnboard navigateToOnboard(OnboardView? view) {
    return NavigationRouteOnboard(
      view,
    );
  }
}

/// @nodoc
const $NavigationRoute = _$NavigationRouteTearOff();

/// @nodoc
mixin _$NavigationRoute {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Widget screen) navigateToHome,
    required TResult Function(Widget screen) navigateToPayment,
    required TResult Function(OnboardView? view) navigateToOnboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Widget screen)? navigateToHome,
    TResult Function(Widget screen)? navigateToPayment,
    TResult Function(OnboardView? view)? navigateToOnboard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigationRouteHome value) navigateToHome,
    required TResult Function(NavigationRoutePayment value) navigateToPayment,
    required TResult Function(NavigationRouteOnboard value) navigateToOnboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationRouteHome value)? navigateToHome,
    TResult Function(NavigationRoutePayment value)? navigateToPayment,
    TResult Function(NavigationRouteOnboard value)? navigateToOnboard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationRouteCopyWith<$Res> {
  factory $NavigationRouteCopyWith(
          NavigationRoute value, $Res Function(NavigationRoute) then) =
      _$NavigationRouteCopyWithImpl<$Res>;
}

/// @nodoc
class _$NavigationRouteCopyWithImpl<$Res>
    implements $NavigationRouteCopyWith<$Res> {
  _$NavigationRouteCopyWithImpl(this._value, this._then);

  final NavigationRoute _value;
  // ignore: unused_field
  final $Res Function(NavigationRoute) _then;
}

/// @nodoc
abstract class $NavigationRouteHomeCopyWith<$Res> {
  factory $NavigationRouteHomeCopyWith(
          NavigationRouteHome value, $Res Function(NavigationRouteHome) then) =
      _$NavigationRouteHomeCopyWithImpl<$Res>;
  $Res call({Widget screen});
}

/// @nodoc
class _$NavigationRouteHomeCopyWithImpl<$Res>
    extends _$NavigationRouteCopyWithImpl<$Res>
    implements $NavigationRouteHomeCopyWith<$Res> {
  _$NavigationRouteHomeCopyWithImpl(
      NavigationRouteHome _value, $Res Function(NavigationRouteHome) _then)
      : super(_value, (v) => _then(v as NavigationRouteHome));

  @override
  NavigationRouteHome get _value => super._value as NavigationRouteHome;

  @override
  $Res call({
    Object? screen = freezed,
  }) {
    return _then(NavigationRouteHome(
      screen == freezed
          ? _value.screen
          : screen // ignore: cast_nullable_to_non_nullable
              as Widget,
    ));
  }
}

/// @nodoc

class _$NavigationRouteHome implements NavigationRouteHome {
  const _$NavigationRouteHome(this.screen);

  @override
  final Widget screen;

  @override
  String toString() {
    return 'NavigationRoute.navigateToHome(screen: $screen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigationRouteHome &&
            (identical(other.screen, screen) ||
                const DeepCollectionEquality().equals(other.screen, screen)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(screen);

  @JsonKey(ignore: true)
  @override
  $NavigationRouteHomeCopyWith<NavigationRouteHome> get copyWith =>
      _$NavigationRouteHomeCopyWithImpl<NavigationRouteHome>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Widget screen) navigateToHome,
    required TResult Function(Widget screen) navigateToPayment,
    required TResult Function(OnboardView? view) navigateToOnboard,
  }) {
    return navigateToHome(screen);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Widget screen)? navigateToHome,
    TResult Function(Widget screen)? navigateToPayment,
    TResult Function(OnboardView? view)? navigateToOnboard,
    required TResult orElse(),
  }) {
    if (navigateToHome != null) {
      return navigateToHome(screen);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigationRouteHome value) navigateToHome,
    required TResult Function(NavigationRoutePayment value) navigateToPayment,
    required TResult Function(NavigationRouteOnboard value) navigateToOnboard,
  }) {
    return navigateToHome(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationRouteHome value)? navigateToHome,
    TResult Function(NavigationRoutePayment value)? navigateToPayment,
    TResult Function(NavigationRouteOnboard value)? navigateToOnboard,
    required TResult orElse(),
  }) {
    if (navigateToHome != null) {
      return navigateToHome(this);
    }
    return orElse();
  }
}

abstract class NavigationRouteHome implements NavigationRoute {
  const factory NavigationRouteHome(Widget screen) = _$NavigationRouteHome;

  Widget get screen => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NavigationRouteHomeCopyWith<NavigationRouteHome> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationRoutePaymentCopyWith<$Res> {
  factory $NavigationRoutePaymentCopyWith(NavigationRoutePayment value,
          $Res Function(NavigationRoutePayment) then) =
      _$NavigationRoutePaymentCopyWithImpl<$Res>;
  $Res call({Widget screen});
}

/// @nodoc
class _$NavigationRoutePaymentCopyWithImpl<$Res>
    extends _$NavigationRouteCopyWithImpl<$Res>
    implements $NavigationRoutePaymentCopyWith<$Res> {
  _$NavigationRoutePaymentCopyWithImpl(NavigationRoutePayment _value,
      $Res Function(NavigationRoutePayment) _then)
      : super(_value, (v) => _then(v as NavigationRoutePayment));

  @override
  NavigationRoutePayment get _value => super._value as NavigationRoutePayment;

  @override
  $Res call({
    Object? screen = freezed,
  }) {
    return _then(NavigationRoutePayment(
      screen == freezed
          ? _value.screen
          : screen // ignore: cast_nullable_to_non_nullable
              as Widget,
    ));
  }
}

/// @nodoc

class _$NavigationRoutePayment implements NavigationRoutePayment {
  const _$NavigationRoutePayment(this.screen);

  @override
  final Widget screen;

  @override
  String toString() {
    return 'NavigationRoute.navigateToPayment(screen: $screen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigationRoutePayment &&
            (identical(other.screen, screen) ||
                const DeepCollectionEquality().equals(other.screen, screen)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(screen);

  @JsonKey(ignore: true)
  @override
  $NavigationRoutePaymentCopyWith<NavigationRoutePayment> get copyWith =>
      _$NavigationRoutePaymentCopyWithImpl<NavigationRoutePayment>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Widget screen) navigateToHome,
    required TResult Function(Widget screen) navigateToPayment,
    required TResult Function(OnboardView? view) navigateToOnboard,
  }) {
    return navigateToPayment(screen);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Widget screen)? navigateToHome,
    TResult Function(Widget screen)? navigateToPayment,
    TResult Function(OnboardView? view)? navigateToOnboard,
    required TResult orElse(),
  }) {
    if (navigateToPayment != null) {
      return navigateToPayment(screen);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigationRouteHome value) navigateToHome,
    required TResult Function(NavigationRoutePayment value) navigateToPayment,
    required TResult Function(NavigationRouteOnboard value) navigateToOnboard,
  }) {
    return navigateToPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationRouteHome value)? navigateToHome,
    TResult Function(NavigationRoutePayment value)? navigateToPayment,
    TResult Function(NavigationRouteOnboard value)? navigateToOnboard,
    required TResult orElse(),
  }) {
    if (navigateToPayment != null) {
      return navigateToPayment(this);
    }
    return orElse();
  }
}

abstract class NavigationRoutePayment implements NavigationRoute {
  const factory NavigationRoutePayment(Widget screen) =
      _$NavigationRoutePayment;

  Widget get screen => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NavigationRoutePaymentCopyWith<NavigationRoutePayment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationRouteOnboardCopyWith<$Res> {
  factory $NavigationRouteOnboardCopyWith(NavigationRouteOnboard value,
          $Res Function(NavigationRouteOnboard) then) =
      _$NavigationRouteOnboardCopyWithImpl<$Res>;
  $Res call({OnboardView? view});
}

/// @nodoc
class _$NavigationRouteOnboardCopyWithImpl<$Res>
    extends _$NavigationRouteCopyWithImpl<$Res>
    implements $NavigationRouteOnboardCopyWith<$Res> {
  _$NavigationRouteOnboardCopyWithImpl(NavigationRouteOnboard _value,
      $Res Function(NavigationRouteOnboard) _then)
      : super(_value, (v) => _then(v as NavigationRouteOnboard));

  @override
  NavigationRouteOnboard get _value => super._value as NavigationRouteOnboard;

  @override
  $Res call({
    Object? view = freezed,
  }) {
    return _then(NavigationRouteOnboard(
      view == freezed
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as OnboardView?,
    ));
  }
}

/// @nodoc

class _$NavigationRouteOnboard implements NavigationRouteOnboard {
  const _$NavigationRouteOnboard(this.view);

  @override
  final OnboardView? view;

  @override
  String toString() {
    return 'NavigationRoute.navigateToOnboard(view: $view)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigationRouteOnboard &&
            (identical(other.view, view) ||
                const DeepCollectionEquality().equals(other.view, view)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(view);

  @JsonKey(ignore: true)
  @override
  $NavigationRouteOnboardCopyWith<NavigationRouteOnboard> get copyWith =>
      _$NavigationRouteOnboardCopyWithImpl<NavigationRouteOnboard>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Widget screen) navigateToHome,
    required TResult Function(Widget screen) navigateToPayment,
    required TResult Function(OnboardView? view) navigateToOnboard,
  }) {
    return navigateToOnboard(view);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Widget screen)? navigateToHome,
    TResult Function(Widget screen)? navigateToPayment,
    TResult Function(OnboardView? view)? navigateToOnboard,
    required TResult orElse(),
  }) {
    if (navigateToOnboard != null) {
      return navigateToOnboard(view);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigationRouteHome value) navigateToHome,
    required TResult Function(NavigationRoutePayment value) navigateToPayment,
    required TResult Function(NavigationRouteOnboard value) navigateToOnboard,
  }) {
    return navigateToOnboard(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationRouteHome value)? navigateToHome,
    TResult Function(NavigationRoutePayment value)? navigateToPayment,
    TResult Function(NavigationRouteOnboard value)? navigateToOnboard,
    required TResult orElse(),
  }) {
    if (navigateToOnboard != null) {
      return navigateToOnboard(this);
    }
    return orElse();
  }
}

abstract class NavigationRouteOnboard implements NavigationRoute {
  const factory NavigationRouteOnboard(OnboardView? view) =
      _$NavigationRouteOnboard;

  OnboardView? get view => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NavigationRouteOnboardCopyWith<NavigationRouteOnboard> get copyWith =>
      throw _privateConstructorUsedError;
}
