import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../theme/cibus.colors.dart';

class MultiPriceItemWidget extends StatelessWidget {
  final Function? goToPageRequested;
  final Function? goToModalRequested;
  final String lebel;
  final String price;
  final String fName;
  final String lName;

  const MultiPriceItemWidget({
    Key? key,
    this.goToPageRequested,
    this.goToModalRequested,
    required this.price,
    required this.lebel,
    required this.fName,
    required this.lName,
  }) : super(key: key);

  get model => null;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 42.857.sp,
      height: 38.681.sp,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 26.40.sp,
            decoration: BoxDecoration(
              color: ccNatural250,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(2.2.sp),
                topLeft: Radius.circular(2.2.sp),
              ),
            ),
            child: Center(
              child: Text(
                lebel,
                style: GoogleFonts.sen(
                  color: ccNutural550,
                  fontSize: 13.1868.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Container(
            height: 11.64835.sp,
            padding: EdgeInsets.only(left: 2.sp, right: 2.sp),
            decoration: BoxDecoration(
              color: ccNeutral0,
              border: Border.all(
                width: 1,
                color: ccPrimary300,
              ),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(2.2.sp),
                bottomLeft: Radius.circular(2.2.sp),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // cshorzSpace2,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      fName,
                      style: GoogleFonts.sen(
                        color: ccNutural550,
                        fontSize: 3.5164.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      lName,
                      style: GoogleFonts.sen(
                        color: ccNutural550,
                        fontSize: 3.5164.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Text(
                  price,
                  style: GoogleFonts.sen(
                    color: ccDanger300,
                    fontSize: 3.5164.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
