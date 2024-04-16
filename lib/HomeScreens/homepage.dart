import 'package:cart/Items_On_Sale/handfan.dart';
import 'package:cart/Items_On_Sale/iphone_15.dart';
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

                const SearchWidget(),

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

                  const Row(
                    children: [
                      CartItem(
                        destinationScreen: NikeAirForce(),
                        imageAsset: '/images/Carousel Slider 1/item 1.png',
                      ),
                      
                      Divider(
                        height: 200
                      ),

                      CartItem(
                        destinationScreen: HandFan(),
                        imageAsset: '/images/Carousel Slider 1/item 2.png',
                      ),

                      Divider(
                        height: 200
                      ),

                      CartItem(
                        destinationScreen: Iphone15(),
                        imageAsset: '/images/Carousel Slider 1/item 3.png',
                      )
                    ]
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
  final Widget destinationScreen;

  // Constructor to accept values.
  const CartItem({
    required this.imageAsset,
    required this.destinationScreen,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => destinationScreen),
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imageAsset, width: 200), // Use the passed image location.
          ],
        ),
      ),
    );
    
  }
}

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  SearchWidgetState createState() => SearchWidgetState();
}

class SearchWidgetState extends State<SearchWidget> {
  String _searchResult = '';
  final TextEditingController _controller = TextEditingController();

  void _onSearchChanged(String query) {
    // Implement your search logic here
    setState(() {
      _searchResult = 'Results for: $query';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: _controller,
            decoration: InputDecoration(
              labelText: 'Search',
              hintText: 'Enter a search term',
              border: const OutlineInputBorder(),
              suffixIcon: IconButton(
                icon: const Icon(Icons.clear),
                onPressed: () {
                  _controller.clear();
                },
              ),
            ),
            onChanged: _onSearchChanged,
          ),
        ),
        Expanded(
          child: Center(
            child: Text(_searchResult),
          ),
        ),
      ],
    );
  }
}