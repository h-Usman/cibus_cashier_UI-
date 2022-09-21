import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../theme/cibus.colors.dart';

class TableListWidget extends StatelessWidget {
  final Function? goToPageRequested;
  final Function? goToModalRequested;
  final String tName;
  final bool status;

  const TableListWidget({
    Key? key,
    this.goToPageRequested,
    this.goToModalRequested,
    required this.tName,
    required this.status,
  }) : super(key: key);

  get model => null;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 43.956.sp,
        width: 69.23.sp,
        decoration: BoxDecoration(
          color: status == true ? ccSuccess800 : ccDanger300,
          borderRadius: BorderRadius.circular(2.1978.sp),
        ),
        child: Center(
          child: Text(
            tName,
            style: GoogleFonts.sen(
              color: ccNeutral0,
              fontSize: 5.7142.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ));
  }
}
