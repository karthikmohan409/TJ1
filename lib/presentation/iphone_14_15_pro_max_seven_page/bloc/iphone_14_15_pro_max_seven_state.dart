part of 'iphone_14_15_pro_max_seven_bloc.dart';

/// Represents the state of Iphone1415ProMaxSeven in the application.

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxSevenState extends Equatable {
  Iphone1415ProMaxSevenState(
      {this.searchController, this.iphone1415ProMaxSevenModelObj});

  TextEditingController? searchController;

  Iphone1415ProMaxSevenModel? iphone1415ProMaxSevenModelObj;

  @override
  List<Object?> get props => [searchController, iphone1415ProMaxSevenModelObj];
  Iphone1415ProMaxSevenState copyWith({
    TextEditingController? searchController,
    Iphone1415ProMaxSevenModel? iphone1415ProMaxSevenModelObj,
  }) {
    return Iphone1415ProMaxSevenState(
      searchController: searchController ?? this.searchController,
      iphone1415ProMaxSevenModelObj:
          iphone1415ProMaxSevenModelObj ?? this.iphone1415ProMaxSevenModelObj,
    );
  }
}
