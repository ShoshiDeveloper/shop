import 'package:shop/domain/models/cart/cart_element.dart';

class Cart {
  const Cart({required this.elements});
  final List<CartElement> elements;
}
