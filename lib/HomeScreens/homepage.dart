import 'package:flutter/material.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HompepageScreenState();
}

class _HompepageScreenState extends State<HomepageScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search
                          ),
                          labelText: 'Search in home',
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        )
                      ),
                              
                      ElevatedButton(
                        onPressed: (){}, 
                        child: const Icon(
                          Icons.shop
                        )
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Image.asset(
                      "images/flash_sales.png",
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      'Top Selling Products',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),

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
                )
              ],
              
            ),
          ),
        ],

        
      ),

      
    );
  }
}

class ItemsInCart extends StatelessWidget {
  const ItemsInCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[
          Image.asset(
            "images/flash_sales.png",
            fit: BoxFit.cover,
          ),

          const Positioned(
            child: Column(
              children: [
                Text(
                  'Nike Airforce'
                ),

                Text(
                  '120.00'
                )
              ],
            ) 
          ),
        ],
      )
    );
  }
}