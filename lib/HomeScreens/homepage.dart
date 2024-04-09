import 'package:cart/Items_On_Sale/nike_airforce.dart';
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                    padding: const EdgeInsets.all(12.0),
                      child: SizedBox(
                        width: 1200,
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.search,
                              size: 35
                              ),
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
                          onPressed: (){}, 
                          child: const Icon(
                            Icons.shopping_cart,
                            color: Colors.black,
                          )
                        ),
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
                        onPressed: (){},
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

                  
                  SizedBox(
                    height: 260,
                    child: GridView.builder(
                      padding: const EdgeInsets.all(10),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // Maximum number of items per row.
                        crossAxisSpacing: 5, // Horizontal space between items.
                        mainAxisSpacing: 5, // Vertical space between items.
                        childAspectRatio: 1.15, // Aspect ratio of the items.
                      ),  
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        return CartItem(
                          imageAsset: products[index]['imageAsset']!,
                          productName: products[index]['productName']!,
                          productPrice: products[index]['productPrice']!,
                        );
                      },
                    ),
                  )
                ],
                
              ),
            ),
          ),
        ],

        
      ),

      
    );
  }
}

// Define the custom CartItem widget.
class CartItem extends StatelessWidget {
  final String imageAsset;
  final String productName;
  final String productPrice;

  // Constructor to accept values.
  const CartItem({
    required this.imageAsset,
    required this.productName,
    required this.productPrice,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const NikeAirForce()),
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey
            ),
          ),
          
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imageAsset, width: double.maxFinite), // Use the passed image location.
            Text(productName, style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(productPrice, style: const TextStyle(color: Colors.red)),
            const Row(
              children: [
                Icon(Icons.star, color: Colors.orange),
                Icon(Icons.star, color: Colors.orange),
                Icon(Icons.star, color: Colors.orange),
                Icon(Icons.star, color: Colors.orange),
                Icon(Icons.star, color: Colors.orange),
                // Icon(Icons.star_border_outlined),
              ],
            ),
          ],
        ),
      ),
    );
  }
}