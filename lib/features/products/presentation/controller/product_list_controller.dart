import 'package:get/get.dart';
import 'package:hyperce_demo_app/config/services/locator.dart';
import 'package:hyperce_demo_app/core/enums/base_state_enum.dart';
import 'package:hyperce_demo_app/features/products/data/product_repository.dart';
import 'package:hyperce_demo_app/features/products/domain/entities/product_list_response.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

class ProductListController extends GetxController {
  Rx<BaseState> productListApiState = BaseState.initial.obs;
  RxList<Product> productList = <Product>[].obs;
  RxInt skip = 0.obs;

  Future<void> getProductList(
    String productCollectionName,
    RefreshController refreshController,
    bool isLoadMore,
  ) async {
    if (!isLoadMore) {
      productList.clear();
      productListApiState.value = BaseState.loading;
    }
    final productRepo = getIt.get<ProductRepository>();
    final response = await productRepo.fetchProductList(
      productCollectionName,
      skip.value,
    );
    response.fold(
      (success) {
        productListApiState.value = BaseState.success;
        if (success.items != null) {
          if (success.items!.isNotEmpty) {
            productList.addAll(success.items ?? []);
            if (success.items!.length < 10) {
              if (isLoadMore) {
                refreshController.loadNoData();
              }
            } else {
              refreshController.loadComplete();
            }
          } else {
            refreshController.loadComplete();
          }
        } else {
          productListApiState.value = BaseState.error;
          refreshController.loadFailed();
        }
      },
      (failure) {
        productListApiState.value = BaseState.error;
        refreshController.loadFailed();
      },
    );
  }
}
