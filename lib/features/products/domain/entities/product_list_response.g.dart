// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductListResponseImpl _$$ProductListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductListResponseImpl(
      totalItems: (json['totalItems'] as num?)?.toInt(),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductListResponseImplToJson(
        _$ProductListResponseImpl instance) =>
    <String, dynamic>{
      'totalItems': instance.totalItems,
      'items': instance.items,
    };

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      featuredAsset: json['featuredAsset'] == null
          ? null
          : FeaturedAsset.fromJson(
              json['featuredAsset'] as Map<String, dynamic>),
      variants: (json['variants'] as List<dynamic>?)
          ?.map((e) => Variant.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'featuredAsset': instance.featuredAsset,
      'variants': instance.variants,
    };

_$FeaturedAssetImpl _$$FeaturedAssetImplFromJson(Map<String, dynamic> json) =>
    _$FeaturedAssetImpl(
      preview: json['preview'] as String?,
      mimeType: json['mimeType'] as String?,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$FeaturedAssetImplToJson(_$FeaturedAssetImpl instance) =>
    <String, dynamic>{
      'preview': instance.preview,
      'mimeType': instance.mimeType,
      'width': instance.width,
      'height': instance.height,
    };

_$VariantImpl _$$VariantImplFromJson(Map<String, dynamic> json) =>
    _$VariantImpl(
      price: (json['price'] as num?)?.toInt(),
      stockLevel: json['stockLevel'] as String?,
      sku: json['sku'] as String?,
    );

Map<String, dynamic> _$$VariantImplToJson(_$VariantImpl instance) =>
    <String, dynamic>{
      'price': instance.price,
      'stockLevel': instance.stockLevel,
      'sku': instance.sku,
    };
