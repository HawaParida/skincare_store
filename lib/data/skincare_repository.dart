import 'skincare_model.dart';
import 'package:skincare_store/core/global_component/images.dart';

class SkincareRepository {
  List<SkincareModel> getSkincareProducts() {
    return [
      SkincareModel(
        name: "Barrier Repair Serum",
        image: AppImages.serum1,
        description: "Serum with 5X ceramide to strengthen the skin barrier.",
        price: 107.000,
        isFavorite: false,
      ),
      SkincareModel(
        name: "5X Ceramide Barrier Serum",
        image: AppImages.serum2,
        description: "Serum that hydrates and nourishes the skin.",
        price: 107.000,
        isFavorite: true,
      ),
      SkincareModel(
        name: "Niacinamide Brightening Serum ",
        image: AppImages.serumPink,
        description: "Serum with pink essence to brighten skin tone.",
        price: 100.000,
        isFavorite: false,
      ),
      SkincareModel(
        name: "5X Ceramaid Barrier Moisturizer Gel",
        image: AppImages.moisturizer,
        description: "Moisturizer that provides all-day hydration.",
        price: 100.008,
        isFavorite: true,
      ),
      SkincareModel(
        name: "Skintific AHA BHA PHA Exfoliating Toner",
        image: AppImages.toner,
        description: "Gentle toner for all skin types.",
        price: 80.000,
        isFavorite: true,
      ),
      SkincareModel(
        name: "Light Serum Sunscreen SPF50 PA +++",
        image: AppImages.sunscreen,
        description: "SPF 50+ sunscreen for daily protection.",
        price: 76.000,
        isFavorite: false,
      ),
      SkincareModel(
        name: "Mugwort Anti Pores & Acne Clay Mask",
        image: AppImages.mask,
        description: "Nourishing face mask for a radiant complexion.",
        price: 66.000,
        isFavorite: true,
      ),
      SkincareModel(
        name: "5X Cerimide Low PH Cleanser ",
        image: AppImages.facialWash,
        description: "Mild facial wash for a refreshing cleanse.",
        price: 95.000,
        isFavorite: false,
      ),
    ];
  }
}
