import 'package:food_delivery_app/controllers/popular_product_controller.dart';
import 'package:food_delivery_app/data/api/api_client.dart';
import 'package:food_delivery_app/data/repository/popular_product.dart';
import 'package:get/get.dart';

Future<void> init() async {
  Get.lazyPut(() => ApiClient(baseURL: 'baseURL'));

  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
