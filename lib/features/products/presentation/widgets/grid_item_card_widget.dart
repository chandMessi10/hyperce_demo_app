import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hyperce_demo_app/core/custom_widgets/custom_cached_network_image.dart';
import 'package:hyperce_demo_app/core/utils/custom_sized_box.dart';

class GridItemCardWidget extends StatelessWidget {
  const GridItemCardWidget({
    super.key,
    required this.routePath,
    required this.imageUrlPath,
    required this.name,
    this.isProduct,
    this.productPrice,
  });

  final String routePath;
  final String imageUrlPath;
  final String name;
  final bool? isProduct;
  final String? productPrice;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      color: Colors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          context.push(routePath);
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
                  child: CustomCachedNetworkImage(
                    imageUrl: imageUrlPath,
                    desiredHeight: 150,
                    desiredWidth: 176,
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
                    if (isProduct != null) ...[
                      Text(
                        "\$$productPrice",
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textScaler: TextScaler.noScaling,
                      ),
                      sizedBoxHeight(2),
                    ],
                    Text(
                      name,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
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
  }
}
