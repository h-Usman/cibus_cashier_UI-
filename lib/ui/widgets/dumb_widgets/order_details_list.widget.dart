import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.colors.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class OrderDetailListItemWidget extends StatelessWidget {
  final Function goToPageRequested;
  final Function? goToModalRequested;
  final String id;
  final String iName;
  final String type;
  final String waiter;
  final String total;
  final String day;
  final String time;
  final String table;

  const OrderDetailListItemWidget({
    Key? key,
    this.goToModalRequested,
    required this.goToPageRequested,
    required this.waiter,
    required this.iName,
    required this.type,
    required this.total,
    required this.id,
    required this.day,
    required this.time,
    required this.table,
  }) : super(key: key);

  get model => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15.3846.sp,
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
            width: 30.3.sp,
            child: Text(
              id,
              style: GoogleFonts.sen(
                color: ccNutural550,
                fontSize: 5.71428.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          // cshorzSpace18,
          SizedBox(
            width: 38.384.sp,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                cshorzSpace4,
                Text(
                  day,
                  style: GoogleFonts.sen(
                    color: ccNutural550,
                    fontSize: 3.736.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  time,
                  style: GoogleFonts.sen(
                    color: ccDanger300,
                    fontSize: 5.71428.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          cshorzSpace18,
          SizedBox(
            width: 24.1758.sp,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 24.1758.sp,
                  height: 7.4725.sp,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: ccDanger300,
                    ),
                    color: ccDanger100,
                  ),
                  child: CircleAvatar(
                    backgroundColor: ccDanger100,
                    radius: 5,
                    child: Text(
                      type,
                      style: GoogleFonts.sen(
                        color: ccDanger300,
                        fontSize: 3.736.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          cshorzSpace18,
          SizedBox(
            width: 19.78.sp,
            child: Center(
              child: Text(
                table,
                style: GoogleFonts.sen(
                  color: ccNutural550,
                  fontSize: 5.71428.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          cshorzSpace18,
          SizedBox(
            width: 36.46.sp,
            child: Center(
              child: Text(
                waiter,
                style: GoogleFonts.sen(
                  color: ccNutural550,
                  fontSize: 5.71428.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 30.1758.sp,
            child: Center(
              child: Text(
                total,
                style: GoogleFonts.sen(
                  color: ccNutural550,
                  fontSize: 5.71428.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          // cshorzSpace4,
          SizedBox(
            width: 56.65.sp,
            // color: ccNutural550,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 46.43956.sp,
                  // margin: EdgeInsets.only(left: 3.sp),
                  child: ElevatedButton(
                    onPressed: () {
                      goToPageRequested('pay');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ccDanger300,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2.1978.sp),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          // height: 18.sp,
                          height: 11.648.sp,
                          child: Center(
                            child: Text(
                              'Proceed to payment',
                              style: TextStyle(
                                  color: ccNeutral0,
                                  fontSize: 4.3956.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ],
                    ),
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
