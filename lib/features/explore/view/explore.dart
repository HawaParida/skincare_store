import 'package:flutter/material.dart';
import 'package:skincare_store/core/global_component/images.dart';
import 'package:skincare_store/features/explore/model/explore_model.dart';

class ExploreScreen extends StatelessWidget {
  // Daftar kategori berdasarkan gambar yang Anda sediakan
  final List<CategoryModel> categories = [
    CategoryModel(name: "Face Mask", imagePath: AppImages.mask, productCount: 12),
    CategoryModel(name: "Face Serum", imagePath: AppImages.serumPink, productCount: 12),
    CategoryModel(name: "Facial Wash", imagePath: AppImages.facialWash, productCount: 12),
    CategoryModel(name: "Sun Screen", imagePath: AppImages.sunscreen, productCount: 12),
    CategoryModel(name: "Toner", imagePath: AppImages.toner, productCount: 12),
    CategoryModel(name: "Moisturizer", imagePath: AppImages.moisturizer, productCount: 12),
  ];

  ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Search bar
            TextField(
              decoration: InputDecoration(
                hintText: "Search Product",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            const SizedBox(height: 16),
            // GridView untuk kategori
            Expanded(
              child: GridView.builder(
                itemCount: categories.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 3 / 4,
                ),
                itemBuilder: (context, index) {
                  final category = categories[index];
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(category.imagePath),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.2),
                          BlendMode.darken,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            category.name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "${category.productCount} Products",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
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
