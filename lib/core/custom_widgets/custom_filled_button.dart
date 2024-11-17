import 'package:flutter/material.dart';
import 'package:hyperce_demo_app/core/extensions/build_context_extensions.dart';

class CustomFilledButton extends StatelessWidget {
  const CustomFilledButton({
    super.key,
    required this.onPressedFunction,
    required this.buttonLabel,
  });

  final VoidCallback onPressedFunction;
  final String buttonLabel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.mqSize.width,
      height: 50,
      child: FilledButton(
        onPressed: onPressedFunction,
        style: ButtonStyle(
          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          )),
        ),
        child: Text(
          buttonLabel,
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: Colors.white,
              ),
          maxLines: 1,
        ),
      ),
    );
  }
}
