import 'package:cake_house/models/cake.dart';
import 'package:cake_house/models/cartItem.dart';

class SampleCartData {
  static List<CartItem> all() {
    return [
      CartItem(
        cake: Cake(
          name: 'Chocolate Truffle Cake',
          price: 299,
          image: 'assets/cake1.jpg',
        ),
        quantity: 1,
        pound: '1 lbs',
      ),
      CartItem(
        cake: Cake(
          name: 'Chocolate Truffle Cake',
          price: 299,
          image: 'assets/cake1.jpg',
        ),
        quantity: 1,
        pound: '1 lbs',
      ),
      CartItem(
        cake: Cake(
          name: 'Chocolate Truffle Cake',
          price: 299,
          image: 'assets/cake1.jpg',
        ),
        quantity: 1,
        pound: '1 lbs',
      ),
    ];
  }
}
