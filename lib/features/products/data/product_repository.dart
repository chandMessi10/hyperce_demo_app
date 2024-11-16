import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hyperce_demo_app/config/networking/dio_client.dart';
import 'package:hyperce_demo_app/config/networking/dio_exception_handler.dart';
import 'package:hyperce_demo_app/config/services/locator.dart';
import 'package:hyperce_demo_app/features/products/domain/entities/product_detail_response.dart';
import 'package:hyperce_demo_app/features/products/domain/entities/product_list_response.dart';

class ProductRepository {
  final _dioClient = getIt.get<DioClient>();

  Future<Either<ProductListResponse, String>> fetchProductCollection() async {
    const String query = '''
      query GetProductCollection {
        collections(
          options: {
            take: 10
            filter: {  }
            sort: { name: ASC }
          }
        ) {
          totalItems
          items {
            id
            name
            slug
            featuredAsset {
              preview
              mimeType
              width
              height
            }
          }
        }
      }
    ''';
    try {
      final response = await _dioClient.dio.post(
        'shop-api',
        data: {'query': query},
      );
      final data = response.data['data']?['collections'];
      if (data != null) {
        return Left(ProductListResponse.fromJson(data));
      } else {
        return const Right('No data found in the response.');
      }
    } on DioException catch (dioError) {
      return Right(mapDioExceptionToMessage(dioError));
    } catch (error) {
      return Right('Unexpected error: $error');
    }
  }

  Future<Either<ProductListResponse, String>> fetchProductList(
    String collectionName,
  ) async {
    String query = '''
      query GetProductList {
        products(
          options: {
            take: 10
            filter: { name: { contains: "${collectionName.toLowerCase()}" } }
            sort: { name: ASC }
          }
        ) {
          totalItems
          items {
            id
            name
            slug
            featuredAsset {
              preview
              mimeType
              width
              height
            }
          }
        }
      }
    ''';
    try {
      final response = await _dioClient.dio.post(
        'shop-api',
        data: {'query': query},
      );
      final data = response.data['data']?['products'];
      if (data != null) {
        return Left(ProductListResponse.fromJson(data));
      } else {
        return const Right('No data found in the response.');
      }
    } on DioException catch (dioError) {
      return Right(mapDioExceptionToMessage(dioError));
    } catch (error) {
      return Right('Unexpected error: $error');
    }
  }

  Future<Either<ProductDetailResponse, String>> fetchProductDetail(
    String productId,
  ) async {
    String query = '''
      query GetProductDetail {
        product(id: "$productId") {
          id
          name
          slug
          featuredAsset {
            preview
            mimeType
          }
          description
        }
      }
    ''';
    try {
      final response = await _dioClient.dio.post(
        'shop-api',
        data: {'query': query},
      );
      final data = response.data['data']?['product'];
      if (data != null) {
        return Left(ProductDetailResponse.fromJson(data));
      } else {
        return const Right('No data found in the response.');
      }
    } on DioException catch (dioError) {
      return Right(mapDioExceptionToMessage(dioError));
    } catch (error) {
      return Right('Unexpected error: $error');
    }
  }
}
