import 'package:flutter/material.dart';
import 'package:shopping_app_ui_tutorial/screens/home/widgets/item_dot.dart';
import 'package:shopping_app_ui_tutorial/screens/home/widgets/item_product.dart';
import 'package:shopping_app_ui_tutorial/screens/home/widgets/item_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 400,
            child: Stack(
              children: [
                PageView(
                  onPageChanged: (value) {
                    setState(() {
                      activeIndex = value;
                    });
                  },
                  children: const [
                    ItemSlider(image: 'slider1.jpg'),
                    ItemSlider(image: 'slider2.jpg'),
                    ItemSlider(image: 'slider3.jpg'),
                  ],
                ),
                Positioned(
                  left: 15, right: 15, top: 50,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white.withOpacity(.3)
                    ),
                    child: const TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'What you are looking for?',
                        hintStyle: TextStyle(color: Colors.white70),
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search, color: Colors.white70)
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(3, (index) => ItemDot(active: index == activeIndex)).toList(),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                ListTile(
                  title: Text('Trending', style: Theme.of(context).textTheme.titleLarge),
                  trailing: TextButton(
                    onPressed: () {},
                    child: const Text('Show all'),
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    scrollDirection: Axis.horizontal,
                    children: const [
                      ItemProduct(image: 'item1.jpg'),
                      ItemProduct(image: 'item2.jpg'),
                      ItemProduct(image: 'item3.jpg'),
                      ItemProduct(image: 'item4.jpg'),
                      ItemProduct(image: 'item5.jpg'),
                      ItemProduct(image: 'item6.jpg'),
                    ],
                  ),
                ),
                ListTile(
                  title: Text('Featured', style: Theme.of(context).textTheme.titleLarge),
                  trailing: TextButton(
                    onPressed: () {},
                    child: const Text('Show all'),
                  ),
                ),
                GridView.count(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 20,
                  children: const [
                    ItemProduct(image: 'item6.jpg'),
                    ItemProduct(image: 'item5.jpg'),
                    ItemProduct(image: 'item4.jpg'),
                    ItemProduct(image: 'item3.jpg'),
                    ItemProduct(image: 'item2.jpg'),
                    ItemProduct(image: 'item1.jpg'),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
