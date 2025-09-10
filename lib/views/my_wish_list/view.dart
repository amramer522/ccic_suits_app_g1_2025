import 'package:flutter/material.dart';
import 'package:pro1/views/my_wish_list/model.dart';
import 'package:pro1/views/my_wish_list/widgets/item_product.dart';

import 'widgets/item_category.dart';

class MyWishListView extends StatefulWidget {
  const MyWishListView({super.key});

  @override
  State<MyWishListView> createState() => _MyWishListViewState();
}

class _MyWishListViewState extends State<MyWishListView> {
  final list = ['All', 'Blazar', 'Shirt', 'Pant', 'Shoes'];
  int selectedCategory = 1;

  bool isLoading = true;

  void getData() async {
    await Future.delayed(const Duration(seconds: 3));
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Wishlist"),
        surfaceTintColor: Colors.transparent,
      ),
      body: Column(
        children: [
          const SizedBox(height: 16),
          SizedBox(
            height: 24,
            width: double.infinity,
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(width: 8),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemBuilder: (context, index) => ItemCategory(
                onTap: () {
                  print('index $index');
                  selectedCategory = index;
                  setState(() {});
                },
                text: list[index],
                isSelected: index == selectedCategory,
              ),
              scrollDirection: Axis.horizontal,
              itemCount: list.length,
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : GridView.builder(
                    padding: const EdgeInsets.all(16),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      childAspectRatio: 151 / 188,
                    ),
                    itemCount: fakeProducts.length,
                    itemBuilder: (context, index) => ItemProduct(model: fakeProducts[index]),
                  ),
          )
        ],
      ),
    );
  }
}
