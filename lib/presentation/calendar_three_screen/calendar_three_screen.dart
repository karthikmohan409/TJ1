import 'package:flutter/material.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_icon_button.dart';
import 'bloc/calendar_three_bloc.dart';
import 'models/calendar_three_model.dart';

class CalendarThreeScreen extends StatelessWidget {
  const CalendarThreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CalendarThreeBloc>(
      create: (context) => CalendarThreeBloc(CalendarThreeState(
        calendarThreeModelObj: CalendarThreeModel(),
      ))
        ..add(CalendarThreeInitialEvent()),
      child: CalendarThreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 18.v),
          child: Column(
            children: [
              _buildCalendarRow(context),
              SizedBox(height: 18.v),
              Divider(
                color: appTheme.black900.withOpacity(0.12),
              ),
              SizedBox(height: 17.v),
              _buildMainCalendar(context),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCalendarRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 28.h,
        right: 25.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_calendar".tr,
            style: theme.textTheme.headlineSmall,
          ),
          CustomIconButton(
            height: 26.adaptSize,
            width: 26.adaptSize,
            child: CustomImageView(
              imagePath: ImageConstant.imgClose,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMainCalendar(BuildContext context) {
    return BlocBuilder<CalendarThreeBloc, CalendarThreeState>(
      builder: (context, state) {
        return SizedBox(
          height: 349.v,
          width: 378.h,
          child: CalendarDatePicker2(
            config: CalendarDatePicker2Config(
              calendarType: CalendarDatePicker2Type.single,
              firstDate: DateTime(DateTime.now().year - 5),
              lastDate: DateTime(DateTime.now().year + 5),
              firstDayOfWeek: 1,
              weekdayLabelTextStyle: TextStyle(
                color: appTheme.black900,
                fontFamily: 'GT Walsheim Pro',
                fontWeight: FontWeight.w500,
              ),
              dayTextStyle: TextStyle(
                color: appTheme.black900.withOpacity(0.8),
                fontFamily: 'GT Walsheim Pro',
                fontWeight: FontWeight.w400,
              ),
              weekdayLabels: ["Sa", "Mo", "Tu", "Tu", "We", "Th", "Fr"],
            ),
            value: state.selectedDatesFromCalendar ?? [],
            onValueChanged: (dates) {
              state.selectedDatesFromCalendar = dates;
            },
          ),
        );
      },
    );
  }
}
