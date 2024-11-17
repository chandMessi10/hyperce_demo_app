import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_list_response.freezed.dart';
part 'product_list_response.g.dart';

@freezed
class ProductListResponse with _$ProductListResponse {
  const factory ProductListResponse({
    int? totalItems,
    List<Product>? items,
  }) = _ProductListResponse;

  factory ProductListResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductListResponseFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
    String? id,
    String? name,
    String? slug,
    FeaturedAsset? featuredAsset,
    List<Variant>? variants,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

@freezed
class FeaturedAsset with _$FeaturedAsset {
  const factory FeaturedAsset({
    String? preview,
    String? mimeType,
    int? width,
    int? height,
  }) = _FeaturedAsset;

  factory FeaturedAsset.fromJson(Map<String, dynamic> json) =>
      _$FeaturedAssetFromJson(json);
}

@freezed
class Variant with _$Variant {
  const factory Variant({
    int? price,
    String? stockLevel,
    String? sku,
  }) = _Variant;

  factory Variant.fromJson(Map<String, dynamic> json) =>
      _$VariantFromJson(json);
}
