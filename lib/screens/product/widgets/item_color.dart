import 'package:flutter/material.dart';

class ItemColor extends StatelessWidget {
  final Color color;
  final bool active;
  final Function onPicked;
  const ItemColor({Key? key, required this.color, this.active = false, required this.onPicked}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPicked(),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        margin: const EdgeInsets.symmetric(horizontal: 10),
        height: active? 40: 30, width: active? 40: 30,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
          border: active? Border.all(color: Theme.of(context).colorScheme.primary, width: 2): null
        ),
      ),
    );
  }
}
