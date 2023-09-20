import 'package:flutter/material.dart';

class ItemSize extends StatelessWidget {
  final String size;
  final bool active;
  final Function onPicked;
  const ItemSize({Key? key, required this.size, required this.active, required this.onPicked}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => onPicked(),
        child: Container(
          height: 30,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: active? Theme.of(context).colorScheme.primary: null,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Text(size, style: TextStyle(
            color: active? Colors.white: null
          ),),
        ),
      ),
    );
  }
}
