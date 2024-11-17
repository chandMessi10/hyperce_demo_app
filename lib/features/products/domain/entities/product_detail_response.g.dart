// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductDetailResponseImpl _$$ProductDetailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductDetailResponseImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      featuredAsset: json['featuredAsset'] == null
          ? null
          : FeaturedAsset.fromJson(
              json['featuredAsset'] as Map<String, dynamic>),
      description: json['description'] as String?,
      variants: (json['variants'] as List<dynamic>?)
          ?.map((e) => Variant.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductDetailResponseImplToJson(
        _$ProductDetailResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'featuredAsset': instance.featuredAsset,
      'description': instance.description,
      'variants': instance.variants,
    };

_$FeaturedAssetImpl _$$FeaturedAssetImplFromJson(Map<String, dynamic> json) =>
    _$FeaturedAssetImpl(
      preview: json['preview'] as String?,
      mimeType: json['mimeType'] as String?,
    );

Map<String, dynamic> _$$FeaturedAssetImplToJson(_$FeaturedAssetImpl instance) =>
    <String, dynamic>{
      'preview': instance.preview,
      'mimeType': instance.mimeType,
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
