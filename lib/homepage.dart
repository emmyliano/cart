import 'package:flutter/material.dart';

class HompepageScreen extends StatefulWidget {
  const HompepageScreen({super.key});

  @override
  State<HompepageScreen> createState() => _HompepageScreenState();
}

class _HompepageScreenState extends State<HompepageScreen> {
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