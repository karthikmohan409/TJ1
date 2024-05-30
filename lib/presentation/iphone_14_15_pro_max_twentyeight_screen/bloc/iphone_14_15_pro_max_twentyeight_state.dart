part of 'iphone_14_15_pro_max_twentyeight_bloc.dart';

/// Represents the state of Iphone1415ProMaxTwentyeight in the application.

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxTwentyeightState extends Equatable {
  Iphone1415ProMaxTwentyeightState(
      {this.privacyPolicyAgreement = false,
      this.iphone1415ProMaxTwentyeightModelObj});

  Iphone1415ProMaxTwentyeightModel? iphone1415ProMaxTwentyeightModelObj;

  bool privacyPolicyAgreement;

  @override
  List<Object?> get props =>
      [privacyPolicyAgreement, iphone1415ProMaxTwentyeightModelObj];
  Iphone1415ProMaxTwentyeightState copyWith({
    bool? privacyPolicyAgreement,
    Iphone1415ProMaxTwentyeightModel? iphone1415ProMaxTwentyeightModelObj,
  }) {
    return Iphone1415ProMaxTwentyeightState(
      privacyPolicyAgreement:
          privacyPolicyAgreement ?? this.privacyPolicyAgreement,
      iphone1415ProMaxTwentyeightModelObj:
          iphone1415ProMaxTwentyeightModelObj ??
              this.iphone1415ProMaxTwentyeightModelObj,
    );
  }
}
