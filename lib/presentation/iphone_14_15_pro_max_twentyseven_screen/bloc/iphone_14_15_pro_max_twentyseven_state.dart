part of 'iphone_14_15_pro_max_twentyseven_bloc.dart';

/// Represents the state of Iphone1415ProMaxTwentyseven in the application.

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxTwentysevenState extends Equatable {
  Iphone1415ProMaxTwentysevenState(
      {this.fullNameController,
      this.phoneNumberController,
      this.emailController,
      this.enterFlatApartmController,
      this.nameController,
      this.cityController,
      this.enterstateproviController,
      this.zipcodeController,
      this.newpasswordController,
      this.newpassword1Controller,
      this.selectedDropDownValue,
      this.iphone1415ProMaxTwentysevenModelObj});

  TextEditingController? fullNameController;

  TextEditingController? phoneNumberController;

  TextEditingController? emailController;

  TextEditingController? enterFlatApartmController;

  TextEditingController? nameController;

  TextEditingController? cityController;

  TextEditingController? enterstateproviController;

  TextEditingController? zipcodeController;

  TextEditingController? newpasswordController;

  TextEditingController? newpassword1Controller;

  SelectionPopupModel? selectedDropDownValue;

  Iphone1415ProMaxTwentysevenModel? iphone1415ProMaxTwentysevenModelObj;

  @override
  List<Object?> get props => [
        fullNameController,
        phoneNumberController,
        emailController,
        enterFlatApartmController,
        nameController,
        cityController,
        enterstateproviController,
        zipcodeController,
        newpasswordController,
        newpassword1Controller,
        selectedDropDownValue,
        iphone1415ProMaxTwentysevenModelObj
      ];
  Iphone1415ProMaxTwentysevenState copyWith({
    TextEditingController? fullNameController,
    TextEditingController? phoneNumberController,
    TextEditingController? emailController,
    TextEditingController? enterFlatApartmController,
    TextEditingController? nameController,
    TextEditingController? cityController,
    TextEditingController? enterstateproviController,
    TextEditingController? zipcodeController,
    TextEditingController? newpasswordController,
    TextEditingController? newpassword1Controller,
    SelectionPopupModel? selectedDropDownValue,
    Iphone1415ProMaxTwentysevenModel? iphone1415ProMaxTwentysevenModelObj,
  }) {
    return Iphone1415ProMaxTwentysevenState(
      fullNameController: fullNameController ?? this.fullNameController,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      emailController: emailController ?? this.emailController,
      enterFlatApartmController:
          enterFlatApartmController ?? this.enterFlatApartmController,
      nameController: nameController ?? this.nameController,
      cityController: cityController ?? this.cityController,
      enterstateproviController:
          enterstateproviController ?? this.enterstateproviController,
      zipcodeController: zipcodeController ?? this.zipcodeController,
      newpasswordController:
          newpasswordController ?? this.newpasswordController,
      newpassword1Controller:
          newpassword1Controller ?? this.newpassword1Controller,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      iphone1415ProMaxTwentysevenModelObj:
          iphone1415ProMaxTwentysevenModelObj ??
              this.iphone1415ProMaxTwentysevenModelObj,
    );
  }
}
