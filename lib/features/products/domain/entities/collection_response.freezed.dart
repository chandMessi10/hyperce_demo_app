// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CollectionResponse _$CollectionResponseFromJson(Map<String, dynamic> json) {
  return _CollectionResponse.fromJson(json);
}

/// @nodoc
mixin _$CollectionResponse {
  int? get totalItems => throw _privateConstructorUsedError;
  List<CollectionProduct>? get items => throw _privateConstructorUsedError;

  /// Serializes this CollectionResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CollectionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CollectionResponseCopyWith<CollectionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionResponseCopyWith<$Res> {
  factory $CollectionResponseCopyWith(
          CollectionResponse value, $Res Function(CollectionResponse) then) =
      _$CollectionResponseCopyWithImpl<$Res, CollectionResponse>;
  @useResult
  $Res call({int? totalItems, List<CollectionProduct>? items});
}

/// @nodoc
class _$CollectionResponseCopyWithImpl<$Res, $Val extends CollectionResponse>
    implements $CollectionResponseCopyWith<$Res> {
  _$CollectionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CollectionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalItems = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      totalItems: freezed == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CollectionProduct>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CollectionResponseImplCopyWith<$Res>
    implements $CollectionResponseCopyWith<$Res> {
  factory _$$CollectionResponseImplCopyWith(_$CollectionResponseImpl value,
          $Res Function(_$CollectionResponseImpl) then) =
      __$$CollectionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? totalItems, List<CollectionProduct>? items});
}

