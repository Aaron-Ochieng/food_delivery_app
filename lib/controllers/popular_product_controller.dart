import 'package:food_delivery_app/data/repository/popular_product.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;

  PopularProductController({required this.popularProductRepo});

  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;

  Future<Response> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();

    if (response.statusCode == 200) {
      _popularProductList = [];
      // popularProductList.addAll();
      update(); // Same as setState function to update the UI;
    } else {}
    return response;
  }
}
