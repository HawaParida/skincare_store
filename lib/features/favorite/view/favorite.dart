import 'package:flutter/material.dart';
import 'package:skincare_store/features/favorite/model/favorite_model.dart';
import 'package:skincare_store/data/skincare_model.dart';

class FavoritePage extends StatelessWidget {
  final FavoriteModel favoriteModel = FavoriteModel();

  FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<SkincareModel> favoriteProducts = favoriteModel.getFavoriteProducts();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorite Products"),
      ),
      body: favoriteProducts.isEmpty
          ? const Center(
              child: Text("No favorite products found."),
            )
          : ListView.builder(
              itemCount: favoriteProducts.length,
              itemBuilder: (context, index) {
                SkincareModel product = favoriteProducts[index];
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: ListTile(
                    leading: Image.asset(
                      product.image,
                      width: 50,
                      height: 50,
                    ),
                    title: Text(product.name),
                    subtitle: Text(product.description),
                    trailing: Text(
                      "Rp ${product.price.toStringAsFixed(0)}",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
