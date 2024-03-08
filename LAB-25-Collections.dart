class Product {
  String productName;
  double productPrice;
  int productQuantity;

  Product(this.productName, this.productPrice, this.productQuantity);
}

void main() {
  List<Product> shoppingCartList = [];

  // Add items to the cart
  Product shirt = Product('Shirt', 20.99, 2);
  Product jeans = Product('Jeans', 34.99, 1);
  shoppingCartList.add(shirt);
  shoppingCartList.add(jeans);

  // Calculate the total price
  double totalPrice = shoppingCartList.fold(0, (sum, item) => sum + (item.productPrice * item.productQuantity));
  print('Total price: \$$totalPrice');

  // Remove an item
  shoppingCartList.remove(shirt);
  print('Updated shopping cart after removing an item: $shoppingCartList');
}
