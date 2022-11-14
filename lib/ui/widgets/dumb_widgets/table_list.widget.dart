import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 19.sp,
                  child: DropdownButton(
                    dropdownColor: ccNeutral0,
                    borderRadius: BorderRadius.circular(2.1978.sp),
                    icon: SvgPicture.asset(
                      "../assets/imges/elipse-h-white.svg",
                      height: 4.sp,
                      width: 3.51648.sp,
                    ),
                    underline: Container(
                      height: 0.0,
                      color: Colors.transparent,
                    ),
                    elevation: 0,
                    items: [
                      DropdownMenuItem(
                        value: "Print QR Code",
                        child: InkWell(
                          child: Row(
                            children: [
                              Text(
                                "Print QR Code",
                                style: GoogleFonts.sen(
                                  color: ccNutural550,
                                  fontSize: 4.3956.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          onTap: () {
                            model.goToPage('qr_code');
                          },
                        ),
                      ),
                      DropdownMenuItem(
                        value: "Create a new Order",
                        child: InkWell(
                          child: Row(
                            children: [
                              Text(
                                "Create a new Order",
                                style: GoogleFonts.sen(
                                  color: ccNutural550,
                                  fontSize: 4.3956.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          onTap: () {
                            model.goToPage('create_order');
                          },
                        ),
                      ),
                    ],
                    onChanged: (value) {},
                  ),
                ),
                cshorzSpace4,
              ],
            ),
            Center(
              child: Text(
                tName,
                style: GoogleFonts.sen(
                  color: ccNeutral0,
                  fontSize: 5.7142.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ));
  }
}
