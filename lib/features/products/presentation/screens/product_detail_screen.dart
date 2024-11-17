import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:hyperce_demo_app/config/services/locator.dart';
import 'package:hyperce_demo_app/core/custom_widgets/custom_cached_network_image.dart';
import 'package:hyperce_demo_app/core/custom_widgets/custom_filled_button.dart';
import 'package:hyperce_demo_app/core/custom_widgets/custom_scaffold.dart';
import 'package:hyperce_demo_app/core/extensions/build_context_extensions.dart';
import 'package:hyperce_demo_app/core/utils/custom_sized_box.dart';
import 'package:hyperce_demo_app/features/products/presentation/controller/product_detail_controller.dart';
import 'package:hyperce_demo_app/features/products/presentation/widgets/custom_error_widget.dart';
import 'package:hyperce_demo_app/features/products/presentation/widgets/stock_status_widget.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key, required this.productId});

  final String productId;

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  late ProductDetailController _productDetailController;

  @override
  void initState() {
    _productDetailController = getIt.get<ProductDetailController>();
    fetchProductDetail();
    super.initState();
  }

  Future<void> fetchProductDetail() async {
    SchedulerBinding.instance.addPostFrameCallback(
      (timeStamp) {
        _productDetailController.getProductDetail(widget.productId);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        centerTitle: false,
      ),
      scaffoldBody: _productDetailController.obx(
        (state) {
          final productDetail = state;
          return RefreshIndicator(
            onRefresh: () async {
              fetchProductDetail();
            },
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomCachedNetworkImage(
                    imageUrl: productDetail?.featuredAsset?.preview ?? "",
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${productDetail?.name} | ${productDetail?.variants?.first.sku} |",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        sizedBoxHeight(10),
                        Text(
                          "Price \$ ${productDetail?.variants?.first.price}",
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        sizedBoxHeight(10),
                        if (productDetail?.variants != null &&
                            productDetail!.variants!.isNotEmpty) ...[
                          if (productDetail.variants!.first.stockLevel ==
                              "IN_STOCK")
                            const StockStatusWidget()
                          else
                            const SizedBox(),
                          sizedBoxHeight(10),
                        ],
                        Text(
                          "Description",
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        sizedBoxHeight(4),
                        Text(
                          "${productDetail?.description}",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        sizedBoxHeight(16),
                        extraSpecialWidget(
                          context,
                          Icons.public,
                          "Worldwide shipping",
                        ),
                        sizedBoxHeight(2),
                        extraSpecialWidget(
                          context,
                          Icons.payment,
                          "100% Secure Payment",
                        ),
                        sizedBoxHeight(2),
                        extraSpecialWidget(
                          context,
                          Icons.people,
                          "Made by professionals",
                        ),
                        sizedBoxHeight(24),
                        CustomFilledButton(
                          onPressedFunction: () {
                            context.showCustomSnackBar(
                              message: "Added to cart",
                            );
                          },
                          buttonLabel: 'Add to cart',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        onLoading: const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
        onError: (error) => CustomErrorWidget(
          onPressedFunction: () {
            fetchProductDetail();
          },
        ),
      ),
    );
  }

  Row extraSpecialWidget(
    BuildContext context,
    IconData iconData,
    String label,
  ) {
    return Row(
      children: [
        Icon(
          iconData,
          size: 18,
        ),
        sizedBoxWidth(4),
        Expanded(
          child: Text(
            label,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
      ],
    );
  }
}
