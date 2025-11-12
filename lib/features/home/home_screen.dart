import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import 'widgets/category_chip.dart';
import 'widgets/cake_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedCategory = 0;

  final List<String> categories = [
    'All',
    'Chocolate',
    'Vanilla',
    'Red Velvet',
    'Strawberry',
    'Fruit',
  ];

  final List<Map<String, String>> cakes = [
    {'image': 'assets/cake1.jpg', 'name': 'Chocolate Cake', 'price': '15'},
    {'image': 'assets/cake2.jpg', 'name': 'Vanilla Delight', 'price': '12'},
    {'image': 'assets/cake3.jpg', 'name': 'Red Velvet', 'price': '18'},
    {'image': 'assets/cake4.jpg', 'name': 'Strawberry Crush', 'price': '14'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("CakeHouse 🍰",
            style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textDark)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined, color: AppColors.textDark),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: "Search for cakes...",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(vertical: 0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Categories
            SizedBox(
              height: 45,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return CategoryChip(
                    label: categories[index],
                    isSelected: selectedCategory == index,
                    onTap: () => setState(() => selectedCategory = index),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),

            // Cake Grid
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 14,
                  mainAxisSpacing: 14,
                  childAspectRatio: 0.8,
                ),
                itemCount: cakes.length,
                itemBuilder: (context, index) {
                  final cake = cakes[index];
                  return CakeCard(
                    image: cake['image']!,
                    name: cake['name']!,
                    price: cake['price']!,
                    onTap: () {
                      // TODO: Navigate to Cake Detail Screen
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
