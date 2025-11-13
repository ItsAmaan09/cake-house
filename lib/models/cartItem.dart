import 'cake.dart';

class CartItem {
  final Cake cake;
  int quantity;
  final String pound;

  CartItem({required this.cake, this.quantity = 1, required this.pound});
}
