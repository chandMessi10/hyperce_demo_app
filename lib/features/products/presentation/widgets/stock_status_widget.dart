import 'package:flutter/material.dart';

class StockStatusWidget extends StatelessWidget {
  const StockStatusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.greenAccent.withOpacity(0.2),
        borderRadius: BorderRadius.circular(4),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 6,
        vertical: 2,
      ),
      child: Text(
        "In-Stock",
        style: Theme.of(context).textTheme.labelMedium?.copyWith(
              color: Colors.green,
            ),
      ),
    );
  }
}
