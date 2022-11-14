import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.colors.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class OrderListItemWidget extends StatelessWidget {
  final Function? goToPageRequested;
  final Function? goToModalRequested;
  final String iName;
  final String iType;
  final String price;
  final String tPrice;
  final String total;

  const OrderListItemWidget({
    Key? key,
    this.goToPageRequested,
    this.goToModalRequested,
    required this.price,
    required this.iName,
    required this.iType,
    required this.total,
    required this.tPrice,
  }) : super(key: key);

  get model => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 15.3846.sp,
      decoration: const BoxDecoration(
        color: ccNeutral0,
        border: Border(
          bottom: BorderSide(color: ccNatural250, width: 1),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          cshorzSpace4,
          SizedBox(
            width: 66.373.sp,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                csvertSpace2,
                Text(
                  iName,
                  style: GoogleFonts.sen(
                    color: ccNutural550,
                    fontSize: 3.736.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                csvertSpace1,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      iType,
                      style: GoogleFonts.sen(
                        color: ccDanger300,
                        fontSize: 3.51648.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      price,
                      style: GoogleFonts.sen(
                        color: ccDanger300,
                        fontSize: 3.51648.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                // csvertSpace1,
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Text(
                //       iType,
                //       style: GoogleFonts.sen(
                //         color: ccDanger300,
                //         fontSize: 3.51648.sp,
                //         fontWeight: FontWeight.w400,
                //       ),
                //     ),
                //     Text(
                //       price,
                //       style: GoogleFonts.sen(
                //         color: ccDanger300,
                //         fontSize: 3.51648.sp,
                //         fontWeight: FontWeight.w400,
                //       ),
                //     ),
                //   ],
                // ),
                csvertSpace2,
              ],
            ),
          ),
          SizedBox(
            width: 36.2612.sp,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 6.1538.sp,
                  height: 6.1538.sp,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(109.sp),
                    border: Border.all(
                      color: ccPrimary300,
                    ),
                  ),
                  child: CircleAvatar(
                    backgroundColor: ccNeutral0,
                    radius: 20,
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      icon: Icon(Icons.remove),
                      iconSize: 5.sp,
                      color: ccNutural550,
                      onPressed: () {},
                    ),
                  ),
                ),
                cshorzSpace4,
                Text(
                  "1",
                  style: GoogleFonts.sen(
                    color: ccNutural550,
                    fontSize: 3.736.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                cshorzSpace4,
                Container(
                  width: 6.1538.sp,
                  height: 6.1538.sp,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(109.sp),
                    border: Border.all(
                      color: ccPrimary300,
                    ),
                  ),
                  child: CircleAvatar(
                    backgroundColor: ccNeutral0,
                    radius: 20,
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      icon: Icon(Icons.add),
                      iconSize: 5.sp,
                      color: ccNutural550,
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 25.0549.sp,
            child: Text(
              tPrice,
              style: GoogleFonts.sen(
                color: ccNutural550,
                fontSize: 3.736.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            child: Text(
              total,
              style: GoogleFonts.sen(
                color: ccNutural550,
                fontSize: 3.736.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
