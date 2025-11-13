import 'package:cake_house/models/cake.dart';

class SampleCake {
  static List<Cake> all() {
    return [
      Cake(
        name: 'Chocolate cake',
        price: 299,
        image: 'assets/cake1.jpg',
        description:
            'Delicious cake made with fresh ingredient. There are countless cake recipes; some are bread-like, some are rich and elaborate, and many are centuries old. Cake making is no longer a complicated procedure; while at one time considerable labor went into cake making (particularly the whisking of egg foams), baking equipment and directions have been simplified so that even the most amateur of cooks may bake a cake',
      ),
      Cake(
        name: 'Vanilla Delight',
        price: 399,
        image: 'assets/cake2.jpg',
        description:
            'Delicious cake made with fresh ingredient. Perfect for parties and celebrations.',
      ),
      Cake(
        name: 'Red Velvet',
        price: 349,
        image: 'assets/cake3.jpg',
        description:
            'Delicious cake made with fresh ingredient. Perfect for parties and celebrations.',
      ),
      Cake(
        name: 'Strawberry Crush',
        price: 329,
        image: 'assets/cake4.jpg',
        description:
            'Delicious cake made with fresh ingredient. Perfect for parties and celebrations.',
      ),
      Cake(
        name: 'Chocolate cake',
        price: 299,
        image: 'assets/cake1.jpg',
        description: null,
      ),
      Cake(
        name: 'Vanilla Delight',
        price: 399,
        image: 'assets/cake2.jpg',
        description:
            'Delicious cake made with fresh ingredient. Perfect for parties and celebrations.',
      ),
      Cake(
        name: 'Red Velvet',
        price: 349,
        image: 'assets/cake3.jpg',
        description:
            'Delicious cake made with fresh ingredient. Perfect for parties and celebrations. ',
      ),
      Cake(
        name: 'Strawberry Crush',
        price: 329,
        image: 'assets/cake4.jpg',
        description: null,
      ),
    ];
  }
}
