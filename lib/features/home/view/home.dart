// home.dart
import 'package:flutter/material.dart';
import 'package:skincare_store/core/global_component/images.dart';
import '../../../data/skincare_repository.dart';
import '../../../data/skincare_model.dart';
import 'package:skincare_store/features/detail/model/detail_model.dart'; // Import the DetailScreen
import 'package:skincare_store/features/detail/view/detail.dart'; // Import the DetailModel

class HomeScreen extends StatelessWidget {
  final SkincareRepository repository = SkincareRepository();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<SkincareModel> bestSellers = repository.getSkincareProducts();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Large decorative image for "Barrier Repair Serum"
              Container(
                height: 250, // Set a height for the image container
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage(AppImages.serum1), // Change to your image path
                    fit: BoxFit.fitHeight, // Adjust how the image fits in the container
                  ),
                ),
              ),
              const SizedBox(height: 16), // Space below the image
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
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Best Seller",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "See More",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 280, // Set the height of the horizontal list
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: bestSellers.length,
                  itemBuilder: (context, index) {
                    final product = bestSellers[index];
                    return GestureDetector(
                      onTap: () {
                        // Navigate to DetailScreen on tap
                        final detailModel = DetailModel(
                          name: product.name,
                          image: product.image,
                          description: product.description,
                          price: product.price,
                        );
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(product: detailModel),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: Container(
                          width: 160,
                          decoration: BoxDecoration(
                            color: Colors.blue[50],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Container for image with consistent size
                              Container(
                                height: 120, // Adjust height as needed for consistency
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: AssetImage(product.image),
                                    fit: BoxFit.cover, // Ensure image covers the area
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                                child: Text(
                                  product.name,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  "Rp. ${product.price.toStringAsFixed(3)}",
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.black54,
                                  ),
                                ),
                              ),
                              const Spacer(),
                              const Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
