import 'dart:ui';

import 'package:flutter_watch_store_ui/models/product_model.dart';

class FakeData {
 static List<ProductModel> productList = [
   ProductModel(image: "assets/images/watch1.png",title: "Heritage 1921", strap: "Brown Lether Strap", price: 199.83, color: const Color(0xFF1A1512)),
   ProductModel(image: "assets/images/watch2.png",title: "Heritage 1921", strap: "Brown Lether Strap", color: const Color(0xFFFF8C00)),
 ];
}