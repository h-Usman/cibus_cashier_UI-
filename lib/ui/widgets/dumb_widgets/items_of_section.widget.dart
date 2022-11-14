import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../theme/cibus.colors.dart';

class ItemListWidget extends StatelessWidget {
  final Function? goToPageRequested;
  final Function? goToModalRequested;
  final String title;
  final String price;

  const ItemListWidget({
    Key? key,
    this.goToPageRequested,
    this.goToModalRequested,
    required this.title,
    required this.price,
  }) : super(key: key);

  get model => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ccNeutral0,
        boxShadow: cbssShadowBase,
        borderRadius: BorderRadius.circular(1.098.sp),
      ),
      margin: EdgeInsets.only(
          // left: 3.sp,
          right: 3.sp,
          bottom: 2.sp),
      child: ExpansionTile(
        tilePadding: EdgeInsets.only(left: 0, bottom: 0),
        collapsedIconColor: ccDanger300,
        iconColor: ccDanger300,
        title: SizedBox(
            height: 16.4835.sp,
            // decoration: BoxDecoration(
            //   color: ccNeutral0,
            //   boxShadow: cbssShadowBase,
            //   borderRadius: BorderRadius.circular(1.098.sp),
            // ),
            // margin: EdgeInsets.only(left: 3.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 16.4835.sp,
                  height: 16.4835.sp,
                  decoration: BoxDecoration(
                    color: ccNeutral0,
                    borderRadius: BorderRadius.circular(2.2.sp),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Image.asset(
                    "../assets/imges/itm.png",
                    width: 16.4835.sp,
                    height: 16.4835.sp,
                  ),
                ),
                cshorzSpace2,
                Container(
                  padding: EdgeInsets.only(top: 1.sp, bottom: 1.sp),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 107.2.sp,
                        child: Text(
                          title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.sen(
                            color: ccDanger300,
                            fontSize: 3.73626.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Text(
                        "RM $price",
                        style: GoogleFonts.sen(
                          color: ccNutural550,
                          fontSize: 3.73626.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(width: 1, color: ccPrimary300),
                bottom: BorderSide(width: 1, color: ccPrimary300),
              ),
            ),
            padding: EdgeInsets.only(left: 22.sp),
            child: Column(
              children: [
                csvertSpace2,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Select Salad Type",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.sen(
                        color: ccDanger300,
                        fontSize: 3.73626.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    cshorzSpace2,
                    Text(
                      "Pick One",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.sen(
                        color: ccNutural550,
                        fontSize: 3.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                csvertSpace2,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Radio(
                      value: true,
                      groupValue: true,
                      activeColor: ccDanger300,
                      onChanged:
                          // ignore: non_constant_identifier_names
                          (Myvalue) {
                        // setState(() {
                        //   Myvalue = Myvalue;
                        // });
                      },
                    ),
                    cshorzSpace4,
                    Text(
                      'Greek Slad',
                      style: GoogleFonts.sen(
                        fontSize: 4.395.sp,
                        fontWeight: FontWeight.w400,
                        color: ccNutural550,
                      ),
                    ),
                  ],
                ),
                csvertSpace1,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Radio(
                      value: '',
                      groupValue: false,
                      activeColor: ccDanger300,
                      onChanged:
                          // ignore: non_constant_identifier_names
                          (Myvalue) {
                        // setState(() {
                        //   Myvalue = Myvalue;
                        // });
                      },
                    ),
                    cshorzSpace4,
                    Text(
                      'Ceaser Salad',
                      style: GoogleFonts.sen(
                        fontSize: 4.395.sp,
                        fontWeight: FontWeight.w400,
                        color: ccNutural550,
                      ),
                    ),
                  ],
                ),
                csvertSpace3,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Extras",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.sen(
                        color: ccDanger300,
                        fontSize: 3.73626.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    cshorzSpace2,
                    Text(
                      "Select upto 3 Items",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.sen(
                        color: ccNutural550,
                        fontSize: 3.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                csvertSpace2,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 5.sp,
                      height: 5.sp,
                      padding: EdgeInsets.only(left: 3.sp),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: ccNeutral0,
                            //  check == true ? ccDanger300 :
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                      child: Checkbox(
                        // shape: CircleBorder(),
                        activeColor: ccDanger300,
                        checkColor: ccNeutral0,
                        value: false,
                        onChanged: (value) {
                          // setState(() {
                          //   _myBoolean = value; // rebuilds with new value
                          // });
                        },
                      ),
                    ),
                    cshorzSpace4,
                    Text(
                      'Olive Dressing',
                      style: GoogleFonts.sen(
                        fontSize: 4.395.sp,
                        fontWeight: FontWeight.w400,
                        color: ccNutural550,
                      ),
                    ),
                  ],
                ),
                csvertSpace1,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 5.sp,
                      height: 5.sp,
                      padding: EdgeInsets.only(left: 3.sp),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: ccNeutral0,
                            //  check == true ? ccDanger300 :
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                      child: Checkbox(
                        // shape: CircleBorder(),
                        activeColor: ccDanger300,
                        checkColor: ccNeutral0,
                        value: true,
                        onChanged: (value) {
                          // setState(() {
                          //   _myBoolean = value; // rebuilds with new value
                          // });
                        },
                      ),
                    ),
                    cshorzSpace4,
                    Text(
                      'Humus Plate',
                      style: GoogleFonts.sen(
                        fontSize: 4.395.sp,
                        fontWeight: FontWeight.w400,
                        color: ccNutural550,
                      ),
                    ),
                  ],
                ),
                csvertSpace1,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 5.sp,
                      height: 5.sp,
                      padding: EdgeInsets.only(left: 3.sp),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: ccNeutral0,
                            //  check == true ? ccDanger300 :
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                      child: Checkbox(
                        // shape: CircleBorder(),
                        activeColor: ccDanger300,
                        checkColor: ccNeutral0,
                        value: false,
                        onChanged: (value) {
                          // setState(() {
                          //   _myBoolean = value; // rebuilds with new value
                          // });
                        },
                      ),
                    ),
                    cshorzSpace4,
                    Text(
                      'Cottage Cheese Upgrade',
                      style: GoogleFonts.sen(
                        fontSize: 4.395.sp,
                        fontWeight: FontWeight.w400,
                        color: ccNutural550,
                      ),
                    ),
                  ],
                ),
                csvertSpace3
              ],
            ),
          ),
          csvertSpace2,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 11.648.sp,
                width: 52.527.sp,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ccDanger300,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.1978.sp),
                    ),
                  ),
                  onPressed: () {
                    // model.goToPage('pay');
                  },
                  child: Text(
                    'Add to Order',
                    style: TextStyle(
                      fontSize: 4.3956.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
          csvertSpace2,
        ],
      ),
    );
  }
}
