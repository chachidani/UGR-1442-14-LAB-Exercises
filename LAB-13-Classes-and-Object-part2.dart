class Product {
  String productName;
  double productPrice;
  int productQuantity;

  Product(this.productName, this.productPrice, this.productQuantity);

  double calculateTotalCost() {
    return productPrice * productQuantity;
  }
}

void main() {
  Product product = Product("Widget", 10.99, 5);
  double totalCost = product.calculateTotalCost();

  print("Product: ${product.productName}");
  print("Total Cost: $totalCost");
}
