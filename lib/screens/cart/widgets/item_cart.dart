import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemCart extends StatefulWidget {
  final String image;
  const ItemCart({Key? key, required this.image}) : super(key: key);

  @override
  State<ItemCart> createState() => _ItemCartState();
}

class _ItemCartState extends State<ItemCart> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset('assets/images/${widget.image}', fit: BoxFit.cover, width: 120, height: 120),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Awesome Product', style: Theme.of(context).textTheme.titleLarge,),
                RichText(text: TextSpan(children: [
                  const TextSpan(text: 'Black'),
                  WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: Container(
                      height: 3, width: 3,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey
                      ),
                    )
                  ),
                  const TextSpan(text: 'XL'),
                ], style: const TextStyle(color: Colors.grey))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Rs. 1500', style: Theme.of(context).textTheme.titleMedium),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              quantity--;
                            });
                          },
                          icon: const Icon(CupertinoIcons.minus, size: 15),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Theme.of(context).colorScheme.primary.withOpacity(.1)
                          ),
                          child: Text(quantity.toString()),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              quantity++;
                            });
                          },
                          icon: const Icon(CupertinoIcons.plus, size: 15),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
