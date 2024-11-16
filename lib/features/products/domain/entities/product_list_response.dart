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
  final List<Variant>? variants;

  Product({this.id, this.name, this.slug, this.featuredAsset, this.variants});

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
      variants: (json['variants'] as List<dynamic>?)
          ?.map((variant) => Variant.fromJson(variant as Map<String, dynamic>))
          .toList(),
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

class Variant {
  final int? price;
  final String? stockLevel;
  final String? sku;

  Variant({this.price, this.stockLevel, this.sku});

  factory Variant.fromJson(Map<String, dynamic> json) {
    return Variant(
      price: json['price'] as int?,
      stockLevel: json['stockLevel'] as String?,
      sku: json['sku'] as String?,
    );
  }
}
