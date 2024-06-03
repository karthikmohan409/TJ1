import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/iphone_14_15_pro_max_six_model.dart';

/// A controller class for the Iphone1415ProMaxSixScreen.
///
/// This class manages the state of the Iphone1415ProMaxSixScreen, including the
/// current iphone1415ProMaxSixModelObj
class Iphone1415ProMaxSixController extends GetxController {
  TextEditingController fullNameController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController enterFlatApartmController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController enterstateproviController = TextEditingController();

  Rx<Iphone1415ProMaxSixModel> iphone1415ProMaxSixModelObj =
      Iphone1415ProMaxSixModel().obs;

  @override
  void onClose() {
    super.onClose();
    fullNameController.dispose();
    phoneNumberController.dispose();
    emailController.dispose();
    enterFlatApartmController.dispose();
    nameController.dispose();
    cityController.dispose();
    enterstateproviController.dispose();
  }
}
