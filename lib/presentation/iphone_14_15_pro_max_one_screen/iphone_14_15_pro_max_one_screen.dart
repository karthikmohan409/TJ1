import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/iphone_14_15_pro_max_one_bloc.dart';
import 'models/iphone_14_15_pro_max_one_model.dart';

class Iphone1415ProMaxOneScreen extends StatelessWidget {
  const Iphone1415ProMaxOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone1415ProMaxOneBloc>(
      create: (context) => Iphone1415ProMaxOneBloc(Iphone1415ProMaxOneState(
        iphone1415ProMaxOneModelObj: Iphone1415ProMaxOneModel(),
      ))
        ..add(Iphone1415ProMaxOneInitialEvent()),
      child: Iphone1415ProMaxOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Iphone1415ProMaxOneBloc, Iphone1415ProMaxOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
              width: SizeUtils.width,
              height: SizeUtils.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.4, 0.97),
                  end: Alignment(0.4, 0.02),
                  colors: [appTheme.deepPurple800, appTheme.indigo900],
                ),
              ),
              child: SizedBox(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgGroup2613,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(
                      horizontal: 26.h,
                      vertical: 274.v,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          ImageConstant.imgGroup1,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 20.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgWhatsappImage,
                          height: 364.v,
                          width: 368.h,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
