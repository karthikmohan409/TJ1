import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import '../../../core/app_export.dart';
import '../models/bookingslist_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class BookingslistItemWidget extends StatelessWidget {
  BookingslistItemWidget(this.bookingslistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  BookingslistItemModel bookingslistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 18.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup123,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bookingslistItemModelObj.musicImage!,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(bottom: 2.v),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 13.h),
                  child: Text(
                    bookingslistItemModelObj.badmintonCourtT!,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                Spacer(),
                Text(
                  bookingslistItemModelObj.priceText!,
                  style: CustomTextStyles.titleMediumBluegray800,
                )
              ],
            ),
          ),
          SizedBox(height: 16.v),
          Divider(
            color: appTheme.blueGray80001,
          ),
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.only(
              left: 14.h,
              right: 22.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgClock,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: Text(
                    bookingslistItemModelObj.timeText!,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                Spacer(),
                Text(
                  bookingslistItemModelObj.durationText!,
                  style: theme.textTheme.bodyLarge,
                )
              ],
            ),
          ),
          SizedBox(height: 12.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 14.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgCalendarDeepPurple9000119x19,
                    height: 19.adaptSize,
                    width: 19.adaptSize,
                    margin: EdgeInsets.only(bottom: 1.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: Text(
                      bookingslistItemModelObj.dateText!,
                      style: theme.textTheme.bodyLarge,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
