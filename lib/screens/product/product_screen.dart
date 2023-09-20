import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopping_app_ui_tutorial/screens/cart/cart_screen.dart';
import 'package:shopping_app_ui_tutorial/screens/product/widgets/item_color.dart';
import 'package:shopping_app_ui_tutorial/screens/product/widgets/item_size.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  Color activeColor = Colors.transparent;
  List colors = [Colors.teal, Colors.brown, Colors.blueGrey];
  String activeSize = '';
  List sizes = ['S', 'M', 'L', 'XL', 'XXL'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => const CartScreen()));
            },
            icon: const Icon(CupertinoIcons.cart),
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(50),
              bottomLeft: Radius.circular(50)
            ),
            child: Image.asset('assets/images/item4.jpg', height: 500, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Awesome Product', style: Theme.of(context).textTheme.headlineLarge,),
                RichText(
                  text: TextSpan(
                      style: const TextStyle(color: Colors.black87),
                      children: [
                        TextSpan(text: 'Rs. 1500\t\t', style: Theme.of(context).textTheme.titleLarge),
                        TextSpan(
                            text: 'Rs. 1800',
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                decoration: TextDecoration.lineThrough,
                                color: Colors.grey
                            )
                        ),
                      ]
                  ),
                ),
                const SizedBox(height: 20),
                Text('Color', style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.grey)),
                const SizedBox(height: 5),
                Row(
                  children: colors.map((color) =>
                      ItemColor(color: color, active: activeColor == color, onPicked: () {
                    setState(() {
                      activeColor = color;
                    });
                  })).toList(),
                ),
                const SizedBox(height: 20),
                Text('Size', style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.grey)),
                const SizedBox(height: 5),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Theme.of(context).colorScheme.primary.withOpacity(.1)
                  ),
                  child: Row(
                    children: sizes.map((size) => ItemSize(size: size, active: activeSize == size, onPicked: () {
                      setState(() {
                        activeSize = size;
                      });
                    })).toList(),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => const CartScreen()));
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.primary,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.all(15)
          ),
          child: const Text('Add to cart'),
        ),
      ),
    );
  }
}
