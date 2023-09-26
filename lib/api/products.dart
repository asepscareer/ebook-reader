import '../constanta/imports.dart';

class ProductApi {
  Future<ProductData?> getData() async {
    final dio = Dio();
    final response = await dio.get('https://dummyjson.com/products');

    if (response.statusCode == 200) {
      final data = response.data;
      final products = ProductData.fromJson(data);
      return products;
    } else {
      print("Failed to fetch data. Status code: ${response.statusCode}");
      return null;
    }
  }
}
