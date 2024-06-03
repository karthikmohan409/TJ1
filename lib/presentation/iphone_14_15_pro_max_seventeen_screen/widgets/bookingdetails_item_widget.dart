import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import '../../../core/app_export.dart';
import '../controller/iphone_14_15_pro_max_seventeen_controller.dart';
import '../models/bookingdetails_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class BookingdetailsItemWidget extends StatelessWidget {
  BookingdetailsItemWidget(this.bookingdetailsItemModelObj, {Key? key})
      : super(
          key: key,
        );

  BookingdetailsItemModel bookingdetailsItemModelObj;

  var controller = Get.find<Iphone1415ProMaxSeventeenController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 27.h,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCut,
                height: 19.adaptSize,
                width: 19.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 13.h),
                child: Obx(
                  () => Text(
                    bookingdetailsItemModelObj.tableName!.value,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
              ),
              Spacer(),
              Obx(
                () => Text(
                  bookingdetailsItemModelObj.tablePrice!.value,
                  style: CustomTextStyles.titleMediumBluegray800,
                ),
              )
            ],
          ),
          SizedBox(height: 30.v),
          Padding(
            padding: EdgeInsets.only(right: 8.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgClock,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: Obx(
                    () => Text(
                      bookingdetailsItemModelObj.timeSlot!.value,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ),
                Spacer(),
                Obx(
                  () => Text(
                    bookingdetailsItemModelObj.duration!.value,
                    style: theme.textTheme.bodyLarge,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 12.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCalendarDeepPurple9000119x19,
                height: 19.adaptSize,
                width: 19.adaptSize,
                margin: EdgeInsets.only(bottom: 1.v),
              ),
              Padding(
                padding: EdgeInsets.only(left: 12.h),
                child: Obx(
                  () => Text(
                    bookingdetailsItemModelObj.date!.value,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
