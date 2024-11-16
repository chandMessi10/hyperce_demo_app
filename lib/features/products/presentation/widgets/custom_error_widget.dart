import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.onPressedFunction});

  final Function() onPressedFunction;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Error getting products.\nPlease try again.",
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          IconButton(
            onPressed: onPressedFunction,
            icon: const Icon(Icons.refresh),
          )
        ],
      ),
    );
  }
}
