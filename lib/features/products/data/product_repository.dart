import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hyperce_demo_app/config/graphql/graphql_queries.dart';
import 'package:hyperce_demo_app/config/networking/dio_client.dart';
import 'package:hyperce_demo_app/config/networking/dio_exception_handler.dart';
import 'package:hyperce_demo_app/config/services/locator.dart';
import 'package:hyperce_demo_app/features/products/domain/entities/collection_response.dart';
import 'package:hyperce_demo_app/features/products/domain/entities/product_detail_response.dart';
import 'package:hyperce_demo_app/features/products/domain/entities/product_list_response.dart';

class ProductRepository {
  final _dioClient = getIt.get<DioClient>();

  Future<Either<CollectionResponse, String>> fetchProductCollection(
    int skipValue,
  ) async {
    String query = GraphQLQueries.getProductCollection(skipValue);
    try {
      final response = await _dioClient.dio.post(
        'shop-api',
        data: {'query': query},
      );
      final data = response.data['data']?['collections'];
      if (data != null) {
        return Left(CollectionResponse.fromJson(data));
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
    int skipValue,
  ) async {
    String query = GraphQLQueries.getProductList(skipValue, collectionName);
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
    String query = GraphQLQueries.getProductDetail(productId);
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
