import 'package:cart/HomeScreens/homepage.dart';
import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  final String nameOfItem;
  final String imageAsset;
  final String price;

  const Items({super.key, required this.nameOfItem, required this.imageAsset, required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Product Details',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          leading: IconButton(
            iconSize: 30,
            style: ButtonStyle(
              shape: MaterialStateProperty.all<OutlinedBorder>(
                const CircleBorder(),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(
                  const Color.fromARGB(202, 158, 158, 158)),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomepageScreen()),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Color.fromARGB(255, 231, 229, 229),
            ),
          ),
        ),


        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset(
                imageAsset,
                width: 400,
                height: 500,
              ),
              
              ListTile(
                title: Text(
                  nameOfItem,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                )
              ),

              const Text(
                'Select Color',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ColorContainer(
                    colorOfContainer: Colors.blue,
                    name: 'Blue',
                  ),
                  ColorContainer(
                    colorOfContainer: Colors.purple,
                    name: 'Purple',
                  ),
                  ColorContainer(
                    colorOfContainer: Colors.red,
                    name: 'Red',
                  ),
                  ColorContainer(
                    colorOfContainer: Colors.black,
                    name: 'Black',
                  ),
                  ColorContainer(
                    colorOfContainer: Colors.white,
                    name: 'White',
                  ),
                ],
              ),
              const Text(
                'Select Size',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextContainer(number: ','),
                  TextContainer(number: '10'),
                  TextContainer(number: '12'),
                  TextContainer(number: '16'),
                  TextContainer(number: '20'),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black,
                        )
                      ),
                      child: const Text(
                        'Add to cart',
                        style: TextStyle(
                          color: Colors.white
                        )
                      ),
                    ),
                  ),
                  
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(
                          color: Colors.black,
                        )
                      ),
                      child: const Text(
                        'Buy now',
                        style: TextStyle(
                          color: Colors.white
                        )
                      ),
                    ),
                  ),
                ],
              ),
            ]
          ),
        )
      );
  }
}

class ColorContainer extends StatelessWidget {
  final String name;
  final Color colorOfContainer;

  const ColorContainer({
    super.key,
    required this.colorOfContainer,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: colorOfContainer,
          decoration: BoxDecoration(
            border: Border.all(),
          ),
        ),
        Text(name)
      ],
    );
  }
}

class TextContainer extends StatelessWidget {
  final String number;

  const TextContainer({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          border: Border.all(),
        ),
        child: Text(number,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            )));
  }
}