/// @nodoc
class __$$CollectionResponseImplCopyWithImpl<$Res>
    extends _$CollectionResponseCopyWithImpl<$Res, _$CollectionResponseImpl>
    implements _$$CollectionResponseImplCopyWith<$Res> {
  __$$CollectionResponseImplCopyWithImpl(_$CollectionResponseImpl _value,
      $Res Function(_$CollectionResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CollectionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalItems = freezed,
    Object? items = freezed,
  }) {
    return _then(_$CollectionResponseImpl(
      totalItems: freezed == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CollectionProduct>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CollectionResponseImpl implements _CollectionResponse {
  const _$CollectionResponseImpl(
      {this.totalItems, final List<CollectionProduct>? items})
      : _items = items;

  factory _$CollectionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollectionResponseImplFromJson(json);

  @override
  final int? totalItems;
  final List<CollectionProduct>? _items;
  @override
  List<CollectionProduct>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CollectionResponse(totalItems: $totalItems, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionResponseImpl &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, totalItems, const DeepCollectionEquality().hash(_items));

  /// Create a copy of CollectionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectionResponseImplCopyWith<_$CollectionResponseImpl> get copyWith =>
      __$$CollectionResponseImplCopyWithImpl<_$CollectionResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollectionResponseImplToJson(
      this,
    );
  }
}

abstract class _CollectionResponse implements CollectionResponse {
  const factory _CollectionResponse(
      {final int? totalItems,
      final List<CollectionProduct>? items}) = _$CollectionResponseImpl;

  factory _CollectionResponse.fromJson(Map<String, dynamic> json) =
      _$CollectionResponseImpl.fromJson;

  @override
  int? get totalItems;
  @override
  List<CollectionProduct>? get items;

  /// Create a copy of CollectionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollectionResponseImplCopyWith<_$CollectionResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CollectionProduct _$CollectionProductFromJson(Map<String, dynamic> json) {
  return _CollectionProduct.fromJson(json);
}

/// @nodoc
mixin _$CollectionProduct {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  CollectionFeaturedAsset? get featuredAsset =>
      throw _privateConstructorUsedError;

  /// Serializes this CollectionProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CollectionProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CollectionProductCopyWith<CollectionProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionProductCopyWith<$Res> {
  factory $CollectionProductCopyWith(
          CollectionProduct value, $Res Function(CollectionProduct) then) =
      _$CollectionProductCopyWithImpl<$Res, CollectionProduct>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? slug,
      CollectionFeaturedAsset? featuredAsset});

  $CollectionFeaturedAssetCopyWith<$Res>? get featuredAsset;
}

/// @nodoc
class _$CollectionProductCopyWithImpl<$Res, $Val extends CollectionProduct>
    implements $CollectionProductCopyWith<$Res> {
  _$CollectionProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CollectionProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? slug = freezed,
    Object? featuredAsset = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      featuredAsset: freezed == featuredAsset
          ? _value.featuredAsset
          : featuredAsset // ignore: cast_nullable_to_non_nullable
              as CollectionFeaturedAsset?,
    ) as $Val);
  }

  /// Create a copy of CollectionProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CollectionFeaturedAssetCopyWith<$Res>? get featuredAsset {
    if (_value.featuredAsset == null) {
      return null;
    }

    return $CollectionFeaturedAssetCopyWith<$Res>(_value.featuredAsset!,
        (value) {
      return _then(_value.copyWith(featuredAsset: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CollectionProductImplCopyWith<$Res>
    implements $CollectionProductCopyWith<$Res> {
  factory _$$CollectionProductImplCopyWith(_$CollectionProductImpl value,
          $Res Function(_$CollectionProductImpl) then) =
      __$$CollectionProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? slug,
      CollectionFeaturedAsset? featuredAsset});

  @override
  $CollectionFeaturedAssetCopyWith<$Res>? get featuredAsset;
}

/// @nodoc
class __$$CollectionProductImplCopyWithImpl<$Res>
    extends _$CollectionProductCopyWithImpl<$Res, _$CollectionProductImpl>
    implements _$$CollectionProductImplCopyWith<$Res> {
  __$$CollectionProductImplCopyWithImpl(_$CollectionProductImpl _value,
      $Res Function(_$CollectionProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of CollectionProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? slug = freezed,
    Object? featuredAsset = freezed,
  }) {
    return _then(_$CollectionProductImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      featuredAsset: freezed == featuredAsset
          ? _value.featuredAsset
          : featuredAsset // ignore: cast_nullable_to_non_nullable
              as CollectionFeaturedAsset?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CollectionProductImpl implements _CollectionProduct {
  const _$CollectionProductImpl(
      {this.id, this.name, this.slug, this.featuredAsset});

  factory _$CollectionProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollectionProductImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? slug;
  @override
  final CollectionFeaturedAsset? featuredAsset;

  @override
  String toString() {
    return 'CollectionProduct(id: $id, name: $name, slug: $slug, featuredAsset: $featuredAsset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.featuredAsset, featuredAsset) ||
                other.featuredAsset == featuredAsset));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, slug, featuredAsset);

  /// Create a copy of CollectionProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectionProductImplCopyWith<_$CollectionProductImpl> get copyWith =>
      __$$CollectionProductImplCopyWithImpl<_$CollectionProductImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollectionProductImplToJson(
      this,
    );
  }
}

abstract class _CollectionProduct implements CollectionProduct {
  const factory _CollectionProduct(
      {final String? id,
      final String? name,
      final String? slug,
      final CollectionFeaturedAsset? featuredAsset}) = _$CollectionProductImpl;

  factory _CollectionProduct.fromJson(Map<String, dynamic> json) =
      _$CollectionProductImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get slug;
  @override
  CollectionFeaturedAsset? get featuredAsset;

  /// Create a copy of CollectionProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollectionProductImplCopyWith<_$CollectionProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CollectionFeaturedAsset _$CollectionFeaturedAssetFromJson(
    Map<String, dynamic> json) {
  return _CollectionFeaturedAsset.fromJson(json);
}

/// @nodoc
mixin _$CollectionFeaturedAsset {
  String? get preview => throw _privateConstructorUsedError;
  String? get mimeType => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;

  /// Serializes this CollectionFeaturedAsset to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CollectionFeaturedAsset
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CollectionFeaturedAssetCopyWith<CollectionFeaturedAsset> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionFeaturedAssetCopyWith<$Res> {
  factory $CollectionFeaturedAssetCopyWith(CollectionFeaturedAsset value,
          $Res Function(CollectionFeaturedAsset) then) =
      _$CollectionFeaturedAssetCopyWithImpl<$Res, CollectionFeaturedAsset>;
  @useResult
  $Res call({String? preview, String? mimeType, int? width, int? height});
}

/// @nodoc
class _$CollectionFeaturedAssetCopyWithImpl<$Res,
        $Val extends CollectionFeaturedAsset>
    implements $CollectionFeaturedAssetCopyWith<$Res> {
  _$CollectionFeaturedAssetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CollectionFeaturedAsset
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? preview = freezed,
    Object? mimeType = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_value.copyWith(
      preview: freezed == preview
          ? _value.preview
          : preview // ignore: cast_nullable_to_non_nullable
              as String?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CollectionFeaturedAssetImplCopyWith<$Res>
    implements $CollectionFeaturedAssetCopyWith<$Res> {
  factory _$$CollectionFeaturedAssetImplCopyWith(
          _$CollectionFeaturedAssetImpl value,
          $Res Function(_$CollectionFeaturedAssetImpl) then) =
      __$$CollectionFeaturedAssetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? preview, String? mimeType, int? width, int? height});
}

/// @nodoc
class __$$CollectionFeaturedAssetImplCopyWithImpl<$Res>
    extends _$CollectionFeaturedAssetCopyWithImpl<$Res,
        _$CollectionFeaturedAssetImpl>
    implements _$$CollectionFeaturedAssetImplCopyWith<$Res> {
  __$$CollectionFeaturedAssetImplCopyWithImpl(
      _$CollectionFeaturedAssetImpl _value,
      $Res Function(_$CollectionFeaturedAssetImpl) _then)
      : super(_value, _then);

  /// Create a copy of CollectionFeaturedAsset
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? preview = freezed,
    Object? mimeType = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_$CollectionFeaturedAssetImpl(
      preview: freezed == preview
          ? _value.preview
          : preview // ignore: cast_nullable_to_non_nullable
              as String?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CollectionFeaturedAssetImpl implements _CollectionFeaturedAsset {
  const _$CollectionFeaturedAssetImpl(
      {this.preview, this.mimeType, this.width, this.height});

  factory _$CollectionFeaturedAssetImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollectionFeaturedAssetImplFromJson(json);

  @override
  final String? preview;
  @override
  final String? mimeType;
  @override
  final int? width;
  @override
  final int? height;

  @override
  String toString() {
    return 'CollectionFeaturedAsset(preview: $preview, mimeType: $mimeType, width: $width, height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionFeaturedAssetImpl &&
            (identical(other.preview, preview) || other.preview == preview) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, preview, mimeType, width, height);

  /// Create a copy of CollectionFeaturedAsset
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectionFeaturedAssetImplCopyWith<_$CollectionFeaturedAssetImpl>
      get copyWith => __$$CollectionFeaturedAssetImplCopyWithImpl<
          _$CollectionFeaturedAssetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollectionFeaturedAssetImplToJson(
      this,
    );
  }
}

abstract class _CollectionFeaturedAsset implements CollectionFeaturedAsset {
  const factory _CollectionFeaturedAsset(
      {final String? preview,
      final String? mimeType,
      final int? width,
      final int? height}) = _$CollectionFeaturedAssetImpl;

  factory _CollectionFeaturedAsset.fromJson(Map<String, dynamic> json) =
      _$CollectionFeaturedAssetImpl.fromJson;

  @override
  String? get preview;
  @override
  String? get mimeType;
  @override
  int? get width;
  @override
  int? get height;

  /// Create a copy of CollectionFeaturedAsset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollectionFeaturedAssetImplCopyWith<_$CollectionFeaturedAssetImpl>
      get copyWith => throw _privateConstructorUsedError;
}
