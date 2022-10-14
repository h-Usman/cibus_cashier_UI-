import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.colors.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked/stacked.dart';

import './wellcome_view_model.dart';

class WellcomeView extends StatelessWidget {
  const WellcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WellcomeViewModel>.reactive(
      viewModelBuilder: () => WellcomeViewModel(),
      onModelReady: (WellcomeViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        WellcomeViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          body: Container(
            height: 100.h,
            width: 100.w,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("../assets/imges/welcome1.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 13.h)),
                SvgPicture.asset(
                  "../assets/imges/mlogo.svg",
                  height: 42.210989011.sp,
                  width: 43.7362.sp,
                  // width: 49.2461.w,
                ),
                Padding(padding: EdgeInsets.only(top: 16.48351.sp)),
                Text("HOLD TIGHT",
                    style: GoogleFonts.inter(
                      color: ccNeutral0,
                      fontSize: 7.032967.sp,
                      // fontSize: 21.sp,
                      fontWeight: FontWeight.w400,
                    )),
                Text("we are loading the menu",
                    style: GoogleFonts.inter(
                      color: ccNeutral0,
                      fontSize: 3.7362.sp,
                      // fontSize: 11.sp,
                      fontWeight: FontWeight.w400,
                    )),
                csvertSpace2,
                SvgPicture.asset(
                  "../assets/imges/doted-line.svg",
                  // width: 43.w,
                  width: 43.7362.sp,
                ),
              ],
            ),
          ),
          // end first page widget
          // start second page widget
          //     Stack(
          //   children: [
          //     Positioned.fill(
          //         top: 0,
          //         left: 0,
          //         // bottom: 0,
          //         child: Align(
          //           alignment: Alignment.topLeft,
          //           child: SvgPicture.asset(
          //             "../assets/imges/left-t.svg",
          //             height: 43.29670.sp,
          //             width: 23.18681.w,
          //           ),
          //         )),
          //     Positioned.fill(
          //         top: 0,
          //         right: 0,
          //         // bottom: 0,
          //         child: Align(
          //           alignment: Alignment.topRight,
          //           child: SvgPicture.asset(
          //             "../assets/imges/right-t.svg",
          //             height: 32.20.sp,
          //             width: 70.98.sp,
          //           ),
          //         )),
          //     Positioned.fill(
          //       bottom: 11.50.sp,
          //       left: 0,
          //       child: Align(
          //         alignment: Alignment.bottomLeft,
          //         child: Image.asset(
          //           "../assets/imges/left-b.png",
          //           height: 91.8681.sp,
          //           width: 50.10989.sp,
          //         ),
          //       ),
          //     ),
          //     Positioned.fill(
          //       bottom: -2.sp,
          //       right: 0,
          //       child: Align(
          //         alignment: Alignment.bottomRight,
          //         child: Image.asset(
          //           "../assets/imges/right-b.png",
          //           height: 91.8681.sp,
          //           width: 54.50.sp,
          //         ),
          //       ),
          //     ),
          //     SizedBox(
          //       height: 100.h,
          //       width: 100.w,
          //       child: Column(
          //         children: [
          //           Padding(padding: EdgeInsets.only(top: 24.sp)),
          //           Image.asset(
          //             "../assets/imges/welcome-logo.png",
          //             height: 29.230.sp,
          //             width: 29.230.sp,
          //           ),
          //           Padding(padding: EdgeInsets.only(top: 16.48351.sp)),
          //           Text("WELCOME",
          //               style: GoogleFonts.inter(
          //                 color: Color(0xff615793),
          //                 fontSize: 7.0329670.sp,
          //                 fontWeight: FontWeight.w400,
          //               )),
          //           csvertSpace1,
          //           Text("We are creating an order for you.",
          //               style: GoogleFonts.inter(
          //                 color: Color(0xff615793),
          //                 fontSize: 3.5164835.sp,
          //                 fontWeight: FontWeight.w400,
          //               )),
          //         ],
          //       ),
          //     ),
          //   ],
          // ),
          // end second page widget
        );
      },
    );
  }
}
