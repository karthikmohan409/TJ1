part of 'calendar_one_bloc.dart';

/// Represents the state of CalendarOne in the application.

// ignore_for_file: must_be_immutable
class CalendarOneState extends Equatable {
  CalendarOneState(
      {this.cardtypeoneController,
      this.paymentapponeController,
      this.calendarOneModelObj});

  TextEditingController? cardtypeoneController;

  TextEditingController? paymentapponeController;

  CalendarOneModel? calendarOneModelObj;

  @override
  List<Object?> get props =>
      [cardtypeoneController, paymentapponeController, calendarOneModelObj];
  CalendarOneState copyWith({
    TextEditingController? cardtypeoneController,
    TextEditingController? paymentapponeController,
    CalendarOneModel? calendarOneModelObj,
  }) {
    return CalendarOneState(
      cardtypeoneController:
          cardtypeoneController ?? this.cardtypeoneController,
      paymentapponeController:
          paymentapponeController ?? this.paymentapponeController,
      calendarOneModelObj: calendarOneModelObj ?? this.calendarOneModelObj,
    );
  }
}
