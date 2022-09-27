import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/footer.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/order_details_list.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/ordersTabs/orders_tab.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/show_side_dialogue.widget.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import '../../theme/cibus.colors.dart';
import './orders_details_view_model.dart';

import 'package:flutter_application_1/ui/widgets/dumb_widgets/TableTopHeader.widhet.dart';
import 'package:sizer/sizer.dart';

class OrdersDetailsView extends StatelessWidget {
  final bool multiOption = true;
  const OrdersDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OrdersDetailsViewModel>.reactive(
      viewModelBuilder: () => OrdersDetailsViewModel(),
      onModelReady: (OrdersDetailsViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        OrdersDetailsViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          backgroundColor: ccNeutral0,
          body: Row(
            children: [
              SizedBox(
                width: 100.w,
                height: 100.h,
                child: Stack(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            csvertSpace14,
                            Container(
                              padding: EdgeInsets.only(
                                left: 3.sp,
                                right: 3.sp,
                                top: 3.sp,
                              ),
                              // height: 12.sp,
                              color: ccNeutral0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      OrdersTabsWidget(
                                        goToPageRequested: (val) => {
                                          model.goToPage(val),
                                        },
                                        selectedTabName: 'all',
                                      ),
                                      Container(
                                        // color: ccDanger300,
                                        width: 35.sp,
                                        // height:44,
                                        padding: EdgeInsets.all(1.5.sp),
                                        height: 9.670.sp,
                                        decoration: BoxDecoration(
                                          color: ccDanger300,
                                          borderRadius:
                                              BorderRadius.circular(1.098.sp),
                                        ),

                                        child: DropdownButton(
                                          focusColor: ccNeutral0,
                                          hint: SizedBox(
                                            width: 25.sp,
                                            child: Center(
                                              child: Text(
                                                'New Order ',
                                                style: GoogleFonts.sen(
                                                  color: ccNeutral0,
                                                  fontSize: 4.395.sp,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          ),
                                          icon: SvgPicture.asset(
                                            "../assets/imges/add-new-white.svg",
                                            height: 5.714.sp,
                                          ),
                                          underline: Container(
                                            height: 0.0,
                                            color: Colors.transparent,
                                          ),
                                          elevation: 0,
                                          items: [
                                            DropdownMenuItem(
                                              value: "Dine-In",
                                              child: SizedBox(
                                                width: 25.sp,
                                                child: InkWell(
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        padding:
                                                            EdgeInsets.only(
                                                          top: 1.5.sp,
                                                          bottom: 1.5.sp,
                                                        ),
                                                        child: Text(
                                                          "Dine-In",
                                                          style:
                                                              GoogleFonts.sen(
                                                            color: ccNutural550,
                                                            fontSize: 4.3956.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                          // selectionColor:
                                                          //     ccDanger300,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  onTap: () {
                                                    model.goToPage(
                                                        'select_table');
                                                  },
                                                ),
                                              ),
                                            ),
                                            DropdownMenuItem(
                                              value: "Takeaway",
                                              child: SizedBox(
                                                width: 25.sp,
                                                child: InkWell(
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        padding:
                                                            EdgeInsets.only(
                                                          top: 1.5.sp,
                                                          bottom: 1.5.sp,
                                                        ),
                                                        child: Text(
                                                          "Takeaway",
                                                          style:
                                                              GoogleFonts.sen(
                                                            color: ccNutural550,
                                                            fontSize: 4.3956.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  onTap: () => showSideDialogue(
                                                    context: context,
                                                    title: "Add Section",
                                                    saveButtonText: "Save",
                                                    saveButtonPressed:
                                                        (dynamic val) {
                                                      // print(
                                                      //     "hello i am clicked with $val");
                                                      Navigator.pop(context);
                                                    },
                                                    child: Container(
                                                      height: 100.h - 110,
                                                      // width: 100.w,
                                                      padding: EdgeInsets.only(
                                                          top: 4.sp,
                                                          left: 3.50.sp,
                                                          right: 4.sp),
                                                      decoration: BoxDecoration(
                                                        border: Border(
                                                          bottom: BorderSide(
                                                            color: ccNutural550,
                                                            width: 1,
                                                          ),
                                                          top: BorderSide(
                                                            color: ccNutural550,
                                                            width: 1,
                                                          ),
                                                        ),
                                                      ),
                                                      child:
                                                          SingleChildScrollView(
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            csvertSpace2,
                                                            SizedBox(
                                                                height:
                                                                    100.h - 200,
                                                                width: 100.w,
                                                                child:
                                                                    SingleChildScrollView(
                                                                        child: Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                            children: [
                                                                      csvertSpace4,
                                                                      csvertSpace4,
                                                                      Column(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children: [
                                                                              Text(
                                                                                "Note ",
                                                                                style: GoogleFonts.sen(
                                                                                  fontSize: 4.395.sp,
                                                                                  fontWeight: FontWeight.w400,
                                                                                  color: ccDanger300,
                                                                                ),
                                                                              ),
                                                                              Tooltip(
                                                                                message: 'Section note to display at the bottom of the menu',
                                                                                textStyle: TextStyle(
                                                                                  color: ccNeutral0,
                                                                                ),
                                                                                child: SvgPicture.asset(
                                                                                  "../assets/imges/warning.svg",
                                                                                  width: 2.417.sp,
                                                                                  height: 2.417.sp,
                                                                                ),
                                                                              ),
                                                                              cshorzSpace16,
                                                                            ],
                                                                          ),
                                                                          Padding(
                                                                              padding: EdgeInsets.only(bottom: 3.95.sp)),
                                                                          SizedBox(
                                                                            width:
                                                                                95.w,
                                                                            height:
                                                                                8.791.sp,
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsets.symmetric(
                                                                                  // horizontal: 5.054.sp,
                                                                                  horizontal: 0,
                                                                                  vertical: 0),
                                                                              child: TextField(
                                                                                style: TextStyle(color: ccNutural550, fontSize: 3.956.sp),
                                                                                // controller: TextEditingController(
                                                                                //   text: value,
                                                                                // ),
                                                                                decoration: InputDecoration(
                                                                                  contentPadding: EdgeInsets.only(left: 2.63.sp),
                                                                                  border: OutlineInputBorder(
                                                                                      borderRadius: BorderRadius.circular(1.758.sp),
                                                                                      borderSide: BorderSide(
                                                                                        color: ccPrimary300,
                                                                                        width: 0.2197.sp,
                                                                                      )),
                                                                                  hintText: 'e.g. 10% Service Charge Included',
                                                                                  hintStyle: TextStyle(
                                                                                    color: ccPrimary300,
                                                                                    fontSize: 3.956.sp,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                              padding: EdgeInsets.only(bottom: 1.95.sp)),
                                                                        ],
                                                                      ),
                                                                      csvertSpace4,
                                                                      Column(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children: [
                                                                              Text(
                                                                                "Image",
                                                                                style: GoogleFonts.sen(
                                                                                  fontSize: 4.395.sp,
                                                                                  fontWeight: FontWeight.w400,
                                                                                  color: ccDanger300,
                                                                                ),
                                                                              ),
                                                                              cshorzSpace16,
                                                                            ],
                                                                          ),
                                                                          Padding(
                                                                              padding: EdgeInsets.only(bottom: 3.95.sp)),
                                                                          Container(
                                                                            width:
                                                                                42.857.sp,
                                                                            height:
                                                                                38.681.sp,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              // color: ccSuccess800,
                                                                              borderRadius: BorderRadius.circular(2.2.sp),
                                                                              border: Border.all(
                                                                                width: 0.5,
                                                                                color: ccNutural550,
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Column(
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Image.asset(
                                                                                  "../assets/imges/sect.png",
                                                                                  width: 42.857.sp,
                                                                                  height: 30.549.sp,
                                                                                ),
                                                                                // Text('ALLAH HOO'),
                                                                                // cshorzSpace16,
                                                                                SizedBox(
                                                                                  height: 7.50.sp,
                                                                                  child: Row(
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                    children: [
                                                                                      InkWell(
                                                                                          child: Tooltip(
                                                                                            message: 'Delete image',
                                                                                            textStyle: TextStyle(
                                                                                              color: ccNeutral0,
                                                                                            ),
                                                                                            child: SvgPicture.asset(
                                                                                              "../assets/imges/delete.svg",
                                                                                              width: 3.0760.sp,
                                                                                              height: 4.sp,
                                                                                            ),
                                                                                          ),
                                                                                          onTap: () => showDialog(
                                                                                                context: context,
                                                                                                builder: (_) => AlertDialog(
                                                                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2.197.sp))),
                                                                                                  content: Container(
                                                                                                    // color: Colors.white,
                                                                                                    width: 183.076.sp,
                                                                                                    height: 78.68.sp,
                                                                                                    decoration: const BoxDecoration(
                                                                                                        border: Border(
                                                                                                            bottom: BorderSide(
                                                                                                      width: 0.5,
                                                                                                      color: ccNatural250,
                                                                                                    ))),
                                                                                                    child: SizedBox(
                                                                                                      child: Column(
                                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                        children: [
                                                                                                          Container(
                                                                                                            decoration: const BoxDecoration(
                                                                                                                border: Border(
                                                                                                                    bottom: BorderSide(
                                                                                                              width: 0.5,
                                                                                                              color: ccNatural250,
                                                                                                            ))),
                                                                                                            height: 14.62.sp,
                                                                                                            child: Row(
                                                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                              children: [
                                                                                                                Expanded(
                                                                                                                  child: Container(
                                                                                                                    height: 10.62.sp,
                                                                                                                    alignment: Alignment.centerLeft,
                                                                                                                    child: Row(
                                                                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                                      children: [
                                                                                                                        SizedBox(
                                                                                                                          // color: Colors.red,
                                                                                                                          child: SvgPicture.asset(
                                                                                                                            "../assets/imges/warning-icon.svg",
                                                                                                                            height: 6.153.sp,
                                                                                                                            width: 6.153.sp,
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                        Padding(
                                                                                                                            padding: EdgeInsets.only(
                                                                                                                          left: 4.175.sp,
                                                                                                                        )),
                                                                                                                        Text(
                                                                                                                          'Are You Sure?',
                                                                                                                          style: GoogleFonts.sen(
                                                                                                                            color: ccDanger300,
                                                                                                                            fontSize: 5.714.sp,
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ],
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                                SizedBox(
                                                                                                                  height: 10.62.sp,
                                                                                                                  width: 10.sp,
                                                                                                                  child: ElevatedButton(
                                                                                                                    onPressed: () {
                                                                                                                      Navigator.pop(context);
                                                                                                                    },
                                                                                                                    style: ElevatedButton.styleFrom(
                                                                                                                      backgroundColor: ccNeutral0,
                                                                                                                      elevation: 0,
                                                                                                                      shadowColor: Colors.transparent,
                                                                                                                    ),
                                                                                                                    child: SvgPicture.asset(
                                                                                                                      "../assets/imges/close.svg",
                                                                                                                      height: 4.615.sp,
                                                                                                                      width: 4.615.sp,
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ],
                                                                                                            ),
                                                                                                          ),
                                                                                                          Padding(
                                                                                                            padding: EdgeInsets.only(top: 4.83.sp),
                                                                                                          ),
                                                                                                          // SizedBox
                                                                                                          Text(
                                                                                                            'Do you want to Delete this Picture',
                                                                                                            style: GoogleFonts.sen(
                                                                                                              color: ccNutural550,
                                                                                                              fontSize: 4.395.sp,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  actions: [
                                                                                                    Container(
                                                                                                      height: 7.25.sp,
                                                                                                      width: 29.23.sp,
                                                                                                      margin: EdgeInsets.only(
                                                                                                        bottom: 4.39.sp,
                                                                                                      ),
                                                                                                      // color: Colors.green,
                                                                                                      decoration: BoxDecoration(
                                                                                                        borderRadius: BorderRadius.circular(1.098.sp),
                                                                                                        border: Border.all(color: ccNutural550),
                                                                                                      ),
                                                                                                      child: ElevatedButton.icon(
                                                                                                        onPressed: () {
                                                                                                          Navigator.pop(context);
                                                                                                        },
                                                                                                        style: ElevatedButton.styleFrom(
                                                                                                          backgroundColor: ccNeutral0, // foreground
                                                                                                        ),
                                                                                                        icon: SvgPicture.asset(
                                                                                                          "../assets/imges/close.svg",
                                                                                                          width: 2.85.sp,
                                                                                                          height: 2.85.sp,
                                                                                                        ),
                                                                                                        label: Text(
                                                                                                          'NO',
                                                                                                          style: GoogleFonts.sen(
                                                                                                            color: ccNutural550,
                                                                                                            fontSize: 4.39.sp,
                                                                                                            fontWeight: FontWeight.w400,
                                                                                                          ),
                                                                                                        ), // <-- Text
                                                                                                      ),
                                                                                                    ),
                                                                                                    Padding(
                                                                                                        padding: EdgeInsets.only(
                                                                                                      left: 7.25.sp,
                                                                                                    )),
                                                                                                    Container(
                                                                                                      height: 7.25.sp,
                                                                                                      width: 29.23.sp,
                                                                                                      margin: EdgeInsets.only(
                                                                                                        bottom: 4.39.sp,
                                                                                                      ),
                                                                                                      // color: Colors.green,
                                                                                                      decoration: BoxDecoration(
                                                                                                        borderRadius: BorderRadius.circular(1.098.sp),
                                                                                                        border: Border.all(color: ccDanger300),
                                                                                                      ),
                                                                                                      child: ElevatedButton.icon(
                                                                                                        onPressed: () => {
                                                                                                          Navigator.pop(context),
                                                                                                        },
                                                                                                        style: ElevatedButton.styleFrom(
                                                                                                          backgroundColor: ccDanger300,
                                                                                                          elevation: 0,
                                                                                                          shadowColor: Colors.transparent,
                                                                                                        ),
                                                                                                        icon: SvgPicture.asset(
                                                                                                          "../assets/imges/check-white.svg",
                                                                                                          width: 4.17.sp,
                                                                                                          height: 3.07.sp,
                                                                                                        ),
                                                                                                        label: Text(
                                                                                                          'Yes',
                                                                                                          style: GoogleFonts.sen(
                                                                                                            color: ccNeutral0,
                                                                                                            fontSize: 4.39.sp,
                                                                                                            fontWeight: FontWeight.w400,
                                                                                                          ),
                                                                                                        ), // <-- Text
                                                                                                      ),
                                                                                                    ),
                                                                                                    Padding(
                                                                                                        padding: EdgeInsets.only(
                                                                                                      left: 5.25.sp,
                                                                                                    )),
                                                                                                  ],
                                                                                                ),
                                                                                              )),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                              padding: EdgeInsets.only(bottom: 1.95.sp)),
                                                                        ],
                                                                      ),
                                                                      csvertSpace4,
                                                                      Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                            "Display Section ",
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              fontSize: 4.395.sp,
                                                                              fontWeight: FontWeight.w400,
                                                                              color: ccDanger300,
                                                                            ),
                                                                          ),
                                                                          Tooltip(
                                                                            message:
                                                                                'You can hide / display the section in Cibus apps',
                                                                            textStyle:
                                                                                TextStyle(
                                                                              color: ccNeutral0,
                                                                            ),
                                                                            child:
                                                                                SvgPicture.asset(
                                                                              "../assets/imges/warning.svg",
                                                                              width: 2.417.sp,
                                                                              height: 2.417.sp,
                                                                            ),
                                                                          ),
                                                                          cshorzSpace16,
                                                                          SizedBox(
                                                                            child: FlutterSwitch(
                                                                                width: 9.67.sp,
                                                                                height: 5.274.sp,
                                                                                activeColor: ccSuccess700,
                                                                                onToggle: (bool value) {},
                                                                                value: true),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      csvertSpace2,
                                                                    ])))
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                          onChanged: (value) {},
                                        ),
                                      )
                                    ],
                                  ),
                                  csvertSpace4,
                                  Container(
                                    color: ccNeutral0,
                                    // width: 50.w,
                                    height: 100.h - 50.sp,
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 15.3846.sp,
                                          decoration: const BoxDecoration(
                                            color: ccDanger100,
                                            border: Border(
                                              bottom: BorderSide(
                                                  color: ccNatural250,
                                                  width: 1),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              cshorzSpace4,
                                              SizedBox(
                                                width: 12.3.sp,
                                                child: Text(
                                                  "ID",
                                                  style: GoogleFonts.sen(
                                                    color: ccDanger300,
                                                    fontSize: 5.7142.sp,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                              cshorzSpace18,
                                              SizedBox(
                                                width: 38.384.sp,
                                                child: Center(
                                                  child: Text(
                                                    "Update Time",
                                                    style: GoogleFonts.sen(
                                                      color: ccDanger300,
                                                      fontSize: 5.7142.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              cshorzSpace18,
                                              SizedBox(
                                                width: 24.1758.sp,
                                                child: Center(
                                                  child: Text(
                                                    "Type",
                                                    style: GoogleFonts.sen(
                                                      color: ccDanger300,
                                                      fontSize: 5.7142.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              cshorzSpace18,
                                              SizedBox(
                                                width: 19.78.sp,
                                                child: Center(
                                                  child: Text(
                                                    "Table",
                                                    style: GoogleFonts.sen(
                                                      color: ccDanger300,
                                                      fontSize: 5.7142.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              cshorzSpace18,
                                              SizedBox(
                                                width: 18.46.sp,
                                                child: Center(
                                                  child: Text(
                                                    "Waiter",
                                                    style: GoogleFonts.sen(
                                                      color: ccDanger300,
                                                      fontSize: 5.7142.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              cshorzSpace18,
                                              SizedBox(
                                                width: 24.1758.sp,
                                                child: Center(
                                                  child: Text(
                                                    "Amount",
                                                    style: GoogleFonts.sen(
                                                      color: ccDanger300,
                                                      fontSize: 5.7142.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 100.h - 65.40.sp,
                                          child: ListView.builder(
                                              itemCount: 18,
                                              itemBuilder: (context, index) {
                                                return OrderDetailListItemWidget(
                                                  iName: 'Gazpacho',
                                                  type: 'Dine-in',
                                                  waiter: 'Waiter',
                                                  total: 'RM 58.00',
                                                  id: '1001',
                                                  day: 'Today',
                                                  time: '10:15 pm',
                                                  table: 'Garden Table 1',
                                                );
                                              }),
                                        ),
                                      ],
                                    ),
                                  ),
                                  csvertSpace4,
                                ],
                              ),
                            ),
                            csvertSpace12,
                          ]),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: TableHeaderWidget(
                        goToPageRequested: (val) => {model.goToPage(val)},
                        selectedTabName: 'order',
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: FooterWidget(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
