// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeViewStateTearOff {
  const _$HomeViewStateTearOff();

  _HomeViewState call({List<Faq> faqs = const []}) {
    return _HomeViewState(
      faqs: faqs,
    );
  }
}

/// @nodoc
const $HomeViewState = _$HomeViewStateTearOff();

/// @nodoc
mixin _$HomeViewState {
  List<Faq> get faqs => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeViewStateCopyWith<HomeViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeViewStateCopyWith<$Res> {
  factory $HomeViewStateCopyWith(
          HomeViewState value, $Res Function(HomeViewState) then) =
      _$HomeViewStateCopyWithImpl<$Res>;
  $Res call({List<Faq> faqs});
}

/// @nodoc
class _$HomeViewStateCopyWithImpl<$Res>
    implements $HomeViewStateCopyWith<$Res> {
  _$HomeViewStateCopyWithImpl(this._value, this._then);

  final HomeViewState _value;
  // ignore: unused_field
  final $Res Function(HomeViewState) _then;

  @override
  $Res call({
    Object? faqs = freezed,
  }) {
    return _then(_value.copyWith(
      faqs: faqs == freezed
          ? _value.faqs
          : faqs // ignore: cast_nullable_to_non_nullable
              as List<Faq>,
    ));
  }
}

/// @nodoc
abstract class _$HomeViewStateCopyWith<$Res>
    implements $HomeViewStateCopyWith<$Res> {
  factory _$HomeViewStateCopyWith(
          _HomeViewState value, $Res Function(_HomeViewState) then) =
      __$HomeViewStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Faq> faqs});
}

/// @nodoc
class __$HomeViewStateCopyWithImpl<$Res>
    extends _$HomeViewStateCopyWithImpl<$Res>
    implements _$HomeViewStateCopyWith<$Res> {
  __$HomeViewStateCopyWithImpl(
      _HomeViewState _value, $Res Function(_HomeViewState) _then)
      : super(_value, (v) => _then(v as _HomeViewState));

  @override
  _HomeViewState get _value => super._value as _HomeViewState;

  @override
  $Res call({
    Object? faqs = freezed,
  }) {
    return _then(_HomeViewState(
      faqs: faqs == freezed
          ? _value.faqs
          : faqs // ignore: cast_nullable_to_non_nullable
              as List<Faq>,
    ));
  }
}

/// @nodoc
class _$_HomeViewState implements _HomeViewState {
  const _$_HomeViewState({this.faqs = const []});

  @JsonKey(defaultValue: const [])
  @override
  final List<Faq> faqs;

  @override
  String toString() {
    return 'HomeViewState(faqs: $faqs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeViewState &&
            (identical(other.faqs, faqs) ||
                const DeepCollectionEquality().equals(other.faqs, faqs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(faqs);

  @JsonKey(ignore: true)
  @override
  _$HomeViewStateCopyWith<_HomeViewState> get copyWith =>
      __$HomeViewStateCopyWithImpl<_HomeViewState>(this, _$identity);
}

abstract class _HomeViewState implements HomeViewState {
  const factory _HomeViewState({List<Faq> faqs}) = _$_HomeViewState;

  @override
  List<Faq> get faqs => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HomeViewStateCopyWith<_HomeViewState> get copyWith =>
      throw _privateConstructorUsedError;
}
