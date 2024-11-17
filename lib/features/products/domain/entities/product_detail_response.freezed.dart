// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductDetailResponse _$ProductDetailResponseFromJson(
    Map<String, dynamic> json) {
  return _ProductDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$ProductDetailResponse {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  FeaturedAsset? get featuredAsset => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<Variant>? get variants => throw _privateConstructorUsedError;

  /// Serializes this ProductDetailResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductDetailResponseCopyWith<ProductDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailResponseCopyWith<$Res> {
  factory $ProductDetailResponseCopyWith(ProductDetailResponse value,
          $Res Function(ProductDetailResponse) then) =
      _$ProductDetailResponseCopyWithImpl<$Res, ProductDetailResponse>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? slug,
      FeaturedAsset? featuredAsset,
      String? description,
      List<Variant>? variants});

  $FeaturedAssetCopyWith<$Res>? get featuredAsset;
}

/// @nodoc
class _$ProductDetailResponseCopyWithImpl<$Res,
        $Val extends ProductDetailResponse>
    implements $ProductDetailResponseCopyWith<$Res> {
  _$ProductDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? slug = freezed,
    Object? featuredAsset = freezed,
    Object? description = freezed,
    Object? variants = freezed,
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
              as FeaturedAsset?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      variants: freezed == variants
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<Variant>?,
    ) as $Val);
  }

  /// Create a copy of ProductDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeaturedAssetCopyWith<$Res>? get featuredAsset {
    if (_value.featuredAsset == null) {
      return null;
    }

    return $FeaturedAssetCopyWith<$Res>(_value.featuredAsset!, (value) {
      return _then(_value.copyWith(featuredAsset: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductDetailResponseImplCopyWith<$Res>
    implements $ProductDetailResponseCopyWith<$Res> {
  factory _$$ProductDetailResponseImplCopyWith(
          _$ProductDetailResponseImpl value,
          $Res Function(_$ProductDetailResponseImpl) then) =
      __$$ProductDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? slug,
      FeaturedAsset? featuredAsset,
      String? description,
      List<Variant>? variants});

  @override
  $FeaturedAssetCopyWith<$Res>? get featuredAsset;
}

/// @nodoc
class __$$ProductDetailResponseImplCopyWithImpl<$Res>
    extends _$ProductDetailResponseCopyWithImpl<$Res,
        _$ProductDetailResponseImpl>
    implements _$$ProductDetailResponseImplCopyWith<$Res> {
  __$$ProductDetailResponseImplCopyWithImpl(_$ProductDetailResponseImpl _value,
      $Res Function(_$ProductDetailResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? slug = freezed,
    Object? featuredAsset = freezed,
    Object? description = freezed,
    Object? variants = freezed,
  }) {
    return _then(_$ProductDetailResponseImpl(
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
              as FeaturedAsset?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      variants: freezed == variants
          ? _value._variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<Variant>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDetailResponseImpl implements _ProductDetailResponse {
  const _$ProductDetailResponseImpl(
      {this.id,
      this.name,
      this.slug,
      this.featuredAsset,
      this.description,
      final List<Variant>? variants})
      : _variants = variants;

  factory _$ProductDetailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDetailResponseImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? slug;
  @override
  final FeaturedAsset? featuredAsset;
  @override
  final String? description;
  final List<Variant>? _variants;
  @override
  List<Variant>? get variants {
    final value = _variants;
    if (value == null) return null;
    if (_variants is EqualUnmodifiableListView) return _variants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductDetailResponse(id: $id, name: $name, slug: $slug, featuredAsset: $featuredAsset, description: $description, variants: $variants)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.featuredAsset, featuredAsset) ||
                other.featuredAsset == featuredAsset) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._variants, _variants));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, slug, featuredAsset,
      description, const DeepCollectionEquality().hash(_variants));

  /// Create a copy of ProductDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailResponseImplCopyWith<_$ProductDetailResponseImpl>
      get copyWith => __$$ProductDetailResponseImplCopyWithImpl<
          _$ProductDetailResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDetailResponseImplToJson(
      this,
    );
  }
}

abstract class _ProductDetailResponse implements ProductDetailResponse {
  const factory _ProductDetailResponse(
      {final String? id,
      final String? name,
      final String? slug,
      final FeaturedAsset? featuredAsset,
      final String? description,
      final List<Variant>? variants}) = _$ProductDetailResponseImpl;

  factory _ProductDetailResponse.fromJson(Map<String, dynamic> json) =
      _$ProductDetailResponseImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get slug;
  @override
  FeaturedAsset? get featuredAsset;
  @override
  String? get description;
  @override
  List<Variant>? get variants;

  /// Create a copy of ProductDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDetailResponseImplCopyWith<_$ProductDetailResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FeaturedAsset _$FeaturedAssetFromJson(Map<String, dynamic> json) {
  return _FeaturedAsset.fromJson(json);
}

/// @nodoc
mixin _$FeaturedAsset {
  String? get preview => throw _privateConstructorUsedError;
  String? get mimeType => throw _privateConstructorUsedError;

  /// Serializes this FeaturedAsset to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeaturedAsset
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeaturedAssetCopyWith<FeaturedAsset> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeaturedAssetCopyWith<$Res> {
  factory $FeaturedAssetCopyWith(
          FeaturedAsset value, $Res Function(FeaturedAsset) then) =
      _$FeaturedAssetCopyWithImpl<$Res, FeaturedAsset>;
  @useResult
  $Res call({String? preview, String? mimeType});
}

/// @nodoc
class _$FeaturedAssetCopyWithImpl<$Res, $Val extends FeaturedAsset>
    implements $FeaturedAssetCopyWith<$Res> {
  _$FeaturedAssetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeaturedAsset
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? preview = freezed,
    Object? mimeType = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeaturedAssetImplCopyWith<$Res>
    implements $FeaturedAssetCopyWith<$Res> {
  factory _$$FeaturedAssetImplCopyWith(
          _$FeaturedAssetImpl value, $Res Function(_$FeaturedAssetImpl) then) =
      __$$FeaturedAssetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? preview, String? mimeType});
}

/// @nodoc
class __$$FeaturedAssetImplCopyWithImpl<$Res>
    extends _$FeaturedAssetCopyWithImpl<$Res, _$FeaturedAssetImpl>
    implements _$$FeaturedAssetImplCopyWith<$Res> {
  __$$FeaturedAssetImplCopyWithImpl(
      _$FeaturedAssetImpl _value, $Res Function(_$FeaturedAssetImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeaturedAsset
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? preview = freezed,
    Object? mimeType = freezed,
  }) {
    return _then(_$FeaturedAssetImpl(
      preview: freezed == preview
          ? _value.preview
          : preview // ignore: cast_nullable_to_non_nullable
              as String?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeaturedAssetImpl implements _FeaturedAsset {
  const _$FeaturedAssetImpl({this.preview, this.mimeType});

  factory _$FeaturedAssetImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeaturedAssetImplFromJson(json);

  @override
  final String? preview;
  @override
  final String? mimeType;

  @override
  String toString() {
    return 'FeaturedAsset(preview: $preview, mimeType: $mimeType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeaturedAssetImpl &&
            (identical(other.preview, preview) || other.preview == preview) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, preview, mimeType);

  /// Create a copy of FeaturedAsset
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeaturedAssetImplCopyWith<_$FeaturedAssetImpl> get copyWith =>
      __$$FeaturedAssetImplCopyWithImpl<_$FeaturedAssetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeaturedAssetImplToJson(
      this,
    );
  }
}

abstract class _FeaturedAsset implements FeaturedAsset {
  const factory _FeaturedAsset(
      {final String? preview, final String? mimeType}) = _$FeaturedAssetImpl;

  factory _FeaturedAsset.fromJson(Map<String, dynamic> json) =
      _$FeaturedAssetImpl.fromJson;

  @override
  String? get preview;
  @override
  String? get mimeType;

  /// Create a copy of FeaturedAsset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeaturedAssetImplCopyWith<_$FeaturedAssetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Variant _$VariantFromJson(Map<String, dynamic> json) {
  return _Variant.fromJson(json);
}

/// @nodoc
mixin _$Variant {
  int? get price => throw _privateConstructorUsedError;
  String? get stockLevel => throw _privateConstructorUsedError;
  String? get sku => throw _privateConstructorUsedError;

  /// Serializes this Variant to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Variant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VariantCopyWith<Variant> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantCopyWith<$Res> {
  factory $VariantCopyWith(Variant value, $Res Function(Variant) then) =
      _$VariantCopyWithImpl<$Res, Variant>;
  @useResult
  $Res call({int? price, String? stockLevel, String? sku});
}

/// @nodoc
class _$VariantCopyWithImpl<$Res, $Val extends Variant>
    implements $VariantCopyWith<$Res> {
  _$VariantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Variant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = freezed,
    Object? stockLevel = freezed,
    Object? sku = freezed,
  }) {
    return _then(_value.copyWith(
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      stockLevel: freezed == stockLevel
          ? _value.stockLevel
          : stockLevel // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VariantImplCopyWith<$Res> implements $VariantCopyWith<$Res> {
  factory _$$VariantImplCopyWith(
          _$VariantImpl value, $Res Function(_$VariantImpl) then) =
      __$$VariantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? price, String? stockLevel, String? sku});
}

/// @nodoc
class __$$VariantImplCopyWithImpl<$Res>
    extends _$VariantCopyWithImpl<$Res, _$VariantImpl>
    implements _$$VariantImplCopyWith<$Res> {
  __$$VariantImplCopyWithImpl(
      _$VariantImpl _value, $Res Function(_$VariantImpl) _then)
      : super(_value, _then);

  /// Create a copy of Variant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = freezed,
    Object? stockLevel = freezed,
    Object? sku = freezed,
  }) {
    return _then(_$VariantImpl(
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      stockLevel: freezed == stockLevel
          ? _value.stockLevel
          : stockLevel // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VariantImpl implements _Variant {
  const _$VariantImpl({this.price, this.stockLevel, this.sku});

  factory _$VariantImpl.fromJson(Map<String, dynamic> json) =>
      _$$VariantImplFromJson(json);

  @override
  final int? price;
  @override
  final String? stockLevel;
  @override
  final String? sku;

  @override
  String toString() {
    return 'Variant(price: $price, stockLevel: $stockLevel, sku: $sku)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VariantImpl &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.stockLevel, stockLevel) ||
                other.stockLevel == stockLevel) &&
            (identical(other.sku, sku) || other.sku == sku));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, price, stockLevel, sku);

  /// Create a copy of Variant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VariantImplCopyWith<_$VariantImpl> get copyWith =>
      __$$VariantImplCopyWithImpl<_$VariantImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VariantImplToJson(
      this,
    );
  }
}

abstract class _Variant implements Variant {
  const factory _Variant(
      {final int? price,
      final String? stockLevel,
      final String? sku}) = _$VariantImpl;

  factory _Variant.fromJson(Map<String, dynamic> json) = _$VariantImpl.fromJson;

  @override
  int? get price;
  @override
  String? get stockLevel;
  @override
  String? get sku;

  /// Create a copy of Variant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VariantImplCopyWith<_$VariantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
