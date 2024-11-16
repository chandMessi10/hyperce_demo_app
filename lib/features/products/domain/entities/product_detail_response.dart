class ProductDetailResponse {
  final String? id;
  final String? name;
  final String? slug;
  final FeaturedAsset? featuredAsset;
  final String? description;

  ProductDetailResponse({
    this.id,
    this.name,
    this.slug,
    this.featuredAsset,
    this.description,
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
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
        "featuredAsset": featuredAsset?.toJson(),
        "description": description,
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
