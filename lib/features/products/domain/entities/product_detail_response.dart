import 'package:hyperce_demo_app/features/products/domain/entities/product_list_response.dart';

class ProductDetailResponse {
  final String? id;
  final String? name;
  final String? slug;
  final FeaturedAsset? featuredAsset;
  final String? description;
  final List<Variant>? variants;

  ProductDetailResponse({
    this.id,
    this.name,
    this.slug,
    this.featuredAsset,
    this.description,
    this.variants,
  });

  factory ProductDetailResponse.fromJson(Map<String, dynamic> json) =>
      ProductDetailResponse(
        id: json["id"],
        name: json["name"],
        slug: json["slug"],
        featuredAsset: json["featuredAsset"] == null
            ? null
            : FeaturedAsset.fromJson(json["featuredAsset"]),
        description: json["description"],
        variants: (json['variants'] as List<dynamic>?)
            ?.map(
                (variant) => Variant.fromJson(variant as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
        "featuredAsset": featuredAsset?.toJson(),
        "description": description,
        "variants": variants,
      };
}

class FeaturedAsset {
  final String? preview;
  final String? mimeType;

  FeaturedAsset({
    this.preview,
    this.mimeType,
  });

  factory FeaturedAsset.fromJson(Map<String, dynamic> json) => FeaturedAsset(
        preview: json["preview"],
        mimeType: json["mimeType"],
      );

  Map<String, dynamic> toJson() => {
        "preview": preview,
        "mimeType": mimeType,
      };
}
