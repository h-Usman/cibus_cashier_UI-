import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../theme/cibus.colors.dart';

class TableHeaderWidget extends StatelessWidget {
  final String selectedTabName;
  final Function goToPageRequested;
  const TableHeaderWidget({
    Key? key,
    required this.goToPageRequested,
    required this.selectedTabName,
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(mainAxisAlignment: MainAxisAlignment.center,
              // width: 10.w,
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      InkWell(
                        child: Container(
                          // color: ccNeutral0,
                          color: selectedTabName == "order"
                              ? ccDanger300
                              : ccNeutral0,
                          width: 39.34736.sp,
                          height: 13.64615.sp,
                          child: Center(
                            child: Text(
                              "Orders",
                              style: GoogleFonts.sen(
                                color: selectedTabName == "order"
                                    ? ccNeutral0
                                    : ccNutural550,
                                fontSize: 5.714.sp,
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          goToPageRequested('orders_details');
                        },
                      ),
                      InkWell(
                        child: Container(
                          // color: ccDanger300,
                          color: selectedTabName == "table"
                              ? ccDanger300
                              : ccNeutral0,
                          width: 42.63736.sp,
                          height: 13.64615.sp,
                          child: Center(
                            child: Text(
                              "Tables",
                              style: GoogleFonts.sen(
                                color: selectedTabName == "table"
                                    ? ccNeutral0
                                    : ccNutural550,
                                fontSize: 5.714.sp,
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          goToPageRequested('table');
                        },
                      ),
                      Container(
                        color: selectedTabName == "history"
                            ? ccDanger300
                            : ccNeutral0,
                        width: 42.63736.sp,
                        height: 13.64615.sp,
                        child: Center(
                          child: Text(
                            "Order History",
                            style: GoogleFonts.sen(
                              color: selectedTabName == "history"
                                  ? ccNeutral0
                                  : ccNutural550,
                              fontSize: 5.714.sp,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
          // Text(
          //   "Chef n Stuff, Welcome!",
          //   style: GoogleFonts.sen(
          //     color: ccDanger300,
          //     fontSize: 5.sp,
          //   ),
          // ),
          Column(mainAxisAlignment: MainAxisAlignment.center,
              // width: 10.w,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      "../assets/imges/hamburger.svg",
                      height: 2.63736.sp,
                      width: 3.2967.sp,
                    ),
                    cshorzSpace9,
                    Text(
                      "Abbas Ali",
                      style: GoogleFonts.sen(
                        color: ccNutural550,
                        fontSize: 3.95.sp,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(right: 3.29.sp)),
                    SvgPicture.asset(
                      "../assets/imges/lock.svg",
                      height: 4.3956.sp,
                      width: 3.516.sp,
                    ),
                    cshorzSpace5,
                    Container(
                        height: 1.758.sp,
                        width: 1.758.sp,
                        decoration: BoxDecoration(
                          color: ccSuccess800,
                          borderRadius: BorderRadius.circular(100.sp),
                        )),
                  ],
                ),
              ]),
        ],
      ),
    );
  }
}
