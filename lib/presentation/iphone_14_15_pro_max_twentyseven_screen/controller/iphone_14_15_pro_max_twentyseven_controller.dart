import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../models/iphone_14_15_pro_max_twentyseven_model.dart';

/// A controller class for the Iphone1415ProMaxTwentysevenScreen.
///
/// This class manages the state of the Iphone1415ProMaxTwentysevenScreen, including the
/// current iphone1415ProMaxTwentysevenModelObj
class Iphone1415ProMaxTwentysevenController extends GetxController {
  TextEditingController fullNameController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController enterFlatApartmController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController enterstateproviController = TextEditingController();

  TextEditingController zipcodeController = TextEditingController();

  TextEditingController newpasswordController = TextEditingController();

  TextEditingController newpassword1Controller = TextEditingController();

  Rx<Iphone1415ProMaxTwentysevenModel> iphone1415ProMaxTwentysevenModelObj =
      Iphone1415ProMaxTwentysevenModel().obs;

  SelectionPopupModel? selectedDropDownValue;

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
    zipcodeController.dispose();
    newpasswordController.dispose();
    newpassword1Controller.dispose();
  }

  onSelected(dynamic value) {
    for (var element
        in iphone1415ProMaxTwentysevenModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    iphone1415ProMaxTwentysevenModelObj.value.dropdownItemList.refresh();
  }
}
