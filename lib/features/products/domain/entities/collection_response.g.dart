// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CollectionResponseImpl _$$CollectionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CollectionResponseImpl(
      totalItems: (json['totalItems'] as num?)?.toInt(),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => CollectionProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CollectionResponseImplToJson(
        _$CollectionResponseImpl instance) =>
    <String, dynamic>{
      'totalItems': instance.totalItems,
      'items': instance.items,
    };

_$CollectionProductImpl _$$CollectionProductImplFromJson(
        Map<String, dynamic> json) =>
    _$CollectionProductImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      featuredAsset: json['featuredAsset'] == null
          ? null
          : CollectionFeaturedAsset.fromJson(
              json['featuredAsset'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CollectionProductImplToJson(
        _$CollectionProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'featuredAsset': instance.featuredAsset,
    };

_$CollectionFeaturedAssetImpl _$$CollectionFeaturedAssetImplFromJson(
        Map<String, dynamic> json) =>
    _$CollectionFeaturedAssetImpl(
      preview: json['preview'] as String?,
      mimeType: json['mimeType'] as String?,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CollectionFeaturedAssetImplToJson(
        _$CollectionFeaturedAssetImpl instance) =>
    <String, dynamic>{
      'preview': instance.preview,
      'mimeType': instance.mimeType,
      'width': instance.width,
      'height': instance.height,
    };
