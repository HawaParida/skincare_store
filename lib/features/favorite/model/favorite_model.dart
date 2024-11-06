import 'package:skincare_store/data/skincare_model.dart';
import 'package:skincare_store/data/skincare_repository.dart';

class FavoriteModel {
  final SkincareRepository _repository = SkincareRepository();

  // Mengambil hanya produk dengan isFavorite = true
  List<SkincareModel> getFavoriteProducts() {
    return _repository.getSkincareProducts().where((product) => product.isFavorite).toList();
  }
}
