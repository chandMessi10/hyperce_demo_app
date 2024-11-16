import 'package:get/get.dart';
import 'package:hyperce_demo_app/config/services/locator.dart';
import 'package:hyperce_demo_app/core/enums/base_state_enum.dart';
import 'package:hyperce_demo_app/features/products/data/product_repository.dart';
import 'package:hyperce_demo_app/features/products/domain/entities/product_list_response.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

class ProductCollectionController extends GetxController {
  Rx<BaseState> productCollectionApiState = BaseState.initial.obs;
  RxList<Product> productCollectionList = <Product>[].obs;
  RxInt skip = 0.obs;

  Future<void> getProductCollection(
    RefreshController refreshController,
    bool isLoadMore,
  ) async {
    if (!isLoadMore) {
      productCollectionList.clear();
      productCollectionApiState.value = BaseState.loading;
    }
    final productRepo = getIt.get<ProductRepository>();
    final response = await productRepo.fetchProductCollection(skip.value);
    response.fold(
      (success) {
        productCollectionApiState.value = BaseState.success;
        if (success.items != null) {
          if (success.items!.isNotEmpty) {
            productCollectionList.addAll(success.items ?? []);
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
          productCollectionApiState.value = BaseState.error;
          refreshController.loadFailed();
        }
      },
      (failure) {
        productCollectionApiState.value = BaseState.error;
        refreshController.loadFailed();
      },
    );
  }
}
