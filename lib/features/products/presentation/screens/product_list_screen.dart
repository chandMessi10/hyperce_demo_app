import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:hyperce_demo_app/config/services/locator.dart';
import 'package:hyperce_demo_app/core/custom_widgets/custom_scaffold.dart';
import 'package:hyperce_demo_app/core/enums/base_state_enum.dart';
import 'package:hyperce_demo_app/core/utils/custom_sized_box.dart';
import 'package:hyperce_demo_app/features/products/presentation/controller/product_list_controller.dart';
import 'package:hyperce_demo_app/features/products/presentation/widgets/custom_error_widget.dart';
import 'package:hyperce_demo_app/features/products/presentation/widgets/custom_grid_shimmer_loader.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:shimmer/shimmer.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({
    super.key,
    required this.productCollectionName,
  });

  final String productCollectionName;

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  late ProductListController _productListController;
  final RefreshController _refreshController = RefreshController();

  @override
  void initState() {
    _productListController = getIt.get<ProductListController>();
    requestProductList();
    super.initState();
  }

  void requestProductList() {
    SchedulerBinding.instance.addPostFrameCallback(
      (timeStamp) {
        _productListController.getProductList(
          widget.productCollectionName,
          _refreshController,
          false,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        title: Text(widget.productCollectionName),
        centerTitle: false,
      ),
      scaffoldBody: Obx(
        () {
          if (_productListController.productListApiState.value ==
              BaseState.loading) {
            return const CustomGridShimmerLoader();
          } else if (_productListController.productListApiState.value ==
              BaseState.success) {
            if (_productListController.productList.isNotEmpty) {
              return SmartRefresher(
                controller: _refreshController,
                enablePullUp: true,
                enablePullDown: true,
                onRefresh: () {
                  _productListController.skip.value = 0;
                  requestProductList();
                },
                onLoading: () {
                  _productListController.skip.value += 10;
                  SchedulerBinding.instance.addPostFrameCallback(
                    (timeStamp) {
                      _productListController.getProductList(
                        widget.productCollectionName,
                        _refreshController,
                        true,
                      );
                    },
                  );
                },
                child: SingleChildScrollView(
                    child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: _productListController.productList.length,
                  padding: const EdgeInsets.all(16),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 176 / 190,
                  ),
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    final productData =
                        _productListController.productList[index];
                    return Card(
                      elevation: 1,
                      color: Colors.white,
                      child: GestureDetector(
                        onTap: () {
                          context.push('/productDetail/${productData.id}');
                        },
                        child: SizedBox(
                          width: 176,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                height: 150,
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(16),
                                    topRight: Radius.circular(16),
                                  ),
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        productData.featuredAsset?.preview ??
                                            "",
                                    height: 150,
                                    width: 176,
                                    fit: BoxFit.cover,
                                    errorWidget: (context, url, error) {
                                      return const SizedBox(
                                        height: 150,
                                        width: 176,
                                        child: Icon(
                                          Icons.image,
                                          size: 50,
                                        ),
                                      );
                                    },
                                    progressIndicatorBuilder:
                                        (context, url, progress) {
                                      return Shimmer.fromColors(
                                        baseColor: Colors.white,
                                        highlightColor: Colors.grey,
                                        child: Container(
                                          color: Theme.of(context)
                                              .primaryColor
                                              .withOpacity(0.2),
                                          height: 150,
                                          width: 176,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 6,
                                  vertical: 2,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      productData.name ?? "N/A",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.w600,
                                          ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      textScaler: TextScaler.noScaling,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                )),
              );
            } else {
              return Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "No Data",
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    sizedBoxHeight(16),
                    IconButton(
                      onPressed: () {
                        requestProductList();
                      },
                      icon: const Icon(Icons.refresh),
                    ),
                  ],
                ),
              );
            }
          } else if (_productListController.productListApiState.value ==
              BaseState.error) {
            return CustomErrorWidget(
              onPressedFunction: () {
                requestProductList();
              },
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
