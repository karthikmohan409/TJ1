part of 'iphone_14_15_pro_max_six_bloc.dart';

/// Represents the state of Iphone1415ProMaxSix in the application.

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxSixState extends Equatable {
  Iphone1415ProMaxSixState(
      {this.fullNameController,
      this.phoneNumberController,
      this.emailController,
      this.enterFlatApartmController,
      this.nameController,
      this.cityController,
      this.enterstateproviController,
      this.iphone1415ProMaxSixModelObj});

  TextEditingController? fullNameController;

  TextEditingController? phoneNumberController;

  TextEditingController? emailController;

  TextEditingController? enterFlatApartmController;

  TextEditingController? nameController;

  TextEditingController? cityController;

  TextEditingController? enterstateproviController;

  Iphone1415ProMaxSixModel? iphone1415ProMaxSixModelObj;

  @override
  List<Object?> get props => [
        fullNameController,
        phoneNumberController,
        emailController,
        enterFlatApartmController,
        nameController,
        cityController,
        enterstateproviController,
        iphone1415ProMaxSixModelObj
      ];
  Iphone1415ProMaxSixState copyWith({
    TextEditingController? fullNameController,
    TextEditingController? phoneNumberController,
    TextEditingController? emailController,
    TextEditingController? enterFlatApartmController,
    TextEditingController? nameController,
    TextEditingController? cityController,
    TextEditingController? enterstateproviController,
    Iphone1415ProMaxSixModel? iphone1415ProMaxSixModelObj,
  }) {
    return Iphone1415ProMaxSixState(
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
      iphone1415ProMaxSixModelObj:
          iphone1415ProMaxSixModelObj ?? this.iphone1415ProMaxSixModelObj,
    );
  }
}
