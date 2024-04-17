import 'package:cart/HomeScreens/homepage.dart';
import 'package:flutter/material.dart';

class Items extends StatefulWidget {
  const Items({super.key});

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
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
        body: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(children: [
            Text(
              'Select Color',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),

            Row(
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

            Text(
              'Select Color',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextContainer(
                  number: ','
                ),

                TextContainer(
                  number: '10'
                ),

                TextContainer(
                  number: '12'
                ),

                TextContainer(
                  number: '16'
                ),

                TextContainer(
                  number: '20'
                ),
              ],
            )
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
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
        ),
        Text(
          name
        )
      ],
    );
  }
}


class TextContainer extends StatelessWidget {
  final String number;

  const TextContainer({
    super.key, 
    required this.number
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        number,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        )
      ),
    );
  }
}
