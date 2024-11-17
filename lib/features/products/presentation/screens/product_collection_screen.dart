import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:hyperce_demo_app/config/services/locator.dart';
import 'package:hyperce_demo_app/core/custom_widgets/custom_scaffold.dart';
import 'package:hyperce_demo_app/core/enums/base_state_enum.dart';
import 'package:hyperce_demo_app/core/utils/custom_sized_box.dart';
import 'package:hyperce_demo_app/features/products/presentation/controller/product_collection_controller.dart';
import 'package:hyperce_demo_app/features/products/presentation/widgets/custom_error_widget.dart';
import 'package:hyperce_demo_app/features/products/presentation/widgets/custom_grid_shimmer_loader.dart';
import 'package:hyperce_demo_app/features/products/presentation/widgets/grid_item_card_widget.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

class ProductCollectionScreen extends StatefulWidget {
  const ProductCollectionScreen({super.key});

  @override
  State<ProductCollectionScreen> createState() =>
      _ProductCollectionScreenState();
}

class _ProductCollectionScreenState extends State<ProductCollectionScreen> {
  late ProductCollectionController _productCollectionController;
  final RefreshController _refreshController = RefreshController();

  @override
  void initState() {
    _productCollectionController = getIt.get<ProductCollectionController>();
    requestProductCollection();
    super.initState();
  }

  void requestProductCollection() {
    SchedulerBinding.instance.addPostFrameCallback(
      (timeStamp) {
        _productCollectionController.getProductCollection(
          _refreshController,
          false,
        );
      },
    );
  }

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        appBar: AppBar(
          title: const Text("Shop by category"),
          centerTitle: false,
        ),
        scaffoldBody: Obx(
          () {
            if (_productCollectionController.productCollectionApiState.value ==
                BaseState.loading) {
              return const CustomGridShimmerLoader();
            } else if (_productCollectionController
                    .productCollectionApiState.value ==
                BaseState.success) {
              if (_productCollectionController
                  .productCollectionList.isNotEmpty) {
                return SmartRefresher(
                  controller: _refreshController,
                  enablePullUp: (_productCollectionController.skip.value == 0 &&
                          _productCollectionController
                                  .productCollectionList.length <
                              10)
                      ? false
                      : true,
                  enablePullDown: true,
                  onRefresh: () {
                    _productCollectionController.skip.value = 0;
                    requestProductCollection();
                  },
                  onLoading: () {
                    _productCollectionController.skip.value += 10;
                    SchedulerBinding.instance.addPostFrameCallback(
                      (timeStamp) {
                        _productCollectionController.getProductCollection(
                          _refreshController,
                          true,
                        );
                      },
                    );
                  },
                  child: SingleChildScrollView(
                      child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: _productCollectionController
                        .productCollectionList.length,
                    padding: const EdgeInsets.all(16),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 176 / 190,
                    ),
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      final collectionData = _productCollectionController
                          .productCollectionList[index];
                      return GridItemCardWidget(
                        routePath: "/productList/${collectionData.name}",
                        imageUrlPath:
                            collectionData.featuredAsset?.preview ?? "",
                        name: collectionData.name ?? "N/A",
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
                          requestProductCollection();
                        },
                        icon: const Icon(Icons.refresh),
                      ),
                    ],
                  ),
                );
              }
            } else if (_productCollectionController
                    .productCollectionApiState.value ==
                BaseState.error) {
              return CustomErrorWidget(
                onPressedFunction: () {
                  requestProductCollection();
                },
              );
            } else {
              return const SizedBox.shrink();
            }
          },
        ));
  }
}
