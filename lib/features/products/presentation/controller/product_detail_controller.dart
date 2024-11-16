import 'package:get/get.dart';
import 'package:hyperce_demo_app/config/services/locator.dart';
import 'package:hyperce_demo_app/features/products/data/product_repository.dart';
import 'package:hyperce_demo_app/features/products/domain/entities/product_detail_response.dart';

class ProductDetailController extends GetxController
    with StateMixin<ProductDetailResponse> {
  Future<void> getProductDetail(String productId) async {
    change(status: RxStatus.loading(), null);
    final productRepo = getIt.get<ProductRepository>();
    final response = await productRepo.fetchProductDetail(productId);
    response.fold(
      (success) {
        change(success, status: RxStatus.success());
      },
      (failure) {
        change(null, status: RxStatus.error(failure));
      },
    );
  }
}
