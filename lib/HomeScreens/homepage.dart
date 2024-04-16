import 'package:cart/HomeScreens/custom_widgets.dart';
import 'package:cart/Items_On_Sale/handfan.dart';
import 'package:cart/Items_On_Sale/peach_cross_bag.dart';
import 'package:cart/Items_On_Sale/nike_airforce.dart';
import 'package:cart/Items_On_Sale/stainless_steel_water.dart';
import 'package:flutter/material.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HompepageScreenState();
}

class _HompepageScreenState extends State<HomepageScreen> {
  final List<Map<String, String>> products = [
    {
      'imageAsset': '/images/nike_airforce.png',
      'productName': 'Nike Airforce',
      'productPrice': '\$120.00',
    },
    {
      'imageAsset': '/images/nike_airforce.png',
      'productName': 'Hand Fan',
      'productPrice': '\$11.99',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                // const SearchWidget(),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SizedBox(
                        width: 1200,
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.search, size: 35),
                            labelText: 'Search in home',
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                            onPressed: () {},
                            child: const Icon(
                              Icons.shopping_cart,
                              color: Colors.black,
                            )),
                      ],
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 300,
                      width: 700,
                      child: Image.asset(
                        "images/flash_sales.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Top Selling Products',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'See all',
                        style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(225, 255, 153, 0),
                        ),
                      ),
                    ),
                  ],
                ),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CartItem(
                      productName: 'Nike Airforce',
                      productPrice: '\$120.00',
                      destinationScreen: NikeAirForce(),
                      imageAsset: '/images/nike.png',
                    ),
                    Divider(
                      height: 200,
                      thickness: 5.5,
                    ),
                    CartItem(
                      productName: 'Hand Fan',
                      productPrice: '\$11.99',
                      destinationScreen: HandFan(),
                      imageAsset: '/images/hand_fan.png',
                    ),
                  ],
                ),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Products on Sale',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'See all',
                        style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(225, 255, 153, 0),
                        ),
                      ),
                    ),
                  ],
                ),

                const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ProductItem(
                        productName: 'Peach Cross Bag',
                        productPrice: '\$120.00',
                        destinationScreen: PeachCrossBag(),
                        imageAsset: '/images/bag.png',
                      ),
                      Divider(
                        height: 200,
                        thickness: 5.5,
                      ),
                      ProductItem(
                        productName: 'Stainless Steel Water',
                        productPrice: '\$11.99',
                        destinationScreen: StainlessSteelWater(),
                        imageAsset: '/images/steel_water.png',
                      ),
                    ]),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Other Products',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'See all',
                        style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(225, 255, 153, 0),
                        ),
                      ),
                    ),
                  ],
                ),

                const Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          OtherProducts(
                            productName: 'Green Crytal Set',
                            productPrice: '\$20.00',
                            destinationScreen: NikeAirForce(),
                            imageAsset: '/images/green_crystal.png',
                          ),
                          Divider(
                            height: 200,
                            thickness: 5.5,
                          ),
                          OtherProducts(
                            productName: 'Black t-shirt',
                            productPrice: '\$50',
                            destinationScreen: HandFan(),
                            imageAsset: '/images/shirt.png',
                          ),
                        ]),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        OtherProducts(
                          productName: 'Black bucket hat',
                          productPrice: '\$0.99',
                          destinationScreen: NikeAirForce(),
                          imageAsset: '/images/hat.png',
                        ),
                        Divider(
                          height: 200,
                          thickness: 5.5,
                        ),
                        OtherProducts(
                          productName: 'Galaxy z fold 4',
                          productPrice: '\$1,800',
                          destinationScreen: HandFan(),
                          imageAsset: '/images/galaxy_z.png',
                        ),
                    ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        OtherProducts(
                          productName: 'Brown Leather Bag',
                          productPrice: '\$60.89',
                          destinationScreen: NikeAirForce(),
                          imageAsset: '/images/leather_bag.png',
                        ),
                        Divider(
                          height: 200,
                          thickness: 5.5,
                        ),
                        OtherProducts(
                          productName: 'Non tarnish ring set',
                          productPrice: '\$42.00',
                          destinationScreen: HandFan(),
                          imageAsset: '/images/ring.png',
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
