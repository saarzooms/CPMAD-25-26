class CartItem {
  final String productImage;
  final String productName;
  final double price;
  final String uom; // Unit of Measure
  final int quantity;
  final double amount;

  CartItem({
    required this.productImage,
    required this.productName,
    required this.price,
    required this.uom,
    required this.quantity,
  }) : amount = price * quantity;

  @override
  String toString() {
    return 'CartItem(name: $productName, price: $price, uom: $uom, quantity: $quantity, amount: $amount)';
  }
}