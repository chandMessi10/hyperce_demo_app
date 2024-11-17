import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_detail_response.freezed.dart';
part 'product_detail_response.g.dart';

@freezed
class ProductDetailResponse with _$ProductDetailResponse {
  const factory ProductDetailResponse({
    String? id,
    String? name,
    String? slug,
    FeaturedAsset? featuredAsset,
    String? description,
    List<Variant>? variants,
  }) = _ProductDetailResponse;

  factory ProductDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailResponseFromJson(json);
}

@freezed
class FeaturedAsset with _$FeaturedAsset {
  const factory FeaturedAsset({
    String? preview,
    String? mimeType,
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
