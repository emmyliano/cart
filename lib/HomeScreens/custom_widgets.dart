import 'package:flutter/material.dart';


// Define the custom CartItem widget.
class CartItem extends StatelessWidget {
  final String imageAsset;
  final Widget destinationScreen;
  final String productName;
  final String productPrice;

  // Constructor to accept values.
  const CartItem({
    required this.productName,
    required this.productPrice,
    required this.imageAsset,
    required this.destinationScreen,

  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => destinationScreen
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imageAsset, width: 400), // Use the passed image location.
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


class ProductItem extends StatelessWidget {
  final String imageAsset;
  final Widget destinationScreen;
  final String productName;
  final String productPrice;

  // Constructor to accept values.
  const ProductItem({
    required this.productName,
    required this.productPrice,
    required this.imageAsset,
    required this.destinationScreen,

  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => destinationScreen
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imageAsset, width: 400), // Use the passed image location.
            Text(productName, style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(productPrice, style: const TextStyle(color: Colors.red)),
          ],
        ),
      ),
    );
    
  }
}


class OtherProducts extends StatelessWidget {
  final String imageAsset;
  final Widget destinationScreen;
  final String productName;
  final String productPrice;

  // Constructor to accept values.
  const OtherProducts({
    required this.productName,
    required this.productPrice,
    required this.imageAsset,
    required this.destinationScreen,

  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => destinationScreen
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imageAsset, width: 400), // Use the passed image location.
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

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  SearchWidgetState createState() => SearchWidgetState();
}

class SearchWidgetState extends State<SearchWidget> {
  // ignore: unused_field
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
    return SizedBox(
      width: double.infinity,
      child: Padding(
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
      );
  }
}


class CustomContainer extends StatelessWidget {
  final String imageAsset;
  final Widget destinationScreen;
  final String productName;
  final String productPrice;

  // Constructor to accept values.
  const CustomContainer({
    required this.productName,
    required this.productPrice,
    required this.imageAsset,
    required this.destinationScreen,

  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => destinationScreen
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imageAsset, width: 400), // Use the passed image location.
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