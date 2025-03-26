import 'package:shop/domain/models/product/product.dart';

class CartElement {
  const CartElement({required this.product, this.count = 1});
  final Product product;
  final int count;
}
