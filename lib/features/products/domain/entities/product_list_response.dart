class ProductListResponse {
  final int? totalItems;
  final List<Product>? items;

  ProductListResponse({this.totalItems, this.items});

  factory ProductListResponse.fromJson(Map<String, dynamic> json) {
    return ProductListResponse(
      totalItems: json['totalItems'] as int?,
      items: (json['items'] as List<dynamic>?)
          ?.map((item) => Product.fromJson(item as Map<String, dynamic>))
          .toList(),
    );
  }
}

class Product {
  final String? id;
  final String? name;
  final String? slug;
  final FeaturedAsset? featuredAsset;

  Product({this.id, this.name, this.slug, this.featuredAsset});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as String?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      featuredAsset: json['featuredAsset'] != null
          ? FeaturedAsset.fromJson(
              json['featuredAsset'] as Map<String, dynamic>,
            )
          : null,
    );
  }
}

class FeaturedAsset {
  final String? preview;
  final String? mimeType;
  final int? width;
  final int? height;

  FeaturedAsset({this.preview, this.mimeType, this.width, this.height});

  factory FeaturedAsset.fromJson(Map<String, dynamic> json) {
    return FeaturedAsset(
      preview: json['preview'] as String?,
      mimeType: json['mimeType'] as String?,
      width: json['width'] as int?,
      height: json['height'] as int?,
    );
  }
}
