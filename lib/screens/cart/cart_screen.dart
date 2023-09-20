import 'package:flutter/material.dart';
import 'package:shopping_app_ui_tutorial/screens/cart/widgets/item_cart.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart'),
      ),
      body: ListView(
        children: const [
          ItemCart(image: 'item1.jpg'),
          ItemCart(image: 'item2.jpg'),
          ItemCart(image: 'item3.jpg'),
          ItemCart(image: 'item4.jpg'),
          ItemCart(image: 'item5.jpg'),
          ItemCart(image: 'item6.jpg'),
          ItemCart(image: 'item1.jpg'),
          ItemCart(image: 'item2.jpg'),
          ItemCart(image: 'item3.jpg'),
          ItemCart(image: 'item4.jpg'),
          ItemCart(image: 'item5.jpg'),
          ItemCart(image: 'item6.jpg'),
          SizedBox(height: 100)
        ],
      ),
      bottomSheet: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.primary,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.all(15)
          ),
          child: const Text('Check out'),
        ),
      ),
    );
  }
}
