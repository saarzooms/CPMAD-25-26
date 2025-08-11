import 'package:flutter/material.dart';

import 'models/cart_item.dart';

class CartPage extends StatelessWidget {
  CartPage({super.key});
  TextStyle totalStyle = TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  List<CartItem> cartItems = [
  CartItem(productImage: 'images/apple.jpg', productName: 'Apple', price: 0.50, uom: 'each', quantity: 10),
  CartItem(productImage: 'images/banana.jpg', productName: 'Banana', price: 0.30, uom: 'each', quantity: 12),
  CartItem(productImage: 'images/orange.jpg', productName: 'Orange', price: 0.40, uom: 'each', quantity: 8),
  CartItem(productImage: 'images/milk.jpg', productName: 'Milk', price: 3.99, uom: 'gallon', quantity: 2),
  CartItem(productImage: 'images/bread.jpg', productName: 'Bread', price: 2.49, uom: 'loaf', quantity: 3),
  CartItem(productImage: 'images/eggs.jpg', productName: 'Eggs', price: 2.99, uom: 'dozen', quantity: 2),
  CartItem(productImage: 'images/cheese.jpg', productName: 'Cheese', price: 4.50, uom: 'lb', quantity: 1),
  CartItem(productImage: 'images/chicken.jpg', productName: 'Chicken Breast', price: 5.99, uom: 'lb', quantity: 2),
  CartItem(productImage: 'images/rice.jpg', productName: 'Rice', price: 1.99, uom: 'lb', quantity: 5),
  CartItem(productImage: 'images/pasta.jpg', productName: 'Pasta', price: 1.29, uom: 'lb', quantity: 4),
  CartItem(productImage: 'images/tomato.jpg', productName: 'Tomato', price: 0.60, uom: 'each', quantity: 6),
  CartItem(productImage: 'images/cucumber.jpg', productName: 'Cucumber', price: 0.75, uom: 'each', quantity: 3),
  CartItem(productImage: 'images/carrot.jpg', productName: 'Carrot', price: 0.20, uom: 'each', quantity: 10),
  CartItem(productImage: 'images/potato.jpg', productName: 'Potato', price: 0.50, uom: 'lb', quantity: 8),
  CartItem(productImage: 'images/onion.jpg', productName: 'Onion', price: 0.45, uom: 'lb', quantity: 5),
  CartItem(productImage: 'images/yogurt.jpg', productName: 'Yogurt', price: 0.99, uom: 'each', quantity: 6),
  CartItem(productImage: 'images/butter.jpg', productName: 'Butter', price: 3.49, uom: 'lb', quantity: 1),
  CartItem(productImage: 'images/cereal.jpg', productName: 'Cereal', price: 3.99, uom: 'box', quantity: 2),
  CartItem(productImage: 'images/coffee.jpg', productName: 'Coffee', price: 6.99, uom: 'lb', quantity: 1),
  CartItem(productImage: 'images/sugar.jpg', productName: 'Sugar', price: 2.29, uom: 'lb', quantity: 2),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cart')),
      body: Column(
        children: [
          // cart items
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) => cartItemCard(cartItems[index]),
            ),
          ),
          // total summary
          Container(
            color: Colors.deepPurple,
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total', style: totalStyle),
                  Text('Amount', style: totalStyle),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget cartItemCard(CartItem cart_item) {
    return Card(
      child: Row(
        children: [
          // image
          Container(height: 100, width: 100, color: Colors.amber),
          //description
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${cart_item.productName}',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text('₹rate/uom'),
                  Row(
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.remove)),
                      Text('1'),
                      IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // amount
          SizedBox(width: 100, child: Text('₹amount')),
        ],
      ),
    );
  }
}
