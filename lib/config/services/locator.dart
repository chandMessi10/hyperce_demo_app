import 'package:get_it/get_it.dart';
import 'package:hyperce_demo_app/config/networking/dio_client.dart';
import 'package:hyperce_demo_app/config/networking/network_connectivity_controller.dart';
import 'package:hyperce_demo_app/features/products/data/product_repository.dart';
import 'package:hyperce_demo_app/features/products/presentation/controller/product_collection_controller.dart';
import 'package:hyperce_demo_app/features/products/presentation/controller/product_detail_controller.dart';
import 'package:hyperce_demo_app/features/products/presentation/controller/product_list_controller.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerSingleton<NetworkConnectivityController>(
      NetworkConnectivityController());
  getIt.registerSingleton<DioClient>(DioClient());
  getIt.registerSingleton<ProductRepository>(
    ProductRepository(),
  );
  getIt.registerSingleton<ProductListController>(
    ProductListController(),
  );
  getIt.registerSingleton<ProductCollectionController>(
    ProductCollectionController(),
  );
  getIt.registerSingleton<ProductDetailController>(ProductDetailController());
}
