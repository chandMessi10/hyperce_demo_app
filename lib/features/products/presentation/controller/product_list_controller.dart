import 'package:get/get.dart';
import 'package:hyperce_demo_app/config/services/locator.dart';
import 'package:hyperce_demo_app/core/enums/base_state_enum.dart';
import 'package:hyperce_demo_app/features/products/data/product_repository.dart';
import 'package:hyperce_demo_app/features/products/domain/entities/product_list_response.dart';

class ProductListController extends GetxController {
  Rx<BaseState> productListApiState = BaseState.initial.obs;
  RxList<Product> productList = <Product>[].obs;

  Future<void> getProductList(String productCollectionName) async {
    productListApiState.value = BaseState.loading;
    final productRepo = getIt.get<ProductRepository>();
    final response = await productRepo.fetchProductList(
      productCollectionName,
    );
    response.fold(
      (success) {
        productListApiState.value = BaseState.success;
        productList.value = success.items ?? [];
      },
      (failure) {
        productListApiState.value = BaseState.error;
      },
    );
  }
}
