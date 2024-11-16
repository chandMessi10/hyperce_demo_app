class CollectionResponse {
  final int? totalItems;
  final List<CollectionProduct>? items;

  CollectionResponse({this.totalItems, this.items});

  factory CollectionResponse.fromJson(Map<String, dynamic> json) {
    return CollectionResponse(
      totalItems: json['totalItems'] as int?,
      items: (json['items'] as List<dynamic>?)
          ?.map((item) =>
              CollectionProduct.fromJson(item as Map<String, dynamic>))
          .toList(),
    );
  }
}

class CollectionProduct {
  final String? id;
  final String? name;
  final String? slug;
  final CollectionFeaturedAsset? featuredAsset;

  CollectionProduct({this.id, this.name, this.slug, this.featuredAsset});

  factory CollectionProduct.fromJson(Map<String, dynamic> json) {
    return CollectionProduct(
      id: json['id'] as String?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      featuredAsset: json['featuredAsset'] != null
          ? CollectionFeaturedAsset.fromJson(
              json['featuredAsset'] as Map<String, dynamic>,
            )
          : null,
    );
  }
}

class CollectionFeaturedAsset {
  final String? preview;
  final String? mimeType;
  final int? width;
  final int? height;

  CollectionFeaturedAsset(
      {this.preview, this.mimeType, this.width, this.height});

  factory CollectionFeaturedAsset.fromJson(Map<String, dynamic> json) {
    return CollectionFeaturedAsset(
      preview: json['preview'] as String?,
      mimeType: json['mimeType'] as String?,
      width: json['width'] as int?,
      height: json['height'] as int?,
    );
  }
}
