import 'package:demos/core/app_export.dart';
import 'package:demos/pages/product_listing_page/models/product_listing_page_model.dart';
import 'package:flutter/material.dart';

class ProductListingPageController extends GetxController {
  TextEditingController groupNineteenController = TextEditingController();

  Rx<ProductListingPageModel> productListingPageModelObj =
      ProductListingPageModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupNineteenController.dispose();
  }
}
