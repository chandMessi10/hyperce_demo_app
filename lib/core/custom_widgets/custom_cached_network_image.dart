import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hyperce_demo_app/core/extensions/build_context_extensions.dart';
import 'package:shimmer/shimmer.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  const CustomCachedNetworkImage({
    super.key,
    required this.imageUrl,
    this.desiredHeight,
    this.desiredWidth,
  });

  final String imageUrl;
  final double? desiredHeight;
  final double? desiredWidth;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      height: desiredHeight ?? 400,
      width: desiredWidth ?? context.mqSize.width,
      fit: BoxFit.cover,
      errorWidget: (context, url, error) {
        return const SizedBox(
          child: Icon(
            Icons.image,
            size: 56,
          ),
        );
      },
      errorListener: (value) {
        debugPrint("$value");
      },
      progressIndicatorBuilder: (context, url, progress) {
        return Shimmer.fromColors(
          baseColor: Colors.white,
          highlightColor: Colors.grey,
          child: Container(
            color: Theme.of(context).primaryColor.withOpacity(0.2),
            height: desiredHeight ?? 400,
            width: desiredWidth ?? context.mqSize.width,
          ),
        );
      },
    );
  }
}
