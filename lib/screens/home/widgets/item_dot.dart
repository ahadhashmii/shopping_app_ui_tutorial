import 'package:flutter/material.dart';

class ItemDot extends StatelessWidget {
  final bool active;
  const ItemDot({Key? key, required this.active}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: const EdgeInsets.all(5),
      height: active? 12: 8,
      width: active? 12: 8,
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).colorScheme.primary
      ),
    );
  }
}
