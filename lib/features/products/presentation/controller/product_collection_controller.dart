import 'package:get/get.dart';
import 'package:hyperce_demo_app/config/services/locator.dart';
import 'package:hyperce_demo_app/core/enums/base_state_enum.dart';
import 'package:hyperce_demo_app/features/products/data/product_repository.dart';
import 'package:hyperce_demo_app/features/products/domain/entities/product_list_response.dart';

class ProductCollectionController extends GetxController {
  Rx<BaseState> productCollectionApiState = BaseState.initial.obs;
  RxList<Product> productCollectionList = <Product>[].obs;

  Future<void> getProductCollection() async {
    productCollectionApiState.value = BaseState.loading;
    final productRepo = getIt.get<ProductRepository>();
    final response = await productRepo.fetchProductCollection();
    response.fold(
      (success) {
        productCollectionApiState.value = BaseState.success;
        productCollectionList.value = success.items ?? [];
      },
      (failure) {
        productCollectionApiState.value = BaseState.error;
      },
    );
  }
}
