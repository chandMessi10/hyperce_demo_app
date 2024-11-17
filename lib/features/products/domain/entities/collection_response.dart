import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection_response.freezed.dart';
part 'collection_response.g.dart';

@freezed
class CollectionResponse with _$CollectionResponse {
  const factory CollectionResponse({
    int? totalItems,
    List<CollectionProduct>? items,
  }) = _CollectionResponse;

  factory CollectionResponse.fromJson(Map<String, dynamic> json) =>
      _$CollectionResponseFromJson(json);
}

@freezed
class CollectionProduct with _$CollectionProduct {
  const factory CollectionProduct({
    String? id,
    String? name,
    String? slug,
    CollectionFeaturedAsset? featuredAsset,
  }) = _CollectionProduct;

  factory CollectionProduct.fromJson(Map<String, dynamic> json) =>
      _$CollectionProductFromJson(json);
}

@freezed
class CollectionFeaturedAsset with _$CollectionFeaturedAsset {
  const factory CollectionFeaturedAsset({
    String? preview,
    String? mimeType,
    int? width,
    int? height,
  }) = _CollectionFeaturedAsset;

  factory CollectionFeaturedAsset.fromJson(Map<String, dynamic> json) =>
      _$CollectionFeaturedAssetFromJson(json);
}
