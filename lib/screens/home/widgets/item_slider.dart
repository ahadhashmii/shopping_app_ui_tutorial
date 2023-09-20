import 'package:flutter/material.dart';

class ItemSlider extends StatelessWidget {
  final String image;
  const ItemSlider({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/$image')
        ),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50)
        )
      ),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50)
          ),
          gradient: LinearGradient(
            colors: [
              Colors.black.withOpacity(.4),
              Colors.black.withOpacity(.1)
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: const [.2, .8]
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Recommendations', style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Colors.white70
            )),
            Text('Awesome Product', style: Theme.of(context).textTheme.displaySmall?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold
            )),
            const SizedBox(height: 5),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Rs. 1500\t\t',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    )
                  ),
                  const TextSpan(
                    text: 'Rs. 1800',
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      color: Colors.white70
                    )
                  )
                ]
              ),
            )
          ],
        ),
      ),
    );
  }
}
