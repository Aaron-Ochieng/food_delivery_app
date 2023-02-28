import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService {
  late String token;
  final String baseURL;
  late Map<String, String> headers;

  ApiClient({
    required this.baseURL,
  }) {
    baseUrl = baseURL;
    timeout = const Duration(seconds: 30);
    headers = {
      "Content-Type": "application/json",
      "Authorization": "Bearer $token"
    };
  }

  Future<Response> getData(String uri) async {
    try {
      Response response = await get(uri);
      return response;
    } catch (e) {
      return Response(
        statusCode: 1,
        statusText: e.toString(),
      );
    }
  }
}
