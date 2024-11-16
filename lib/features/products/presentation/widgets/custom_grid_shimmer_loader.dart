import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomGridShimmerLoader extends StatelessWidget {
  const CustomGridShimmerLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Theme.of(context).primaryColor,
      highlightColor: Theme.of(context).cardColor.withOpacity(0.4),
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: 10,
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 176 / 190,
        ),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Theme.of(context).highlightColor,
              borderRadius: BorderRadius.circular(10),
            ),
          );
        },
      ),
    );
  }
}
