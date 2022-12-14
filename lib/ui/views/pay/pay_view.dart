import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.colors.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/checkbox_cirlce.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/pay_header.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/show_side_dialogue.widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked/stacked.dart';

import './pay_view_model.dart';

class PayView extends StatelessWidget {
  const PayView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PayViewModel>.reactive(
      viewModelBuilder: () => PayViewModel(),
      onModelReady: (PayViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        PayViewModel model,
        Widget? child,
      ) {
        return Container(
          decoration: const BoxDecoration(
            gradient: ccLightBackground,
          ),
          child: Scaffold(
            body: SingleChildScrollView(
              child: Container(
                color: ccBakground,
                width: 100.w,
                // height: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: 100.w,
                      height: 100.h,
                      child: Stack(children: [
                        SingleChildScrollView(
                          child: Container(
                            // width: 15.w,
                            // height: 50,
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                              width: 0.5,
                              color: ccNatural250,
                            ))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    csvertSpace14,
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          color: ccNeutral0,
                                          width: 50.w,
                                          height: 100.h - 14.sp,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              csvertSpace4,
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  SizedBox(
                                                      height: 19.560.sp,
                                                      width: 31.50.sp,
                                                      child: ElevatedButton(
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          backgroundColor:
                                                              ccNeutral0,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        1.0989
                                                                            .sp),
                                                            side: BorderSide(
                                                              color:
                                                                  ccPrimary300,
                                                              width: 1,
                                                            ),
                                                          ),
                                                        ),
                                                        onPressed: () {},
                                                        child: Text(
                                                          '100',
                                                          style: TextStyle(
                                                              color:
                                                                  ccNutural550,
                                                              fontSize: 5.05.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      )),
                                                  cshorzSpace4,
                                                  SizedBox(
                                                      height: 19.560.sp,
                                                      width: 31.50.sp,
                                                      child: ElevatedButton(
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          backgroundColor:
                                                              ccNeutral0,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        1.0989
                                                                            .sp),
                                                            side: BorderSide(
                                                              color:
                                                                  ccPrimary300,
                                                              width: 1,
                                                            ),
                                                          ),
                                                        ),
                                                        onPressed: () {},
                                                        child: Text(
                                                          '150',
                                                          style: TextStyle(
                                                              color:
                                                                  ccNutural550,
                                                              fontSize: 5.05.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      )),
                                                ],
                                              ),
                                              csvertSpace4,
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  SizedBox(
                                                      height: 19.560.sp,
                                                      width: 19.560.sp,
                                                      child: ElevatedButton(
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          backgroundColor:
                                                              ccNeutral0,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        1.0989
                                                                            .sp),
                                                            side: BorderSide(
                                                              color:
                                                                  ccPrimary300,
                                                              width: 1,
                                                            ),
                                                          ),
                                                        ),
                                                        onPressed: () {},
                                                        child: Text(
                                                          '7',
                                                          style: TextStyle(
                                                              color:
                                                                  ccNutural550,
                                                              fontSize: 5.05.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      )),
                                                  cshorzSpace4,
                                                  SizedBox(
                                                      height: 19.560.sp,
                                                      width: 19.560.sp,
                                                      child: ElevatedButton(
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          backgroundColor:
                                                              ccNeutral0,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        1.0989
                                                                            .sp),
                                                            side: BorderSide(
                                                              color:
                                                                  ccPrimary300,
                                                              width: 1,
                                                            ),
                                                          ),
                                                        ),
                                                        onPressed: () {},
                                                        child: Text(
                                                          '8',
                                                          style: TextStyle(
                                                              color:
                                                                  ccNutural550,
                                                              fontSize: 5.05.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      )),
                                                  cshorzSpace4,
                                                  SizedBox(
                                                      height: 19.560.sp,
                                                      width: 19.560.sp,
                                                      child: ElevatedButton(
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          backgroundColor:
                                                              ccNeutral0,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        1.0989
                                                                            .sp),
                                                            side: BorderSide(
                                                              color:
                                                                  ccPrimary300,
                                                              width: 1,
                                                            ),
                                                          ),
                                                        ),
                                                        onPressed: () {},
                                                        child: Text(
                                                          '9',
                                                          style: TextStyle(
                                                              color:
                                                                  ccNutural550,
                                                              fontSize: 5.05.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      )),
                                                ],
                                              ),
                                              csvertSpace4,
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  SizedBox(
                                                      height: 19.560.sp,
                                                      width: 19.560.sp,
                                                      child: ElevatedButton(
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          backgroundColor:
                                                              ccNeutral0,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        1.0989
                                                                            .sp),
                                                            side: BorderSide(
                                                              color:
                                                                  ccPrimary300,
                                                              width: 1,
                                                            ),
                                                          ),
                                                        ),
                                                        onPressed: () {},
                                                        child: Text(
                                                          '4',
                                                          style: TextStyle(
                                                              color:
                                                                  ccNutural550,
                                                              fontSize: 5.05.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      )),
                                                  cshorzSpace4,
                                                  SizedBox(
                                                      height: 19.560.sp,
                                                      width: 19.560.sp,
                                                      child: ElevatedButton(
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          backgroundColor:
                                                              ccNeutral0,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        1.0989
                                                                            .sp),
                                                            side: BorderSide(
                                                              color:
                                                                  ccPrimary300,
                                                              width: 1,
                                                            ),
                                                          ),
                                                        ),
                                                        onPressed: () {},
                                                        child: Text(
                                                          '5',
                                                          style: TextStyle(
                                                              color:
                                                                  ccNutural550,
                                                              fontSize: 5.05.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      )),
                                                  cshorzSpace4,
                                                  SizedBox(
                                                      height: 19.560.sp,
                                                      width: 19.560.sp,
                                                      child: ElevatedButton(
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          backgroundColor:
                                                              ccNeutral0,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        1.0989
                                                                            .sp),
                                                            side: BorderSide(
                                                              color:
                                                                  ccPrimary300,
                                                              width: 1,
                                                            ),
                                                          ),
                                                        ),
                                                        onPressed: () {},
                                                        child: Text(
                                                          '6',
                                                          style: TextStyle(
                                                              color:
                                                                  ccNutural550,
                                                              fontSize: 5.05.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      )),
                                                ],
                                              ),
                                              csvertSpace4,
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  SizedBox(
                                                      height: 19.560.sp,
                                                      width: 19.560.sp,
                                                      // padding: EdgeInsets.fromLTRB(
                                                      //     5.494.sp, 0, 5.494.sp, 0),
                                                      child: ElevatedButton(
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          backgroundColor:
                                                              ccNeutral0,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        1.0989
                                                                            .sp),
                                                            side: BorderSide(
                                                              color:
                                                                  ccPrimary300,
                                                              width: 1,
                                                            ),
                                                          ),
                                                        ),
                                                        onPressed: () {},
                                                        child: Text(
                                                          '1',
                                                          style: TextStyle(
                                                              fontSize: 5.05.sp,
                                                              color:
                                                                  ccNutural550,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      )),
                                                  cshorzSpace4,
                                                  SizedBox(
                                                      height: 19.560.sp,
                                                      width: 19.560.sp,
                                                      child: ElevatedButton(
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          backgroundColor:
                                                              ccNeutral0,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        1.0989
                                                                            .sp),
                                                            side: BorderSide(
                                                              color:
                                                                  ccPrimary300,
                                                              width: 1,
                                                            ),
                                                          ),
                                                        ),
                                                        onPressed: () {},
                                                        child: Text(
                                                          '2',
                                                          style: TextStyle(
                                                              fontSize: 5.05.sp,
                                                              color:
                                                                  ccNutural550,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      )),
                                                  cshorzSpace4,
                                                  SizedBox(
                                                      height: 19.560.sp,
                                                      width: 19.560.sp,
                                                      child: ElevatedButton(
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          backgroundColor:
                                                              ccNeutral0,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        1.0989
                                                                            .sp),
                                                            side: BorderSide(
                                                              color:
                                                                  ccPrimary300,
                                                              width: 1,
                                                            ),
                                                          ),
                                                        ),
                                                        onPressed: () {},
                                                        child: Text(
                                                          '3',
                                                          style: TextStyle(
                                                              color:
                                                                  ccNutural550,
                                                              fontSize: 5.05.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      )),
                                                ],
                                              ),

                                              csvertSpace4,
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  SizedBox(
                                                      height: 19.560.sp,
                                                      width: 19.560.sp,
                                                      child: ElevatedButton(
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          backgroundColor:
                                                              ccNeutral0,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        1.0989
                                                                            .sp),
                                                            side: BorderSide(
                                                              color:
                                                                  ccPrimary300,
                                                              width: 1,
                                                            ),
                                                          ),
                                                        ),
                                                        onPressed: () {},
                                                        child: Text(
                                                          '.',
                                                          style: TextStyle(
                                                              color:
                                                                  ccNutural550,
                                                              fontSize:
                                                                  4.3956.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                        ),
                                                      )),
                                                  cshorzSpace4,
                                                  SizedBox(
                                                      height: 19.560.sp,
                                                      width: 19.560.sp,
                                                      child: ElevatedButton(
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          backgroundColor:
                                                              ccNeutral0,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        1.0989
                                                                            .sp),
                                                            side: BorderSide(
                                                              color:
                                                                  ccPrimary300,
                                                              width: 1,
                                                            ),
                                                          ),
                                                        ),
                                                        onPressed: () {},
                                                        child: Text(
                                                          '0',
                                                          style: TextStyle(
                                                              color:
                                                                  ccNutural550,
                                                              fontSize: 5.05.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      )),
                                                  cshorzSpace4,
                                                  SizedBox(
                                                      height: 19.560.sp,
                                                      width: 19.560.sp,
                                                      child: ElevatedButton(
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          backgroundColor:
                                                              ccNeutral0,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        1.0989
                                                                            .sp),
                                                            side: BorderSide(
                                                              color:
                                                                  ccPrimary300,
                                                              width: 1,
                                                            ),
                                                          ),
                                                        ),
                                                        onPressed: () {},
                                                        child: SvgPicture.asset(
                                                          "../assets/imges/erase.svg",
                                                          height: 4.1538.sp,
                                                          width: 7.89.sp,
                                                        ),
                                                      )),
                                                ],
                                              ),
                                              csvertSpace4,
                                              // Container(
                                              //   height: 15.3846.sp,
                                              //   decoration: const BoxDecoration(
                                              //     color: ccNeutral0,
                                              //     border: Border(
                                              //       bottom: BorderSide(
                                              //           color: ccNatural250,
                                              //           width: 1),
                                              //     ),
                                              //   ),
                                              //   child: Row(
                                              //     mainAxisAlignment:
                                              //         MainAxisAlignment.start,
                                              //     crossAxisAlignment:
                                              //         CrossAxisAlignment.center,
                                              //     children: [
                                              //       cshorzSpace4,
                                              //       SizedBox(
                                              //         width: 66.373.sp,
                                              //         child: Text(
                                              //           "Item Name",
                                              //           style: GoogleFonts.sen(
                                              //             color: ccDanger300,
                                              //             fontSize: 3.736.sp,
                                              //             fontWeight:
                                              //                 FontWeight.w700,
                                              //           ),
                                              //         ),
                                              //       ),
                                              //       SizedBox(
                                              //         width: 36.2612.sp,
                                              //         child: Center(
                                              //           child: Text(
                                              //             "Quantity",
                                              //             style:
                                              //                 GoogleFonts.sen(
                                              //               color: ccDanger300,
                                              //               fontSize: 3.736.sp,
                                              //               fontWeight:
                                              //                   FontWeight.w700,
                                              //             ),
                                              //           ),
                                              //         ),
                                              //       ),
                                              //       SizedBox(
                                              //         width: 25.0549.sp,
                                              //         child: Text(
                                              //           "Price",
                                              //           style: GoogleFonts.sen(
                                              //             color: ccDanger300,
                                              //             fontSize: 3.736.sp,
                                              //             fontWeight:
                                              //                 FontWeight.w700,
                                              //           ),
                                              //         ),
                                              //       ),
                                              //       SizedBox(
                                              //         child: Text(
                                              //           "Total",
                                              //           style: GoogleFonts.sen(
                                              //             color: ccDanger300,
                                              //             fontSize: 3.736.sp,
                                              //             fontWeight:
                                              //                 FontWeight.w700,
                                              //           ),
                                              //         ),
                                              //       ),
                                              //     ],
                                              //   ),
                                              // ),
                                              // SizedBox(
                                              //   height: 100.h - 72.967.sp,
                                              //   child: ListView.builder(
                                              //       itemCount: 18,
                                              //       itemBuilder:
                                              //           (context, index) {
                                              //         return OrderListItemWidget(
                                              //           iName: 'Gazpacho',
                                              //           iType: 'Medium',
                                              //           price: '20.00',
                                              //           total: '20.00',
                                              //         );
                                              //       }),
                                              // ),
                                              // Expanded(
                                              //   child: Container(
                                              //     padding: EdgeInsets.only(
                                              //         left: 3.sp, right: 3.sp),
                                              //     decoration:
                                              //         const BoxDecoration(
                                              //       color: ccNeutral0,
                                              //       border: Border(
                                              //         top: BorderSide(
                                              //             color: ccNatural250,
                                              //             width: 1),
                                              //       ),
                                              //     ),
                                              //     child: Column(
                                              //       mainAxisAlignment:
                                              //           MainAxisAlignment
                                              //               .spaceBetween,
                                              //       crossAxisAlignment:
                                              //           CrossAxisAlignment
                                              //               .center,
                                              //       children: [
                                              //         ExpansionTile(
                                              //           tilePadding:
                                              //               EdgeInsets.only(
                                              //                   left: 0,
                                              //                   top: 0,
                                              //                   right: 0),
                                              //           collapsedIconColor:
                                              //               ccDanger300,
                                              //           iconColor: ccDanger300,
                                              //           initiallyExpanded: true,
                                              //           title: Row(
                                              //             mainAxisAlignment:
                                              //                 MainAxisAlignment
                                              //                     .spaceBetween,
                                              //             crossAxisAlignment:
                                              //                 CrossAxisAlignment
                                              //                     .center,
                                              //             children: [
                                              //               Text(
                                              //                 "Items Total",
                                              //                 style: GoogleFonts
                                              //                     .sen(
                                              //                   color:
                                              //                       ccNutural550,
                                              //                   fontSize:
                                              //                       4.3956.sp,
                                              //                   fontWeight:
                                              //                       FontWeight
                                              //                           .w400,
                                              //                 ),
                                              //               ),
                                              //               Text(
                                              //                 "RM 50.00",
                                              //                 style: GoogleFonts
                                              //                     .sen(
                                              //                   color:
                                              //                       ccNutural550,
                                              //                   fontSize:
                                              //                       4.3956.sp,
                                              //                   fontWeight:
                                              //                       FontWeight
                                              //                           .w400,
                                              //                 ),
                                              //               ),
                                              //             ],
                                              //           ),
                                              //           children: [
                                              //             Row(
                                              //               mainAxisAlignment:
                                              //                   MainAxisAlignment
                                              //                       .spaceBetween,
                                              //               crossAxisAlignment:
                                              //                   CrossAxisAlignment
                                              //                       .center,
                                              //               children: [
                                              //                 Text(
                                              //                   "Service Tax @ 6%",
                                              //                   style:
                                              //                       GoogleFonts
                                              //                           .sen(
                                              //                     color:
                                              //                         ccNutural550,
                                              //                     fontSize:
                                              //                         4.3956.sp,
                                              //                     fontWeight:
                                              //                         FontWeight
                                              //                             .w400,
                                              //                   ),
                                              //                 ),
                                              //                 Text(
                                              //                   "RM 3.00",
                                              //                   style:
                                              //                       GoogleFonts
                                              //                           .sen(
                                              //                     color:
                                              //                         ccNutural550,
                                              //                     fontSize:
                                              //                         4.3956.sp,
                                              //                     fontWeight:
                                              //                         FontWeight
                                              //                             .w400,
                                              //                   ),
                                              //                 ),
                                              //               ],
                                              //             ),
                                              //             csvertSpace2
                                              //           ],
                                              //         ),
                                              //         csvertSpace2,
                                              //         Row(
                                              //           mainAxisAlignment:
                                              //               MainAxisAlignment
                                              //                   .spaceBetween,
                                              //           crossAxisAlignment:
                                              //               CrossAxisAlignment
                                              //                   .center,
                                              //           children: [
                                              //             Text(
                                              //               "Total",
                                              //               style:
                                              //                   GoogleFonts.sen(
                                              //                 color:
                                              //                     ccNutural550,
                                              //                 fontSize:
                                              //                     4.3956.sp,
                                              //                 fontWeight:
                                              //                     FontWeight
                                              //                         .w700,
                                              //               ),
                                              //             ),
                                              //             Text(
                                              //               "RM 58.00",
                                              //               style:
                                              //                   GoogleFonts.sen(
                                              //                 color:
                                              //                     ccNutural550,
                                              //                 fontSize:
                                              //                     4.3956.sp,
                                              //                 fontWeight:
                                              //                     FontWeight
                                              //                         .w700,
                                              //               ),
                                              //             ),
                                              //           ],
                                              //         ),
                                              //         csvertSpace4,
                                              //         Row(
                                              //           mainAxisAlignment:
                                              //               MainAxisAlignment
                                              //                   .spaceBetween,
                                              //           crossAxisAlignment:
                                              //               CrossAxisAlignment
                                              //                   .center,
                                              //           children: [
                                              //             Row(
                                              //               mainAxisAlignment:
                                              //                   MainAxisAlignment
                                              //                       .spaceBetween,
                                              //               crossAxisAlignment:
                                              //                   CrossAxisAlignment
                                              //                       .center,
                                              //               children: [
                                              //                 Container(
                                              //                   // height:
                                              //                   //     11.648.sp,
                                              //                   // width: 70.1.sp,
                                              //                   decoration:
                                              //                       BoxDecoration(
                                              //                     borderRadius:
                                              //                         BorderRadius.circular(
                                              //                             2.1978
                                              //                                 .sp),
                                              //                     border: Border
                                              //                         .all(
                                              //                       color:
                                              //                           ccNutural550,
                                              //                     ),
                                              //                   ),
                                              //                   clipBehavior: Clip
                                              //                       .antiAlias,
                                              //                   child:
                                              //                       DropdownButton(
                                              //                     dropdownColor:
                                              //                         ccNeutral0,
                                              //                     borderRadius:
                                              //                         BorderRadius.circular(
                                              //                             2.1978
                                              //                                 .sp),
                                              //                     icon:
                                              //                         SvgPicture
                                              //                             .asset(
                                              //                       "../assets/imges/elipse-h.svg",
                                              //                       height:
                                              //                           0.8615
                                              //                               .sp,
                                              //                     ),
                                              //                     underline:
                                              //                         Container(
                                              //                       height: 0.0,
                                              //                       color: Colors
                                              //                           .transparent,
                                              //                     ),
                                              //                     elevation: 0,
                                              //                     items: [
                                              //                       DropdownMenuItem(
                                              //                         value:
                                              //                             "Leave Comment",
                                              //                         child:
                                              //                             SizedBox(
                                              //                           width: 35
                                              //                               .sp,
                                              //                           child:
                                              //                               InkWell(
                                              //                             child:
                                              //                                 Row(
                                              //                               children: [
                                              //                                 Container(
                                              //                                   decoration: BoxDecoration(
                                              //                                     borderRadius: BorderRadius.circular(2.1978.sp),
                                              //                                   ),
                                              //                                   child: Row(
                                              //                                     children: [
                                              //                                       Text(
                                              //                                         "Leave Comment",
                                              //                                         style: GoogleFonts.sen(
                                              //                                           color: ccNutural550,
                                              //                                           fontSize: 4.3956.sp,
                                              //                                           fontWeight: FontWeight.w400,
                                              //                                         ),
                                              //                                       ),
                                              //                                     ],
                                              //                                   ),
                                              //                                 ),
                                              //                               ],
                                              //                             ),
                                              //                             onTap:
                                              //                                 () {
                                              //                               Navigator.pop(context);
                                              //                               showDialog(
                                              //                                 context: context,
                                              //                                 barrierDismissible: false,
                                              //                                 builder: (_) => AlertDialog(
                                              //                                   contentPadding: EdgeInsets.zero,
                                              //                                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2.197.sp))),
                                              //                                   content: Container(
                                              //                                     width: 183.076.sp,
                                              //                                     height: 57.sp,
                                              //                                     decoration: const BoxDecoration(
                                              //                                         border: Border(
                                              //                                             bottom: BorderSide(
                                              //                                       width: 0.5,
                                              //                                       color: ccNatural250,
                                              //                                     ))),
                                              //                                     child: Column(
                                              //                                       mainAxisAlignment: MainAxisAlignment.start,
                                              //                                       crossAxisAlignment: CrossAxisAlignment.start,
                                              //                                       children: [
                                              //                                         Container(
                                              //                                           padding: EdgeInsets.only(
                                              //                                             left: 3.sp,
                                              //                                             right: 1.sp,
                                              //                                             top: 2.sp,
                                              //                                           ),
                                              //                                           decoration: const BoxDecoration(
                                              //                                               border: Border(
                                              //                                                   bottom: BorderSide(
                                              //                                             width: 0.5,
                                              //                                             color: ccNatural250,
                                              //                                           ))),
                                              //                                           height: 14.62.sp,
                                              //                                           child: Row(
                                              //                                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              //                                             crossAxisAlignment: CrossAxisAlignment.start,
                                              //                                             children: [
                                              //                                               Expanded(
                                              //                                                 child: Container(
                                              //                                                   height: 10.62.sp,
                                              //                                                   color: ccNeutral0,
                                              //                                                   alignment: Alignment.centerLeft,
                                              //                                                   child: Row(
                                              //                                                     mainAxisAlignment: MainAxisAlignment.center,
                                              //                                                     crossAxisAlignment: CrossAxisAlignment.center,
                                              //                                                     children: [
                                              //                                                       SizedBox(
                                              //                                                         width: 153.sp,
                                              //                                                         child: Row(
                                              //                                                           mainAxisAlignment: MainAxisAlignment.center,
                                              //                                                           crossAxisAlignment: CrossAxisAlignment.center,
                                              //                                                           children: [
                                              //                                                             Text(
                                              //                                                               'Receipt Comment',
                                              //                                                               style: GoogleFonts.sen(
                                              //                                                                 color: ccNutural550,
                                              //                                                                 fontSize: 5.714.sp,
                                              //                                                               ),
                                              //                                                             ),
                                              //                                                           ],
                                              //                                                         ),
                                              //                                                       ),
                                              //                                                     ],
                                              //                                                   ),
                                              //                                                 ),
                                              //                                               ),
                                              //                                               SizedBox(
                                              //                                                 height: 10.62.sp,
                                              //                                                 width: 10.sp,
                                              //                                                 child: ElevatedButton(
                                              //                                                   onPressed: () {
                                              //                                                     Navigator.pop(context);
                                              //                                                   },
                                              //                                                   style: ElevatedButton.styleFrom(
                                              //                                                     backgroundColor: ccNeutral0,
                                              //                                                     elevation: 0,
                                              //                                                     shadowColor: Colors.transparent,
                                              //                                                   ),
                                              //                                                   child: SvgPicture.asset(
                                              //                                                     "../assets/imges/close.svg",
                                              //                                                     height: 4.615.sp,
                                              //                                                     width: 4.615.sp,
                                              //                                                   ),
                                              //                                                 ),
                                              //                                               ),
                                              //                                             ],
                                              //                                           ),
                                              //                                         ),
                                              //                                         Container(
                                              //                                           color: ccDanger100,
                                              //                                           padding: EdgeInsets.only(
                                              //                                             left: 5.sp,
                                              //                                             right: 1.sp,
                                              //                                           ),
                                              //                                           child: Column(
                                              //                                             mainAxisAlignment: MainAxisAlignment.start,
                                              //                                             crossAxisAlignment: CrossAxisAlignment.start,
                                              //                                             children: [
                                              //                                               TextAreaWidget(
                                              //                                                 hint: 'Enter your cpmment here...',
                                              //                                                 lebel: '',
                                              //                                               ),
                                              //                                               csvertSpace4,
                                              //                                             ],
                                              //                                           ),
                                              //                                         ),
                                              //                                       ],
                                              //                                     ),
                                              //                                   ),
                                              //                                   actions: [
                                              //                                     Row(
                                              //                                       mainAxisAlignment: MainAxisAlignment.start,
                                              //                                       crossAxisAlignment: CrossAxisAlignment.center,
                                              //                                       children: [
                                              //                                         Padding(
                                              //                                             padding: EdgeInsets.only(
                                              //                                           left: 5.sp,
                                              //                                         )),
                                              //                                         Container(
                                              //                                           height: 9.25.sp,
                                              //                                           width: 29.23.sp,
                                              //                                           margin: EdgeInsets.only(
                                              //                                             bottom: 4.39.sp,
                                              //                                           ),
                                              //                                           // color: Colors.green,
                                              //                                           decoration: BoxDecoration(
                                              //                                             borderRadius: BorderRadius.circular(1.098.sp),
                                              //                                             border: Border.all(color: ccDanger300),
                                              //                                           ),
                                              //                                           child: ElevatedButton.icon(
                                              //                                             onPressed: () {
                                              //                                               Navigator.pop(context);
                                              //                                             },
                                              //                                             style: ElevatedButton.styleFrom(
                                              //                                               backgroundColor: ccDanger300,
                                              //                                               elevation: 0,
                                              //                                               shadowColor: Colors.transparent,
                                              //                                             ),
                                              //                                             icon: SvgPicture.asset(
                                              //                                               "../assets/imges/check-white.svg",
                                              //                                               width: 4.17.sp,
                                              //                                               height: 3.07.sp,
                                              //                                             ),
                                              //                                             label: Text(
                                              //                                               'Save',
                                              //                                               style: GoogleFonts.sen(
                                              //                                                 color: ccNeutral0,
                                              //                                                 fontSize: 4.39.sp,
                                              //                                                 fontWeight: FontWeight.w400,
                                              //                                               ),
                                              //                                             ),
                                              //                                           ),
                                              //                                         ),
                                              //                                       ],
                                              //                                     ),
                                              //                                   ],
                                              //                                 ),
                                              //                               );
                                              //                             },
                                              //                           ),
                                              //                         ),
                                              //                       ),
                                              //                       DropdownMenuItem(
                                              //                         value:
                                              //                             "Change Table",
                                              //                         child:
                                              //                             Row(
                                              //                           children: [
                                              //                             Text(
                                              //                               "Change Table",
                                              //                               style:
                                              //                                   GoogleFonts.sen(
                                              //                                 color: ccNutural550,
                                              //                                 fontSize: 4.3956.sp,
                                              //                                 fontWeight: FontWeight.w400,
                                              //                               ),
                                              //                             ),
                                              //                           ],
                                              //                         ),
                                              //                       ),
                                              //                       DropdownMenuItem(
                                              //                         value:
                                              //                             "Change Order Type",
                                              //                         child:
                                              //                             InkWell(
                                              //                           child:
                                              //                               Row(
                                              //                             children: [
                                              //                               Text(
                                              //                                 "Change Order Type",
                                              //                                 style: GoogleFonts.sen(
                                              //                                   color: ccNutural550,
                                              //                                   fontSize: 4.3956.sp,
                                              //                                   fontWeight: FontWeight.w400,
                                              //                                 ),
                                              //                               ),
                                              //                             ],
                                              //                           ),
                                              //                           onTap:
                                              //                               () {
                                              //                             model.goToPage(
                                              //                                 'change_order');
                                              //                           },
                                              //                         ),
                                              //                       ),
                                              //                       DropdownMenuItem(
                                              //                         value:
                                              //                             "Clear Order",
                                              //                         child:
                                              //                             InkWell(
                                              //                           child:
                                              //                               Row(
                                              //                             children: [
                                              //                               Text(
                                              //                                 "Clear Order",
                                              //                                 style: GoogleFonts.sen(
                                              //                                   color: ccNutural550,
                                              //                                   fontSize: 4.3956.sp,
                                              //                                   fontWeight: FontWeight.w400,
                                              //                                 ),
                                              //                               ),
                                              //                             ],
                                              //                           ),
                                              //                           onTap:
                                              //                               () {
                                              //                             Navigator.pop(
                                              //                                 context);
                                              //                             showDialog(
                                              //                               context:
                                              //                                   context,
                                              //                               barrierDismissible:
                                              //                                   false,
                                              //                               builder: (_) =>
                                              //                                   AlertDialog(
                                              //                                 contentPadding: EdgeInsets.zero,
                                              //                                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2.197.sp))),
                                              //                                 content: Container(
                                              //                                   width: 183.076.sp,
                                              //                                   height: 32.2.sp,
                                              //                                   decoration: const BoxDecoration(
                                              //                                       border: Border(
                                              //                                           bottom: BorderSide(
                                              //                                     width: 0.5,
                                              //                                     color: ccNatural250,
                                              //                                   ))),
                                              //                                   child: Column(
                                              //                                     mainAxisAlignment: MainAxisAlignment.start,
                                              //                                     crossAxisAlignment: CrossAxisAlignment.start,
                                              //                                     children: [
                                              //                                       Container(
                                              //                                         padding: EdgeInsets.only(
                                              //                                           left: 3.sp,
                                              //                                           right: 1.sp,
                                              //                                           top: 2.sp,
                                              //                                         ),
                                              //                                         decoration: const BoxDecoration(
                                              //                                             border: Border(
                                              //                                                 bottom: BorderSide(
                                              //                                           width: 0.5,
                                              //                                           color: ccNatural250,
                                              //                                         ))),
                                              //                                         height: 14.62.sp,
                                              //                                         child: Row(
                                              //                                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              //                                           crossAxisAlignment: CrossAxisAlignment.start,
                                              //                                           children: [
                                              //                                             Expanded(
                                              //                                               child: Container(
                                              //                                                 height: 10.62.sp,
                                              //                                                 color: ccNeutral0,
                                              //                                                 alignment: Alignment.centerLeft,
                                              //                                                 child: Row(
                                              //                                                   mainAxisAlignment: MainAxisAlignment.center,
                                              //                                                   crossAxisAlignment: CrossAxisAlignment.center,
                                              //                                                   children: [
                                              //                                                     SizedBox(
                                              //                                                       width: 153.sp,
                                              //                                                       child: Row(
                                              //                                                         mainAxisAlignment: MainAxisAlignment.center,
                                              //                                                         crossAxisAlignment: CrossAxisAlignment.center,
                                              //                                                         children: [
                                              //                                                           Text(
                                              //                                                             'Enter Admin Password',
                                              //                                                             style: GoogleFonts.sen(
                                              //                                                               color: ccNutural550,
                                              //                                                               fontSize: 5.714.sp,
                                              //                                                             ),
                                              //                                                           ),
                                              //                                                         ],
                                              //                                                       ),
                                              //                                                     ),
                                              //                                                   ],
                                              //                                                 ),
                                              //                                               ),
                                              //                                             ),
                                              //                                             SizedBox(
                                              //                                               height: 10.62.sp,
                                              //                                               width: 10.sp,
                                              //                                               child: ElevatedButton(
                                              //                                                 onPressed: () {
                                              //                                                   Navigator.pop(context);
                                              //                                                 },
                                              //                                                 style: ElevatedButton.styleFrom(
                                              //                                                   backgroundColor: ccNeutral0,
                                              //                                                   elevation: 0,
                                              //                                                   shadowColor: Colors.transparent,
                                              //                                                 ),
                                              //                                                 child: SvgPicture.asset(
                                              //                                                   "../assets/imges/close.svg",
                                              //                                                   height: 4.615.sp,
                                              //                                                   width: 4.615.sp,
                                              //                                                 ),
                                              //                                               ),
                                              //                                             ),
                                              //                                           ],
                                              //                                         ),
                                              //                                       ),
                                              //                                       Container(
                                              //                                         color: ccDanger100,
                                              //                                         padding: EdgeInsets.only(
                                              //                                           left: 5.sp,
                                              //                                           right: 1.sp,
                                              //                                         ),
                                              //                                         child: Column(
                                              //                                           mainAxisAlignment: MainAxisAlignment.start,
                                              //                                           crossAxisAlignment: CrossAxisAlignment.start,
                                              //                                           children: [
                                              //                                             csvertSpace3,
                                              //                                             TextFeildWidget(
                                              //                                               hint: 'Enter your password',
                                              //                                             ),
                                              //                                             csvertSpace4,
                                              //                                           ],
                                              //                                         ),
                                              //                                       ),
                                              //                                     ],
                                              //                                   ),
                                              //                                 ),
                                              //                                 actions: [
                                              //                                   Row(
                                              //                                     mainAxisAlignment: MainAxisAlignment.start,
                                              //                                     crossAxisAlignment: CrossAxisAlignment.center,
                                              //                                     children: [
                                              //                                       Padding(
                                              //                                           padding: EdgeInsets.only(
                                              //                                         left: 5.sp,
                                              //                                       )),
                                              //                                       Container(
                                              //                                         height: 9.25.sp,
                                              //                                         width: 29.23.sp,
                                              //                                         margin: EdgeInsets.only(
                                              //                                           bottom: 4.39.sp,
                                              //                                         ),
                                              //                                         // color: Colors.green,
                                              //                                         decoration: BoxDecoration(
                                              //                                           borderRadius: BorderRadius.circular(1.098.sp),
                                              //                                           border: Border.all(color: ccDanger300),
                                              //                                         ),
                                              //                                         child: ElevatedButton.icon(
                                              //                                           onPressed: () {
                                              //                                             Navigator.pop(context);
                                              //                                           },
                                              //                                           style: ElevatedButton.styleFrom(
                                              //                                             backgroundColor: ccDanger300,
                                              //                                             elevation: 0,
                                              //                                             shadowColor: Colors.transparent,
                                              //                                           ),
                                              //                                           icon: SvgPicture.asset(
                                              //                                             "../assets/imges/check-white.svg",
                                              //                                             width: 4.17.sp,
                                              //                                             height: 3.07.sp,
                                              //                                           ),
                                              //                                           label: Text(
                                              //                                             'Confirm',
                                              //                                             style: GoogleFonts.sen(
                                              //                                               color: ccNeutral0,
                                              //                                               fontSize: 4.39.sp,
                                              //                                               fontWeight: FontWeight.w400,
                                              //                                             ),
                                              //                                           ),
                                              //                                         ),
                                              //                                       ),
                                              //                                     ],
                                              //                                   ),
                                              //                                 ],
                                              //                               ),
                                              //                             );
                                              //                           },
                                              //                         ),
                                              //                       ),
                                              //                       DropdownMenuItem(
                                              //                         value:
                                              //                             "Merge Order",
                                              //                         child:
                                              //                             Row(
                                              //                           children: [
                                              //                             Text(
                                              //                               "Merge Order",
                                              //                               style:
                                              //                                   GoogleFonts.sen(
                                              //                                 color: ccNutural550,
                                              //                                 fontSize: 4.3956.sp,
                                              //                                 fontWeight: FontWeight.w400,
                                              //                               ),
                                              //                             ),
                                              //                           ],
                                              //                         ),
                                              //                       ),
                                              //                     ],
                                              //                     onChanged:
                                              //                         (value) {},
                                              //                   ),
                                              //                 ),
                                              //                 cshorzSpace5,
                                              //                 Container(
                                              //                   height:
                                              //                       11.648.sp,
                                              //                   width:
                                              //                       22.41758.sp,
                                              //                   decoration:
                                              //                       BoxDecoration(
                                              //                     borderRadius:
                                              //                         BorderRadius.circular(
                                              //                             2.1978
                                              //                                 .sp),
                                              //                     border: Border
                                              //                         .all(
                                              //                       color:
                                              //                           ccNutural550,
                                              //                     ),
                                              //                   ),
                                              //                   clipBehavior: Clip
                                              //                       .antiAlias,
                                              //                   child:
                                              //                       Container(
                                              //                     color:
                                              //                         ccNeutral0,
                                              //                     child:
                                              //                         FloatingActionButton(
                                              //                       onPressed:
                                              //                           () {
                                              //                         // do your thing here
                                              //                       },
                                              //                       shape:
                                              //                           RoundedRectangleBorder(
                                              //                         borderRadius:
                                              //                             BorderRadius.circular(
                                              //                                 2.1978.sp),
                                              //                       ),
                                              //                       backgroundColor:
                                              //                           ccNeutral0,
                                              //                       child: SvgPicture
                                              //                           .asset(
                                              //                         "../assets/imges/print.svg",
                                              //                         width: 3.73
                                              //                             .sp,
                                              //                         height:
                                              //                             3.73.sp,
                                              //                       ),
                                              //                     ),
                                              //                   ),
                                              //                 ),
                                              //               ],
                                              //             ),
                                              //             SizedBox(
                                              //               height: 11.648.sp,
                                              //               width: 52.527.sp,
                                              //               child:
                                              //                   ElevatedButton(
                                              //                 style:
                                              //                     ElevatedButton
                                              //                         .styleFrom(
                                              //                   backgroundColor:
                                              //                       ccDanger300,
                                              //                   shape:
                                              //                       RoundedRectangleBorder(
                                              //                     borderRadius:
                                              //                         BorderRadius.circular(
                                              //                             2.1978
                                              //                                 .sp),
                                              //                   ),
                                              //                 ),
                                              //                 onPressed: () {
                                              //                   model.goToPage(
                                              //                       'pay');
                                              //                 },
                                              //                 child: Text(
                                              //                   'Pay',
                                              //                   style: TextStyle(
                                              //                       fontSize:
                                              //                           4.3956
                                              //                               .sp,
                                              //                       fontWeight:
                                              //                           FontWeight
                                              //                               .bold),
                                              //                 ),
                                              //               ),
                                              //             ),
                                              //           ],
                                              //         ),
                                              //         csvertSpace2,
                                              //       ],
                                              //     ),
                                              //   ),
                                              // ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          color: ccDanger100,
                                          width: 50.w,
                                          height: 100.h - 64,
                                          child: SingleChildScrollView(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Column(
                                                  children: [
                                                    Container(
                                                      height: 13.sp,
                                                      padding: EdgeInsets.only(
                                                          left: 3.sp),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            "Subtotal: RM 58.00",
                                                            style:
                                                                GoogleFonts.sen(
                                                              color:
                                                                  ccDanger300,
                                                              fontSize:
                                                                  8.7912.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    csvertSpace4,
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          left: 3.sp,
                                                          right: 3.sp),
                                                      // height: 32.967.sp,
                                                      decoration: BoxDecoration(
                                                          color: ccNeutral0,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            2.2.sp,
                                                          ),
                                                          border: Border.all(
                                                            color: ccPrimary300,
                                                          )),
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                            height: 16.483.sp,
                                                            decoration:
                                                                const BoxDecoration(
                                                                    border: Border(
                                                                        bottom: BorderSide(
                                                              width: 1,
                                                              color:
                                                                  ccPrimary300,
                                                            ))),
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 3.sp,
                                                                    right:
                                                                        3.sp),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Text(
                                                                    "Tips",
                                                                    style:
                                                                        GoogleFonts
                                                                            .sen(
                                                                      color:
                                                                          ccNutural550,
                                                                      fontSize:
                                                                          5.714
                                                                              .sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    "0.00 RM",
                                                                    style:
                                                                        GoogleFonts
                                                                            .sen(
                                                                      color:
                                                                          ccDanger300,
                                                                      fontSize:
                                                                          5.714
                                                                              .sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                                ]),
                                                          ),
                                                          Container(
                                                            height: 16.483.sp,
                                                            // decoration:
                                                            //     const BoxDecoration(
                                                            //         border: Border(
                                                            //             bottom:
                                                            //                 BorderSide(
                                                            //   width: 0.5,
                                                            //   color: ccNatural250,
                                                            // ))),
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 3.sp,
                                                                    right:
                                                                        3.sp),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Text(
                                                                    "Total",
                                                                    style:
                                                                        GoogleFonts
                                                                            .sen(
                                                                      color:
                                                                          ccNutural550,
                                                                      fontSize:
                                                                          5.714
                                                                              .sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    "58.00 RM",
                                                                    style:
                                                                        GoogleFonts
                                                                            .sen(
                                                                      color:
                                                                          ccDanger300,
                                                                      fontSize:
                                                                          5.714
                                                                              .sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                                ]),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    csvertSpace4,
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          left: 3.sp,
                                                          right: 3.sp),
                                                      // height: 32.967.sp,
                                                      decoration: BoxDecoration(
                                                          color: ccNeutral0,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            2.2.sp,
                                                          ),
                                                          border: Border.all(
                                                            color: ccPrimary300,
                                                          )),
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                            height: 16.483.sp,
                                                            decoration:
                                                                BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      topLeft:
                                                                          Radius
                                                                              .circular(
                                                                        2.2.sp,
                                                                      ),
                                                                      topRight:
                                                                          Radius
                                                                              .circular(
                                                                        2.2.sp,
                                                                      ),
                                                                    ),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      width: 1,
                                                                      color:
                                                                          ccDanger300,
                                                                    )),
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 3.sp,
                                                                    right:
                                                                        3.sp),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Row(
                                                                    children: [
                                                                      SvgPicture
                                                                          .asset(
                                                                        "../assets/imges/cash.svg",
                                                                        height:
                                                                            4.1538.sp,
                                                                        width: 7.89
                                                                            .sp,
                                                                      ),
                                                                      cshorzSpace2,
                                                                      Text(
                                                                        "Cash",
                                                                        style: GoogleFonts
                                                                            .sen(
                                                                          color:
                                                                              ccNutural550,
                                                                          fontSize:
                                                                              5.714.sp,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      Text(
                                                                        "100.00 RM",
                                                                        style: GoogleFonts
                                                                            .sen(
                                                                          color:
                                                                              ccDanger300,
                                                                          fontSize:
                                                                              5.714.sp,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        "Change RM 42",
                                                                        style: GoogleFonts
                                                                            .sen(
                                                                          color:
                                                                              ccNutural550,
                                                                          fontSize:
                                                                              3.736.sp,
                                                                          fontWeight:
                                                                              FontWeight.w700,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ]),
                                                          ),
                                                          Container(
                                                            height: 16.483.sp,
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 3.sp,
                                                                    right:
                                                                        3.sp),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Row(
                                                                    children: [
                                                                      SvgPicture
                                                                          .asset(
                                                                        "../assets/imges/card.svg",
                                                                        height:
                                                                            4.1538.sp,
                                                                        width: 7.89
                                                                            .sp,
                                                                      ),
                                                                      cshorzSpace2,
                                                                      Text(
                                                                        "Card",
                                                                        style: GoogleFonts
                                                                            .sen(
                                                                          color:
                                                                              ccNutural550,
                                                                          fontSize:
                                                                              5.714.sp,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Text(
                                                                    "58.00 RM",
                                                                    style:
                                                                        GoogleFonts
                                                                            .sen(
                                                                      color:
                                                                          ccDanger300,
                                                                      fontSize:
                                                                          5.714
                                                                              .sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                                ]),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    csvertSpace4,
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          left: 3.sp,
                                                          right: 3.sp),
                                                      // height: 32.967.sp,
                                                      decoration: BoxDecoration(
                                                          color: ccNeutral0,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            2.2.sp,
                                                          ),
                                                          border: Border.all(
                                                            color: ccPrimary300,
                                                          )),
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                            height: 16.483.sp,
                                                            decoration:
                                                                const BoxDecoration(
                                                                    border: Border(
                                                                        bottom: BorderSide(
                                                              width: 1,
                                                              color:
                                                                  ccPrimary300,
                                                            ))),
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 3.sp,
                                                                    right:
                                                                        3.sp),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Text(
                                                                    "Print Receipt",
                                                                    style:
                                                                        GoogleFonts
                                                                            .sen(
                                                                      color:
                                                                          ccNutural550,
                                                                      fontSize:
                                                                          5.714
                                                                              .sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    child: FlutterSwitch(
                                                                        width: 9.67
                                                                            .sp,
                                                                        height: 5.274
                                                                            .sp,
                                                                        activeColor:
                                                                            ccDanger300,
                                                                        onToggle:
                                                                            (bool
                                                                                value) {},
                                                                        value:
                                                                            true),
                                                                  )
                                                                ]),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    csvertSpace4,
                                                  ],
                                                ),
                                                Container(
                                                  padding: EdgeInsets.only(
                                                      left: 3.sp,
                                                      right: 3.sp,
                                                      bottom: 3.sp),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          InkWell(
                                                            child: Text(
                                                              "Close without payment",
                                                              style: GoogleFonts
                                                                  .sen(
                                                                color:
                                                                    ccDanger300,
                                                                fontSize:
                                                                    5.714.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
                                                            ),
                                                            onTap: () =>
                                                                showSideDialogue(
                                                              context: context,
                                                              title:
                                                                  "Close Without payment",
                                                              saveButtonText:
                                                                  "Close without payment",
                                                              saveButtonPressed:
                                                                  (dynamic
                                                                      val) {
                                                                // print(
                                                                //     "hello i am clicked with $val");
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                              child: Container(
                                                                height:
                                                                    100.h - 110,
                                                                // width: 100.w,
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        top: 4
                                                                            .sp,
                                                                        left: 3.50
                                                                            .sp,
                                                                        right: 4
                                                                            .sp),
                                                                // decoration:
                                                                //     BoxDecoration(
                                                                //   border:
                                                                //       Border(
                                                                //     bottom:
                                                                //         BorderSide(
                                                                //       color:
                                                                //           ccNutural550,
                                                                //       width: 1,
                                                                //     ),
                                                                //     top:
                                                                //         BorderSide(
                                                                //       color:
                                                                //           ccNutural550,
                                                                //       width: 1,
                                                                //     ),
                                                                //   ),
                                                                // ),
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
                                                                          height: 100.h -
                                                                              200,
                                                                          width:
                                                                              100.w,
                                                                          child: SingleChildScrollView(
                                                                              child: Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                            csvertSpace4,
                                                                            Container(
                                                                              decoration: BoxDecoration(
                                                                                border: Border.all(
                                                                                  width: 1,
                                                                                  color: ccNatural250,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(2.1978.sp),
                                                                              ),
                                                                              child: Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                Container(
                                                                                  height: 10.sp,
                                                                                  decoration: const BoxDecoration(
                                                                                      border: Border(
                                                                                          bottom: BorderSide(
                                                                                    width: 1,
                                                                                    color: ccNatural250,
                                                                                  ))),
                                                                                  child: Row(
                                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                    children: [
                                                                                      cshorzSpace2,
                                                                                      CheckBoxCircleWidget(
                                                                                        text: 'Guest Left',
                                                                                        check: true,
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Container(
                                                                                  height: 10.sp,
                                                                                  decoration: const BoxDecoration(
                                                                                      border: Border(
                                                                                          bottom: BorderSide(
                                                                                    width: 1,
                                                                                    color: ccNatural250,
                                                                                  ))),
                                                                                  child: Row(
                                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                    children: [
                                                                                      cshorzSpace2,
                                                                                      CheckBoxCircleWidget(
                                                                                        text: 'On the house',
                                                                                        check: false,
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                SizedBox(
                                                                                  height: 10.sp,
                                                                                  child: Row(
                                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                    children: [
                                                                                      cshorzSpace2,
                                                                                      CheckBoxCircleWidget(
                                                                                        text: 'Waiter???s mistake',
                                                                                        check: false,
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ]),
                                                                            ),
                                                                            csvertSpace2,
                                                                          ])))
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 11.648.sp,
                                                        width: 46.373.sp,
                                                        child: ElevatedButton(
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            backgroundColor:
                                                                ccDanger300,
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          2.1978
                                                                              .sp),
                                                            ),
                                                          ),
                                                          onPressed: () {
                                                            model.goToPage(
                                                                'pay');
                                                          },
                                                          child: Text(
                                                            'Pay',
                                                            style: TextStyle(
                                                                fontSize:
                                                                    4.3956.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: PayTopHeaderWidget(),
                        ),
                        // Align(
                        //     alignment: Alignment.bottomCenter,
                        //     child: FooterWidget()),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
