import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../theme/cibus.colors.dart';

class PayTopHeaderWidget extends StatelessWidget {
  // final Function goToPageRequested;
  const PayTopHeaderWidget({
    Key? key,
    // required this.goToPageRequested,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 14.sp,
      padding: EdgeInsets.only(left: 3.29.sp, right: 3.29.sp),
      decoration: BoxDecoration(
        boxShadow: cbssShadowBase,
        color: ccNeutral0,
        border: Border(
          bottom: BorderSide(
            width: 1.0,
            color: ccNatural250,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(mainAxisAlignment: MainAxisAlignment.center,
              // width: 10.w,
              children: [
                SizedBox(
                  width: 46.w,
                  child: Row(
                    children: [
                      InkWell(
                        child: Container(
                          color: ccNeutral0,
                          width: 39.34736.sp,
                          height: 13.64615.sp,
                          child: Center(
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  "../assets/imges/b-arrow.svg",
                                  height: 2.63736.sp,
                                  width: 5.0549.sp,
                                ),
                                Padding(padding: EdgeInsets.only(left: 3.5.sp)),
                                Text(
                                  "Cancel",
                                  style: GoogleFonts.sen(
                                    color: ccNutural550,
                                    fontSize: 5.714.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
              ]),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Receipt # 15",
                style: GoogleFonts.sen(
                  color: ccNutural550,
                  fontSize: 5.sp,
                ),
              ),
              Text(
                "Garden Table 1",
                style: GoogleFonts.sen(
                  color: ccDanger300,
                  fontSize: 5.sp,
                ),
              ),
            ],
          ),
          // Column(mainAxisAlignment: MainAxisAlignment.center,
          //     // width: 10.w,
          //     children: [
          //       Row(
          //         children: [
          //           SvgPicture.asset(
          //             "../assets/imges/hamburger.svg",
          //             height: 2.63736.sp,
          //             width: 3.2967.sp,
          //           ),
          //           cshorzSpace9,
          //           Text(
          //             "Abbas Ali",
          //             style: GoogleFonts.sen(
          //               color: ccNutural550,
          //               fontSize: 3.95.sp,
          //             ),
          //           ),
          //           Padding(padding: EdgeInsets.only(right: 3.29.sp)),
          //           SvgPicture.asset(
          //             "../assets/imges/lock.svg",
          //             height: 4.3956.sp,
          //             width: 3.516.sp,
          //           ),
          //           cshorzSpace5,
          //           Container(
          //               height: 1.758.sp,
          //               width: 1.758.sp,
          //               decoration: BoxDecoration(
          //                 color: ccSuccess800,
          //                 borderRadius: BorderRadius.circular(100.sp),
          //               )),
          //         ],
          //       ),
          //     ]),
        ],
      ),
    );
  }
}
