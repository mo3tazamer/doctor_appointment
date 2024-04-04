import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/color_manager.dart';
import '../../core/font_manager.dart';
import '../../core/text_style/textstyle_manager_poppins.dart';
import '../widgets/my_Text_form_filed.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        physics: const RangeMaintainingScrollPhysics(),
        child: Column(children: [
          Stack(children: [
            Container(
              decoration: BoxDecoration(
                color: ColorManager.blue,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(20.dm)),
              ),
              height: 265.h,
              width: double.infinity.w,
            ),
            Positioned(
                left: 10.h,
                top: 50.h,
                child: Padding(
                  padding: EdgeInsets.all(8.0.h),
                  child: CircleAvatar(radius: 28.dm),
                )),
            Positioned(
              right: 10.h,
              top: 50.h,
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.access_time_filled_rounded)),
            ),
            Positioned(
                left: 10.h,
                top: 125.h,
                child: Text(
                  'Good Morning....',
                  style: regularTextStylePoppins(
                      color: ColorManager.white, fontSize: FontSize.s15.sp),
                )),
            Positioned(
                left: 10.h,
                top: 150.h,
                child: Text(
                  'LAKSHAY',
                  style: getBoldStylePoppins(
                      color: ColorManager.white, fontSize: FontSize.s18.sp),
                )),
            Positioned(
                left: 15.h,
                top: 185.h,
                child: SizedBox(
                    height: 60.h,
                    width: 320.w,
                    child: const MyTextFormFiled(
                      colorManager: ColorManager.yellow,
                      hintText: 'Search....',
                      suffixIcon: Icons.search_rounded,
                    )))
          ]),
          Padding(
            padding: EdgeInsets.all(15.0.h),
            child: Row(
              children: [
                Text(
                  'Top Doctors',
                  style: getSemiBoldStylePoppins(
                      fontSize: FontSize.s15.sp, color: ColorManager.black),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100.h,
            width: double.infinity.w,
            child: ListView.builder(
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        children: [
                          Flexible(
                            child: CircleAvatar(
                              backgroundColor: Colors.amber,
                              radius: 35.dm,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            'dr. ${index + 1}',
                            style: getMediumStylePoppins(
                                color: ColorManager.black,
                                fontSize: FontSize.s12),
                          )
                        ],
                      ),
                    ),
                itemCount: 5,
                scrollDirection: Axis.horizontal),
          ),
          SizedBox(
            height: 160.h,
            child: PageView.builder(

              physics: const BouncingScrollPhysics(),
              controller: controller,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(15.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.h),
                  child: Container(
                    height: 350.h,
                    width: 137.w,
                    color: Colors.red,
                  ),
                ),
              ),
              itemCount: 5,
            ),
          ),
          SmoothPageIndicator(
            controller: controller,
            count: 5,
            effect: SlideEffect(
              dotHeight: 6.h,
              dotWidth: 6.w,
              activeDotColor: ColorManager.blue,
              dotColor: ColorManager.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0.h),
            child: Row(
              children: [
                Text(
                  'Service Packages',
                  style: getSemiBoldStylePoppins(
                      fontSize: FontSize.s15.sp, color: ColorManager.black),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                    height: 95.h,
                    width: 95.w,
                    decoration: BoxDecoration(
                      color: ColorManager.blue,
                      borderRadius: BorderRadius.circular(10.h),
                    ),
                  ),
                  Text(
                    'Easy',
                    style: getMediumStylePoppins(
                        color: ColorManager.black, fontSize: FontSize.s12.sp),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 95.h,
                    width: 95.w,
                    decoration: BoxDecoration(
                      color: ColorManager.blue,
                      borderRadius: BorderRadius.circular(10.h),
                    ),
                  ),
                  Text(
                    'Moderate',
                    style: getMediumStylePoppins(
                        color: ColorManager.black, fontSize: FontSize.s12.sp),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 95.h,
                    width: 95.w,
                    decoration: BoxDecoration(
                      color: ColorManager.blue,
                      borderRadius: BorderRadius.circular(10.h),
                    ),
                  ),
                  Text(
                    'Advance',
                    style: getMediumStylePoppins(
                        color: ColorManager.black, fontSize: FontSize.s12.sp),
                  )
                ],
              ),
            ],
          )
        ]),
      ),
    );
  }
}
