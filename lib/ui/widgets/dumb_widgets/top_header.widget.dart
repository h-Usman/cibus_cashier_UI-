import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/question_textfeild.widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../theme/cibus.colors.dart';

// ignore: must_be_immutable
class TopHeaderWidget extends StatelessWidget {
  // final Function goToPageRequested;
  TopHeaderWidget({
    Key? key,
    // required this.goToPageRequested,
  }) : super(key: key);
  List<bool> isExpanse = [true, false, false];
  List<bool> isIncome = [false, true, false];
  List<bool> isSafeDrop = [false, false, true];
  String result = '';
  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'Supplies';
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
                          color: ccNeutral0,
                          width: 39.34736.sp,
                          height: 13.64615.sp,
                          child: Center(
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  "../assets/imges/b-arrow.svg",
                                  height: 2.63736.sp,
                                  width: 5.0549.sp,
                                ),
                                Padding(padding: EdgeInsets.only(left: 3.5.sp)),
                                Text(
                                  "Tables",
                                  style: GoogleFonts.sen(
                                    color: ccNutural550,
                                    fontSize: 5.714.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      Container(
                        color: ccDanger300,
                        width: 42.63736.sp,
                        height: 13.64615.sp,
                        child: Center(
                          child: Text(
                            "Receipt",
                            style: GoogleFonts.sen(
                              color: ccNeutral0,
                              fontSize: 5.714.sp,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Receipt # 15",
                style: GoogleFonts.sen(
                  color: ccNutural550,
                  fontSize: 5.sp,
                ),
              ),
              Text(
                "Garden Table 1",
                style: GoogleFonts.sen(
                  color: ccDanger300,
                  fontSize: 5.sp,
                ),
              ),
            ],
          ),
          Column(mainAxisAlignment: MainAxisAlignment.center,
              // width: 10.w,
              children: [
                Row(
                  children: [
                    InkWell(
                      child: SvgPicture.asset(
                        "../assets/imges/hamburger.svg",
                        height: 2.63736.sp,
                        width: 3.2967.sp,
                      ),
                      onTap: () => showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (_) => AlertDialog(
                          contentPadding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(2.197.sp))),
                          content: Container(
                            width: 183.076.sp,
                            height: 97.sp,
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
                                Container(
                                  padding: EdgeInsets.only(
                                    left: 3.sp,
                                    right: 1.sp,
                                    top: 2.sp,
                                  ),
                                  decoration: const BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                    width: 0.5,
                                    color: ccNatural250,
                                  ))),
                                  height: 14.62.sp,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          height: 10.62.sp,
                                          color: ccNeutral0,
                                          alignment: Alignment.centerLeft,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                width: 153.sp,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'Functions',
                                                      style: GoogleFonts.sen(
                                                        color: ccNutural550,
                                                        fontSize: 5.714.sp,
                                                      ),
                                                    ),
                                                  ],
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
                                Container(
                                  color: ccDanger100,
                                  padding: EdgeInsets.only(
                                    left: 3.sp,
                                    right: 1.sp,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 4.83.sp),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            // padding: EdgeInsets.only(left: 4.153.sp, right: 4.65.sp),
                                            width: 51.868.sp,
                                            height: 21.78868.sp,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  width: double.infinity,
                                                  child: Text(
                                                    "Cash Shift",
                                                    style: GoogleFonts.sen(
                                                      fontSize: 4.395.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: ccDanger300,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 3.95.sp)),
                                                Opacity(
                                                  opacity: .5,
                                                  child: TextField(
                                                    enabled: false,
                                                    style: const TextStyle(
                                                        color: ccNutural550),
                                                    controller:
                                                        TextEditingController(
                                                            text:
                                                                "Start Cash Shift"),
                                                    decoration: InputDecoration(
                                                      fillColor: ccNeutral0,
                                                      filled: true,
                                                      contentPadding:
                                                          EdgeInsets.all(
                                                              2.63.sp),
                                                      // fillColor:
                                                      //     ccBakground,
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    1.0989.sp),
                                                        borderSide:
                                                            const BorderSide(
                                                          color: ccPrimary300,
                                                          width: 1,
                                                        ),
                                                      ),

                                                      prefixIcon: Container(
                                                          decoration:
                                                              // ignore: prefer_const_constructors
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              topLeft: Radius
                                                                  .circular(
                                                                      1.0989
                                                                          .sp),
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      1.0989
                                                                          .sp),
                                                            ),
                                                            border: Border.all(
                                                              color:
                                                                  ccPrimary300,
                                                              width: 1,
                                                            ),
                                                          ),
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          // color:
                                                          //     ccNetural350,
                                                          height: 10.109.sp,
                                                          width: 11.86.sp,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  right:
                                                                      3.296.sp),
                                                          // color:
                                                          //     ccNeutral0, // background color
                                                          child: Container(
                                                            color: ccNeutral0,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 1),
                                                            child: Center(
                                                              child: SvgPicture
                                                                  .asset(
                                                                "../assets/imges/key.svg",
                                                                height:
                                                                    5.2747.sp,
                                                                width:
                                                                    5.2747.sp,
                                                              ),
                                                            ),
                                                          )),
                                                      hintText: "Open Cashbox",
                                                      hintStyle: TextStyle(
                                                        color: ccPrimary300,
                                                        fontSize: 3.956.sp,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 1.95.sp)),
                                              ],
                                            ),
                                          ),
                                          cshorzSpace2,
                                          InkWell(
                                              child: SizedBox(
                                                width: 51.868.sp,
                                                height: 21.78868.sp,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                bottom:
                                                                    3.95.sp)),
                                                    TextField(
                                                      enabled: false,
                                                      style: const TextStyle(
                                                          color: ccNutural550),
                                                      controller:
                                                          TextEditingController(
                                                              text:
                                                                  "Finish Cash Shift"),
                                                      decoration:
                                                          InputDecoration(
                                                        fillColor: ccNeutral0,
                                                        filled: true,
                                                        contentPadding:
                                                            EdgeInsets.all(
                                                                2.63.sp),
                                                        // fillColor:
                                                        //     ccBakground,
                                                        border:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      1.0989
                                                                          .sp),
                                                          borderSide:
                                                              const BorderSide(
                                                            color: ccPrimary300,
                                                            width: 1,
                                                          ),
                                                        ),

                                                        prefixIcon: Container(
                                                            decoration:
                                                                // ignore: prefer_const_constructors
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        1.0989
                                                                            .sp),
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        1.0989
                                                                            .sp),
                                                              ),
                                                              border:
                                                                  Border.all(
                                                                color:
                                                                    ccPrimary300,
                                                                width: 1,
                                                              ),
                                                            ),
                                                            clipBehavior: Clip
                                                                .antiAlias,
                                                            // color:
                                                            //     ccNetural350,
                                                            height: 10.109.sp,
                                                            width: 11.86.sp,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    right: 3.296
                                                                        .sp),
                                                            // color:
                                                            //     ccNeutral0, // background color
                                                            child: Container(
                                                              color: ccNeutral0,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left: 1),
                                                              child: Center(
                                                                child:
                                                                    SvgPicture
                                                                        .asset(
                                                                  "../assets/imges/key.svg",
                                                                  height:
                                                                      5.2747.sp,
                                                                  width:
                                                                      5.2747.sp,
                                                                ),
                                                              ),
                                                            )
                                                            // icon
                                                            ),
                                                        hintText:
                                                            "Finish Cash Shift",
                                                        hintStyle: TextStyle(
                                                          color: ccPrimary300,
                                                          fontSize: 3.956.sp,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                bottom:
                                                                    1.95.sp)),
                                                  ],
                                                ),
                                              ),
                                              // if faild shift close
                                              // onTap: () {
                                              //   Navigator.pop(context);
                                              //   showDialog(
                                              //     context: context,
                                              //     barrierDismissible: false,
                                              //     builder: (_) => AlertDialog(
                                              //       contentPadding:
                                              //           EdgeInsets.zero,
                                              //       shape: RoundedRectangleBorder(
                                              //           borderRadius:
                                              //               BorderRadius.all(
                                              //                   Radius.circular(
                                              //                       2.197.sp))),
                                              //       content: Container(
                                              //         width: 183.076.sp,
                                              //         height: 29.20.sp,
                                              //         decoration:
                                              //             const BoxDecoration(
                                              //                 border: Border(
                                              //                     bottom:
                                              //                         BorderSide(
                                              //           width: 0.5,
                                              //           color: ccNatural250,
                                              //         ))),
                                              //         child: Column(
                                              //           mainAxisAlignment:
                                              //               MainAxisAlignment
                                              //                   .start,
                                              //           crossAxisAlignment:
                                              //               CrossAxisAlignment
                                              //                   .start,
                                              //           children: [
                                              //             Container(
                                              //               padding:
                                              //                   EdgeInsets.only(
                                              //                 left: 3.sp,
                                              //                 right: 1.sp,
                                              //                 top: 2.sp,
                                              //               ),
                                              //               decoration:
                                              //                   const BoxDecoration(
                                              //                       border: Border(
                                              //                           bottom: BorderSide(
                                              //                 width: 0.5,
                                              //                 color: ccNatural250,
                                              //               ))),
                                              //               height: 14.62.sp,
                                              //               child: Row(
                                              //                 mainAxisAlignment:
                                              //                     MainAxisAlignment
                                              //                         .spaceBetween,
                                              //                 crossAxisAlignment:
                                              //                     CrossAxisAlignment
                                              //                         .start,
                                              //                 children: [
                                              //                   Expanded(
                                              //                     child:
                                              //                         Container(
                                              //                       height:
                                              //                           10.62.sp,
                                              //                       color:
                                              //                           ccNeutral0,
                                              //                       alignment:
                                              //                           Alignment
                                              //                               .centerLeft,
                                              //                       child: Row(
                                              //                         mainAxisAlignment:
                                              //                             MainAxisAlignment
                                              //                                 .center,
                                              //                         crossAxisAlignment:
                                              //                             CrossAxisAlignment
                                              //                                 .center,
                                              //                         children: [
                                              //                           SizedBox(
                                              //                             width: 153
                                              //                                 .sp,
                                              //                             child:
                                              //                                 Row(
                                              //                               mainAxisAlignment:
                                              //                                   MainAxisAlignment.center,
                                              //                               crossAxisAlignment:
                                              //                                   CrossAxisAlignment.center,
                                              //                               children: [
                                              //                                 Text(
                                              //                                   'Failed to close the shift',
                                              //                                   style: GoogleFonts.sen(
                                              //                                     color: ccNutural550,
                                              //                                     fontSize: 5.714.sp,
                                              //                                   ),
                                              //                                 ),
                                              //                               ],
                                              //                             ),
                                              //                           ),
                                              //                         ],
                                              //                       ),
                                              //                     ),
                                              //                   ),
                                              //                   SizedBox(
                                              //                     height:
                                              //                         10.62.sp,
                                              //                     width: 10.sp,
                                              //                     child:
                                              //                         ElevatedButton(
                                              //                       onPressed:
                                              //                           () {
                                              //                         Navigator.pop(
                                              //                             context);
                                              //                       },
                                              //                       style: ElevatedButton
                                              //                           .styleFrom(
                                              //                         backgroundColor:
                                              //                             ccNeutral0,
                                              //                         elevation:
                                              //                             0,
                                              //                         shadowColor:
                                              //                             Colors
                                              //                                 .transparent,
                                              //                       ),
                                              //                       child:
                                              //                           SvgPicture
                                              //                               .asset(
                                              //                         "../assets/imges/close.svg",
                                              //                         height:
                                              //                             4.615
                                              //                                 .sp,
                                              //                         width: 4.615
                                              //                             .sp,
                                              //                       ),
                                              //                     ),
                                              //                   ),
                                              //                 ],
                                              //               ),
                                              //             ),
                                              //             Container(
                                              //               color: ccDanger100,
                                              //               padding:
                                              //                   EdgeInsets.only(
                                              //                 left: 5.sp,
                                              //                 right: 1.sp,
                                              //               ),
                                              //               child: Container(
                                              //                 color: ccDanger100,
                                              //                 padding:
                                              //                     EdgeInsets.only(
                                              //                   left: 5.sp,
                                              //                   right: 1.sp,
                                              //                 ),
                                              //                 child: Column(
                                              //                   mainAxisAlignment:
                                              //                       MainAxisAlignment
                                              //                           .start,
                                              //                   crossAxisAlignment:
                                              //                       CrossAxisAlignment
                                              //                           .start,
                                              //                   children: [
                                              //                     Padding(
                                              //                       padding: EdgeInsets.only(
                                              //                           top: 4.83
                                              //                               .sp),
                                              //                     ),
                                              //                     Row(
                                              //                       mainAxisAlignment:
                                              //                           MainAxisAlignment
                                              //                               .start,
                                              //                       crossAxisAlignment:
                                              //                           CrossAxisAlignment
                                              //                               .start,
                                              //                       children: [
                                              //                         SvgPicture
                                              //                             .asset(
                                              //                           "../assets/imges/flag.svg",
                                              //                           width:
                                              //                               4.3956
                                              //                                   .sp,
                                              //                           height:
                                              //                               5.4945
                                              //                                   .sp,
                                              //                         ),
                                              //                         cshorzSpace2,
                                              //                         SizedBox(
                                              //                           // width: 140.sp,
                                              //                           child:
                                              //                               Column(
                                              //                             mainAxisAlignment:
                                              //                                 MainAxisAlignment.center,
                                              //                             crossAxisAlignment:
                                              //                                 CrossAxisAlignment.start,
                                              //                             children: [
                                              //                               Text(
                                              //                                 'Before closing the cash shift, close 2 open orders.',
                                              //                                 style:
                                              //                                     GoogleFonts.sen(
                                              //                                   color: ccNutural550,
                                              //                                   fontSize: 4.3956.sp,
                                              //                                 ),
                                              //                               ),
                                              //                             ],
                                              //                           ),
                                              //                         ),
                                              //                       ],
                                              //                     ),
                                              //                     csvertSpace4,
                                              //                   ],
                                              //                 ),
                                              //               ),
                                              //             ),
                                              //           ],
                                              //         ),
                                              //       ),
                                              //       actions: [
                                              //         Row(
                                              //           mainAxisAlignment:
                                              //               MainAxisAlignment
                                              //                   .start,
                                              //           crossAxisAlignment:
                                              //               CrossAxisAlignment
                                              //                   .center,
                                              //           children: [
                                              //             Padding(
                                              //                 padding:
                                              //                     EdgeInsets.only(
                                              //               left: 5.sp,
                                              //             )),
                                              //             Container(
                                              //               height: 9.25.sp,
                                              //               decoration:
                                              //                   BoxDecoration(
                                              //                 borderRadius:
                                              //                     BorderRadius
                                              //                         .circular(
                                              //                             1.098
                                              //                                 .sp),
                                              //                 border: Border.all(
                                              //                     color:
                                              //                         ccDanger300),
                                              //               ),
                                              //               child: ElevatedButton(
                                              //                 onPressed: () {
                                              //                   Navigator.pop(
                                              //                       context);
                                              //                 },
                                              //                 style:
                                              //                     ElevatedButton
                                              //                         .styleFrom(
                                              //                   backgroundColor:
                                              //                       ccDanger300,
                                              //                   elevation: 0,
                                              //                   shadowColor: Colors
                                              //                       .transparent,
                                              //                 ),
                                              //                 child: Text(
                                              //                   'Go to orders',
                                              //                   style: GoogleFonts
                                              //                       .sen(
                                              //                     color:
                                              //                         ccNeutral0,
                                              //                     fontSize:
                                              //                         4.39.sp,
                                              //                     fontWeight:
                                              //                         FontWeight
                                              //                             .w400,
                                              //                   ),
                                              //                 ),
                                              //               ),
                                              //             ),
                                              //           ],
                                              //         ),
                                              //       ],
                                              //     ),
                                              //   );
                                              // },
                                              // end shift faild close
                                              onTap: () {
                                                Navigator.pop(context);
                                                showDialog(
                                                  context: context,
                                                  barrierDismissible: false,
                                                  builder: (_) => AlertDialog(
                                                    contentPadding:
                                                        EdgeInsets.zero,
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    2.197.sp))),
                                                    content: Container(
                                                      width: 183.076.sp,
                                                      height: 73.83736.sp,
                                                      decoration:
                                                          const BoxDecoration(
                                                              border: Border(
                                                                  bottom:
                                                                      BorderSide(
                                                        width: 0.5,
                                                        color: ccNatural250,
                                                      ))),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            padding:
                                                                EdgeInsets.only(
                                                              left: 3.sp,
                                                              right: 1.sp,
                                                              top: 2.sp,
                                                            ),
                                                            decoration:
                                                                const BoxDecoration(
                                                                    border: Border(
                                                                        bottom: BorderSide(
                                                              width: 0.5,
                                                              color:
                                                                  ccNatural250,
                                                            ))),
                                                            height: 14.62.sp,
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                      Container(
                                                                    height:
                                                                        10.62
                                                                            .sp,
                                                                    color:
                                                                        ccNeutral0,
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        cshorzSpace2,
                                                                        InkWell(
                                                                          child:
                                                                              Text(
                                                                            'Functions',
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              color: ccDanger300,
                                                                              fontSize: 4.3956.sp,
                                                                            ),
                                                                          ),
                                                                          onTap:
                                                                              () {
                                                                            Navigator.pop(context);
                                                                            showDialog(
                                                                              context: context,
                                                                              barrierDismissible: false,
                                                                              builder: (_) => AlertDialog(
                                                                                contentPadding: EdgeInsets.zero,
                                                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2.197.sp))),
                                                                                content: Container(
                                                                                  width: 183.076.sp,
                                                                                  height: 97.sp,
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
                                                                                      Container(
                                                                                        padding: EdgeInsets.only(
                                                                                          left: 3.sp,
                                                                                          right: 1.sp,
                                                                                          top: 2.sp,
                                                                                        ),
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
                                                                                                color: ccNeutral0,
                                                                                                alignment: Alignment.centerLeft,
                                                                                                child: Row(
                                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                  children: [
                                                                                                    SizedBox(
                                                                                                      width: 153.sp,
                                                                                                      child: Row(
                                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                        children: [
                                                                                                          Text(
                                                                                                            'Functions',
                                                                                                            style: GoogleFonts.sen(
                                                                                                              color: ccNutural550,
                                                                                                              fontSize: 5.714.sp,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ],
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
                                                                                      Container(
                                                                                        color: ccDanger100,
                                                                                        padding: EdgeInsets.only(
                                                                                          left: 3.sp,
                                                                                          right: 1.sp,
                                                                                        ),
                                                                                        child: Column(
                                                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: EdgeInsets.only(top: 4.83.sp),
                                                                                            ),
                                                                                            Row(
                                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                              children: [
                                                                                                SizedBox(
                                                                                                  // padding: EdgeInsets.only(left: 4.153.sp, right: 4.65.sp),
                                                                                                  width: 51.868.sp,
                                                                                                  height: 21.78868.sp,
                                                                                                  child: Column(
                                                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                    children: [
                                                                                                      SizedBox(
                                                                                                        width: double.infinity,
                                                                                                        child: Text(
                                                                                                          "Cash Shift",
                                                                                                          style: GoogleFonts.sen(
                                                                                                            fontSize: 4.395.sp,
                                                                                                            fontWeight: FontWeight.w400,
                                                                                                            color: ccDanger300,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(padding: EdgeInsets.only(bottom: 3.95.sp)),
                                                                                                      TextField(
                                                                                                        enabled: false,
                                                                                                        style: const TextStyle(color: ccNutural550),
                                                                                                        controller: TextEditingController(text: "Start Cash Shift"),
                                                                                                        decoration: InputDecoration(
                                                                                                          fillColor: ccNeutral0,
                                                                                                          filled: true,
                                                                                                          contentPadding: EdgeInsets.all(2.63.sp),
                                                                                                          // fillColor:
                                                                                                          //     ccBakground,
                                                                                                          border: OutlineInputBorder(
                                                                                                            borderRadius: BorderRadius.circular(1.0989.sp),
                                                                                                            borderSide: const BorderSide(
                                                                                                              color: ccPrimary300,
                                                                                                              width: 1,
                                                                                                            ),
                                                                                                          ),

                                                                                                          prefixIcon: Container(
                                                                                                              decoration:
                                                                                                                  // ignore: prefer_const_constructors
                                                                                                                  BoxDecoration(
                                                                                                                borderRadius: BorderRadius.only(
                                                                                                                  topLeft: Radius.circular(1.0989.sp),
                                                                                                                  bottomLeft: Radius.circular(1.0989.sp),
                                                                                                                ),
                                                                                                                border: Border.all(
                                                                                                                  color: ccPrimary300,
                                                                                                                  width: 1,
                                                                                                                ),
                                                                                                              ),
                                                                                                              clipBehavior: Clip.antiAlias,
                                                                                                              // color:
                                                                                                              //     ccNetural350,
                                                                                                              height: 10.109.sp,
                                                                                                              width: 11.86.sp,
                                                                                                              margin: EdgeInsets.only(right: 3.296.sp),
                                                                                                              // color:
                                                                                                              //     ccNeutral0, // background color
                                                                                                              child: Container(
                                                                                                                color: ccNeutral0,
                                                                                                                margin: EdgeInsets.only(left: 1),
                                                                                                                child: Center(
                                                                                                                  child: SvgPicture.asset(
                                                                                                                    "../assets/imges/key.svg",
                                                                                                                    height: 5.2747.sp,
                                                                                                                    width: 5.2747.sp,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              )),
                                                                                                          hintText: "Open Cashbox",
                                                                                                          hintStyle: TextStyle(
                                                                                                            color: ccPrimary300,
                                                                                                            fontSize: 3.956.sp,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(padding: EdgeInsets.only(bottom: 1.95.sp)),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                                cshorzSpace2,
                                                                                                Opacity(
                                                                                                  opacity: .5,
                                                                                                  child: SizedBox(
                                                                                                    width: 51.868.sp,
                                                                                                    height: 21.78868.sp,
                                                                                                    child: Column(
                                                                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                                                                      crossAxisAlignment: CrossAxisAlignment.end,
                                                                                                      children: [
                                                                                                        Padding(padding: EdgeInsets.only(bottom: 3.95.sp)),
                                                                                                        TextField(
                                                                                                          enabled: false,
                                                                                                          style: const TextStyle(color: ccNutural550),
                                                                                                          controller: TextEditingController(text: "Finish Cash Shift"),
                                                                                                          decoration: InputDecoration(
                                                                                                            fillColor: ccNeutral0,
                                                                                                            filled: true,
                                                                                                            contentPadding: EdgeInsets.all(2.63.sp),
                                                                                                            // fillColor:
                                                                                                            //     ccBakground,
                                                                                                            border: OutlineInputBorder(
                                                                                                              borderRadius: BorderRadius.circular(1.0989.sp),
                                                                                                              borderSide: const BorderSide(
                                                                                                                color: ccPrimary300,
                                                                                                                width: 1,
                                                                                                              ),
                                                                                                            ),

                                                                                                            prefixIcon: Container(
                                                                                                                decoration:
                                                                                                                    // ignore: prefer_const_constructors
                                                                                                                    BoxDecoration(
                                                                                                                  borderRadius: BorderRadius.only(
                                                                                                                    topLeft: Radius.circular(1.0989.sp),
                                                                                                                    bottomLeft: Radius.circular(1.0989.sp),
                                                                                                                  ),
                                                                                                                  border: Border.all(
                                                                                                                    color: ccPrimary300,
                                                                                                                    width: 1,
                                                                                                                  ),
                                                                                                                ),
                                                                                                                clipBehavior: Clip.antiAlias,
                                                                                                                // color:
                                                                                                                //     ccNetural350,
                                                                                                                height: 10.109.sp,
                                                                                                                width: 11.86.sp,
                                                                                                                margin: EdgeInsets.only(right: 3.296.sp),
                                                                                                                // color:
                                                                                                                //     ccNeutral0, // background color
                                                                                                                child: Container(
                                                                                                                  color: ccNeutral0,
                                                                                                                  margin: EdgeInsets.only(left: 1),
                                                                                                                  child: Center(
                                                                                                                    child: SvgPicture.asset(
                                                                                                                      "../assets/imges/key.svg",
                                                                                                                      height: 5.2747.sp,
                                                                                                                      width: 5.2747.sp,
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                )
                                                                                                                // icon
                                                                                                                ),
                                                                                                            hintText: "Finish Cash Shift",
                                                                                                            hintStyle: TextStyle(
                                                                                                              color: ccPrimary300,
                                                                                                              fontSize: 3.956.sp,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                        Padding(padding: EdgeInsets.only(bottom: 1.95.sp)),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                cshorzSpace2,
                                                                                                Opacity(
                                                                                                  opacity: .5,
                                                                                                  child: SizedBox(
                                                                                                    height: 21.78868.sp,
                                                                                                    width: 51.868.sp,
                                                                                                    child: Column(
                                                                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                                                                      crossAxisAlignment: CrossAxisAlignment.end,
                                                                                                      children: [
                                                                                                        Padding(padding: EdgeInsets.only(bottom: 3.95.sp)),
                                                                                                        TextField(
                                                                                                          enabled: false,
                                                                                                          style: const TextStyle(color: ccNutural550),
                                                                                                          controller: TextEditingController(text: "Add Transaction"),
                                                                                                          decoration: InputDecoration(
                                                                                                            fillColor: ccNeutral0,
                                                                                                            filled: true,
                                                                                                            contentPadding: EdgeInsets.all(2.63.sp),
                                                                                                            // fillColor:
                                                                                                            //     ccBakground,
                                                                                                            border: OutlineInputBorder(
                                                                                                              borderRadius: BorderRadius.circular(1.0989.sp),
                                                                                                              borderSide: const BorderSide(
                                                                                                                color: ccPrimary300,
                                                                                                                width: 1,
                                                                                                              ),
                                                                                                            ),

                                                                                                            prefixIcon: Container(
                                                                                                                decoration:
                                                                                                                    // ignore: prefer_const_constructors
                                                                                                                    BoxDecoration(
                                                                                                                  borderRadius: BorderRadius.only(
                                                                                                                    topLeft: Radius.circular(1.0989.sp),
                                                                                                                    bottomLeft: Radius.circular(1.0989.sp),
                                                                                                                  ),
                                                                                                                  border: Border.all(
                                                                                                                    color: ccPrimary300,
                                                                                                                    width: 1,
                                                                                                                  ),
                                                                                                                ),
                                                                                                                clipBehavior: Clip.antiAlias,
                                                                                                                // color:
                                                                                                                //     ccNetural350,
                                                                                                                height: 10.109.sp,
                                                                                                                width: 11.86.sp,
                                                                                                                margin: EdgeInsets.only(right: 3.296.sp),
                                                                                                                // color:
                                                                                                                //     ccNeutral0, // background color
                                                                                                                child: Container(
                                                                                                                  color: ccNeutral0,
                                                                                                                  margin: EdgeInsets.only(left: 1),
                                                                                                                  child: Center(
                                                                                                                    child: SvgPicture.asset(
                                                                                                                      "../assets/imges/plus-g.svg",
                                                                                                                      height: 5.2747.sp,
                                                                                                                      width: 5.2747.sp,
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                )
                                                                                                                // icon
                                                                                                                ),
                                                                                                            hintText: "Add Transaction",
                                                                                                            hintStyle: TextStyle(
                                                                                                              color: ccPrimary300,
                                                                                                              fontSize: 3.956.sp,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                        Padding(padding: EdgeInsets.only(bottom: 1.95.sp)),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                cshorzSpace1,
                                                                                              ],
                                                                                            ),
                                                                                            csvertSpace2,
                                                                                            Row(
                                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                              children: [
                                                                                                SizedBox(
                                                                                                  // padding: EdgeInsets.only(left: 4.153.sp, right: 4.65.sp),
                                                                                                  width: 51.868.sp,
                                                                                                  height: 21.78868.sp,
                                                                                                  child: Column(
                                                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                    children: [
                                                                                                      SizedBox(
                                                                                                        width: double.infinity,
                                                                                                        child: Text(
                                                                                                          "Equipment",
                                                                                                          style: GoogleFonts.sen(
                                                                                                            fontSize: 4.395.sp,
                                                                                                            fontWeight: FontWeight.w400,
                                                                                                            color: ccDanger300,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(padding: EdgeInsets.only(bottom: 3.95.sp)),
                                                                                                      TextField(
                                                                                                        enabled: false,
                                                                                                        style: const TextStyle(color: ccNutural550),
                                                                                                        controller: TextEditingController(text: "Open Cashbox"),
                                                                                                        decoration: InputDecoration(
                                                                                                          fillColor: ccNeutral0,
                                                                                                          filled: true,
                                                                                                          contentPadding: EdgeInsets.all(2.63.sp),
                                                                                                          // fillColor:
                                                                                                          //     ccBakground,
                                                                                                          border: OutlineInputBorder(
                                                                                                            borderRadius: BorderRadius.circular(1.0989.sp),
                                                                                                            borderSide: const BorderSide(
                                                                                                              color: ccPrimary300,
                                                                                                              width: 1,
                                                                                                            ),
                                                                                                          ),

                                                                                                          prefixIcon: Container(
                                                                                                              decoration:
                                                                                                                  // ignore: prefer_const_constructors
                                                                                                                  BoxDecoration(
                                                                                                                borderRadius: BorderRadius.only(
                                                                                                                  topLeft: Radius.circular(1.0989.sp),
                                                                                                                  bottomLeft: Radius.circular(1.0989.sp),
                                                                                                                ),
                                                                                                                border: Border.all(
                                                                                                                  color: ccPrimary300,
                                                                                                                  width: 1,
                                                                                                                ),
                                                                                                              ),
                                                                                                              clipBehavior: Clip.antiAlias,
                                                                                                              // color:
                                                                                                              //     ccNetural350,
                                                                                                              height: 10.109.sp,
                                                                                                              width: 11.86.sp,
                                                                                                              margin: EdgeInsets.only(right: 3.296.sp),
                                                                                                              // color:
                                                                                                              //     ccNeutral0, // background color
                                                                                                              child: Container(
                                                                                                                color: ccNeutral0,
                                                                                                                margin: EdgeInsets.only(left: 1),
                                                                                                                child: Center(
                                                                                                                  child: SvgPicture.asset(
                                                                                                                    "../assets/imges/keyboard.svg",
                                                                                                                    height: 5.2747.sp,
                                                                                                                    width: 5.2747.sp,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              )),
                                                                                                          hintText: "Open Cashbox",
                                                                                                          hintStyle: TextStyle(
                                                                                                            color: ccPrimary300,
                                                                                                            fontSize: 3.956.sp,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(padding: EdgeInsets.only(bottom: 1.95.sp)),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            csvertSpace2,
                                                                                            Row(
                                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                              children: [
                                                                                                SizedBox(
                                                                                                  // padding: EdgeInsets.only(left: 4.153.sp, right: 4.65.sp),
                                                                                                  width: 51.868.sp,
                                                                                                  height: 21.78868.sp,
                                                                                                  child: Column(
                                                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                    children: [
                                                                                                      SizedBox(
                                                                                                        width: double.infinity,
                                                                                                        child: Text(
                                                                                                          "Others",
                                                                                                          style: GoogleFonts.sen(
                                                                                                            fontSize: 4.395.sp,
                                                                                                            fontWeight: FontWeight.w400,
                                                                                                            color: ccDanger300,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(padding: EdgeInsets.only(bottom: 3.95.sp)),
                                                                                                      TextField(
                                                                                                        enabled: false,
                                                                                                        style: const TextStyle(color: ccNutural550),
                                                                                                        controller: TextEditingController(text: "Creat a Report"),
                                                                                                        decoration: InputDecoration(
                                                                                                          fillColor: ccNeutral0,
                                                                                                          filled: true,
                                                                                                          contentPadding: EdgeInsets.all(2.63.sp),
                                                                                                          // fillColor:
                                                                                                          //     ccBakground,
                                                                                                          border: OutlineInputBorder(
                                                                                                            borderRadius: BorderRadius.circular(1.0989.sp),
                                                                                                            borderSide: const BorderSide(
                                                                                                              color: ccPrimary300,
                                                                                                              width: 1,
                                                                                                            ),
                                                                                                          ),

                                                                                                          prefixIcon: Container(
                                                                                                              decoration:
                                                                                                                  // ignore: prefer_const_constructors
                                                                                                                  BoxDecoration(
                                                                                                                borderRadius: BorderRadius.only(
                                                                                                                  topLeft: Radius.circular(1.0989.sp),
                                                                                                                  bottomLeft: Radius.circular(1.0989.sp),
                                                                                                                ),
                                                                                                                border: Border.all(
                                                                                                                  color: ccPrimary300,
                                                                                                                  width: 1,
                                                                                                                ),
                                                                                                              ),
                                                                                                              clipBehavior: Clip.antiAlias,
                                                                                                              // color:
                                                                                                              //     ccNetural350,
                                                                                                              height: 10.109.sp,
                                                                                                              width: 11.86.sp,
                                                                                                              margin: EdgeInsets.only(right: 3.296.sp),
                                                                                                              // color:
                                                                                                              //     ccNeutral0, // background color
                                                                                                              child: Container(
                                                                                                                color: ccNeutral0,
                                                                                                                margin: EdgeInsets.only(left: 1),
                                                                                                                child: Center(
                                                                                                                  child: SvgPicture.asset(
                                                                                                                    "../assets/imges/keyboard.svg",
                                                                                                                    height: 5.2747.sp,
                                                                                                                    width: 5.2747.sp,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              )),
                                                                                                          hintText: "Creat a Report",
                                                                                                          hintStyle: TextStyle(
                                                                                                            color: ccPrimary300,
                                                                                                            fontSize: 3.956.sp,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(padding: EdgeInsets.only(bottom: 1.95.sp)),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                                cshorzSpace8,
                                                                                                SizedBox(
                                                                                                  width: 51.868.sp,
                                                                                                  height: 21.78868.sp,
                                                                                                  child: Column(
                                                                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.end,
                                                                                                    children: [
                                                                                                      Padding(padding: EdgeInsets.only(bottom: 3.95.sp)),
                                                                                                      TextField(
                                                                                                        enabled: false,
                                                                                                        style: const TextStyle(color: ccNutural550),
                                                                                                        controller: TextEditingController(text: "Sign Out"),
                                                                                                        decoration: InputDecoration(
                                                                                                          fillColor: ccNeutral0,
                                                                                                          filled: true,
                                                                                                          contentPadding: EdgeInsets.all(2.63.sp),
                                                                                                          // fillColor:
                                                                                                          //     ccBakground,
                                                                                                          border: OutlineInputBorder(
                                                                                                            borderRadius: BorderRadius.circular(1.0989.sp),
                                                                                                            borderSide: const BorderSide(
                                                                                                              color: ccPrimary300,
                                                                                                              width: 1,
                                                                                                            ),
                                                                                                          ),

                                                                                                          prefixIcon: Container(
                                                                                                              decoration:
                                                                                                                  // ignore: prefer_const_constructors
                                                                                                                  BoxDecoration(
                                                                                                                borderRadius: BorderRadius.only(
                                                                                                                  topLeft: Radius.circular(1.0989.sp),
                                                                                                                  bottomLeft: Radius.circular(1.0989.sp),
                                                                                                                ),
                                                                                                                border: Border.all(
                                                                                                                  color: ccPrimary300,
                                                                                                                  width: 1,
                                                                                                                ),
                                                                                                              ),
                                                                                                              clipBehavior: Clip.antiAlias,
                                                                                                              // color:
                                                                                                              //     ccNetural350,
                                                                                                              height: 10.109.sp,
                                                                                                              width: 11.86.sp,
                                                                                                              margin: EdgeInsets.only(right: 3.296.sp),
                                                                                                              // color:
                                                                                                              //     ccNeutral0, // background color
                                                                                                              child: Container(
                                                                                                                color: ccNeutral0,
                                                                                                                margin: EdgeInsets.only(left: 1),
                                                                                                                child: Center(
                                                                                                                  child: SvgPicture.asset(
                                                                                                                    "../assets/imges/key.svg",
                                                                                                                    height: 5.2747.sp,
                                                                                                                    width: 5.2747.sp,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              )
                                                                                                              // icon
                                                                                                              ),
                                                                                                          hintText: "Sign Out",
                                                                                                          hintStyle: TextStyle(
                                                                                                            color: ccPrimary300,
                                                                                                            fontSize: 3.956.sp,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(padding: EdgeInsets.only(bottom: 1.95.sp)),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                                cshorzSpace1,
                                                                                              ],
                                                                                            ),
                                                                                            csvertSpace8,
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              140.sp,
                                                                          child:
                                                                              Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children: [
                                                                              Text(
                                                                                'Finish cash Shift',
                                                                                style: GoogleFonts.sen(
                                                                                  color: ccNutural550,
                                                                                  fontSize: 5.714.sp,
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  height:
                                                                      10.62.sp,
                                                                  width: 10.sp,
                                                                  child:
                                                                      ElevatedButton(
                                                                    onPressed:
                                                                        () {
                                                                      Navigator.pop(
                                                                          context);
                                                                    },
                                                                    style: ElevatedButton
                                                                        .styleFrom(
                                                                      backgroundColor:
                                                                          ccNeutral0,
                                                                      elevation:
                                                                          0,
                                                                      shadowColor:
                                                                          Colors
                                                                              .transparent,
                                                                    ),
                                                                    child: SvgPicture
                                                                        .asset(
                                                                      "../assets/imges/close.svg",
                                                                      height:
                                                                          4.615
                                                                              .sp,
                                                                      width: 4.615
                                                                          .sp,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            color: ccDanger100,
                                                            padding:
                                                                EdgeInsets.only(
                                                              left: 5.sp,
                                                              right: 1.sp,
                                                            ),
                                                            child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsets.only(
                                                                      top: 4.83
                                                                          .sp),
                                                                ),
                                                                SizedBox(
                                                                  width: 100.w,
                                                                  child:
                                                                      TextFeildWidget(
                                                                    hint:
                                                                        'Cash Balance after the safe drop',
                                                                  ),
                                                                ),
                                                                csvertSpace4,
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'Opening Time: ',
                                                                      style: GoogleFonts
                                                                          .sen(
                                                                        color:
                                                                            ccNutural550,
                                                                        fontSize:
                                                                            4.3956.sp,
                                                                      ),
                                                                    ),
                                                                    cshorzSpace2,
                                                                    Text(
                                                                      '01 Sep 2022 10:15:20',
                                                                      style: GoogleFonts
                                                                          .sen(
                                                                        color:
                                                                            ccDanger300,
                                                                        fontSize:
                                                                            4.3956.sp,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                csvertSpace3,
                                                                SizedBox(
                                                                  width: 100.w,
                                                                  child:
                                                                      TextFeildWidget(
                                                                    hint:
                                                                        'Comment',
                                                                  ),
                                                                ),
                                                                csvertSpace4,
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    SvgPicture
                                                                        .asset(
                                                                      "../assets/imges/flag.svg",
                                                                      width:
                                                                          4.3956
                                                                              .sp,
                                                                      height:
                                                                          5.4945
                                                                              .sp,
                                                                    ),
                                                                    cshorzSpace2,
                                                                    SizedBox(
                                                                      // width: 140.sp,
                                                                      child:
                                                                          Column(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'Before closing the register shift, conduct a safe drop of cash and leave ',
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              color: ccNutural550,
                                                                              fontSize: 4.3956.sp,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            'small money only in the cash register.',
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              color: ccNutural550,
                                                                              fontSize: 4.3956.sp,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                csvertSpace4,
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    actions: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .only(
                                                            left: 3.sp,
                                                          )),
                                                          Container(
                                                            height: 9.25.sp,
                                                            width: 29.23.sp,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          1.098
                                                                              .sp),
                                                              border: Border.all(
                                                                  color:
                                                                      ccDanger300),
                                                            ),
                                                            child:
                                                                ElevatedButton
                                                                    .icon(
                                                              onPressed: () {
                                                                Navigator.pop(
                                                                    context);
                                                                // model
                                                                //     .goToDashboard();
                                                              },
                                                              style:
                                                                  ElevatedButton
                                                                      .styleFrom(
                                                                backgroundColor:
                                                                    ccDanger300,
                                                                elevation: 0,
                                                                shadowColor: Colors
                                                                    .transparent,
                                                              ),
                                                              icon: SvgPicture
                                                                  .asset(
                                                                "../assets/imges/check-white.svg",
                                                                width: 4.17.sp,
                                                                height: 3.07.sp,
                                                              ),
                                                              label: Text(
                                                                'Finish',
                                                                style:
                                                                    GoogleFonts
                                                                        .sen(
                                                                  color:
                                                                      ccNeutral0,
                                                                  fontSize:
                                                                      4.39.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              }),
                                          cshorzSpace2,
                                          InkWell(
                                              child: SizedBox(
                                                height: 21.78868.sp,
                                                width: 51.868.sp,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                bottom:
                                                                    3.95.sp)),
                                                    TextField(
                                                      enabled: false,
                                                      style: const TextStyle(
                                                          color: ccNutural550),
                                                      controller:
                                                          TextEditingController(
                                                              text:
                                                                  "Add Transaction"),
                                                      decoration:
                                                          InputDecoration(
                                                        fillColor: ccNeutral0,
                                                        filled: true,
                                                        contentPadding:
                                                            EdgeInsets.all(
                                                                2.63.sp),
                                                        // fillColor:
                                                        //     ccBakground,
                                                        border:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      1.0989
                                                                          .sp),
                                                          borderSide:
                                                              const BorderSide(
                                                            color: ccPrimary300,
                                                            width: 1,
                                                          ),
                                                        ),

                                                        prefixIcon: Container(
                                                            decoration:
                                                                // ignore: prefer_const_constructors
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        1.0989
                                                                            .sp),
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        1.0989
                                                                            .sp),
                                                              ),
                                                              border:
                                                                  Border.all(
                                                                color:
                                                                    ccPrimary300,
                                                                width: 1,
                                                              ),
                                                            ),
                                                            clipBehavior: Clip
                                                                .antiAlias,
                                                            // color:
                                                            //     ccNetural350,
                                                            height: 10.109.sp,
                                                            width: 11.86.sp,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    right: 3.296
                                                                        .sp),
                                                            // color:
                                                            //     ccNeutral0, // background color
                                                            child: Container(
                                                              color: ccNeutral0,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left: 1),
                                                              child: Center(
                                                                child:
                                                                    SvgPicture
                                                                        .asset(
                                                                  "../assets/imges/plus-g.svg",
                                                                  height:
                                                                      5.2747.sp,
                                                                  width:
                                                                      5.2747.sp,
                                                                ),
                                                              ),
                                                            )
                                                            // icon
                                                            ),
                                                        hintText:
                                                            "Add Transaction",
                                                        hintStyle: TextStyle(
                                                          color: ccPrimary300,
                                                          fontSize: 3.956.sp,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                bottom:
                                                                    1.95.sp)),
                                                  ],
                                                ),
                                              ),
                                              onTap: () {
                                                Navigator.pop(context);
                                                showDialog(
                                                  context: context,
                                                  barrierDismissible: false,
                                                  builder: (_) => AlertDialog(
                                                    contentPadding:
                                                        EdgeInsets.zero,
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    2.197.sp))),
                                                    content: Container(
                                                      width: 176.923.sp,
                                                      height: 70.40.sp,
                                                      decoration:
                                                          const BoxDecoration(
                                                              border: Border(
                                                                  bottom:
                                                                      BorderSide(
                                                        width: 0.5,
                                                        color: ccNatural250,
                                                      ))),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            padding:
                                                                EdgeInsets.only(
                                                              left: 3.sp,
                                                              right: 1.sp,
                                                              top: 2.sp,
                                                            ),
                                                            decoration:
                                                                const BoxDecoration(
                                                                    border: Border(
                                                                        bottom: BorderSide(
                                                              width: 0.5,
                                                              color:
                                                                  ccNatural250,
                                                            ))),
                                                            height: 14.62.sp,
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                      Container(
                                                                    height:
                                                                        10.62
                                                                            .sp,
                                                                    color:
                                                                        ccNeutral0,
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        cshorzSpace2,
                                                                        InkWell(
                                                                          child:
                                                                              Text(
                                                                            'Functions',
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              color: ccDanger300,
                                                                              fontSize: 4.3956.sp,
                                                                            ),
                                                                          ),
                                                                          onTap:
                                                                              () {
                                                                            Navigator.pop(context);
                                                                            showDialog(
                                                                              context: context,
                                                                              barrierDismissible: false,
                                                                              builder: (_) => AlertDialog(
                                                                                contentPadding: EdgeInsets.zero,
                                                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2.197.sp))),
                                                                                content: Container(
                                                                                  width: 183.076.sp,
                                                                                  height: 97.sp,
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
                                                                                      Container(
                                                                                        padding: EdgeInsets.only(
                                                                                          left: 3.sp,
                                                                                          right: 1.sp,
                                                                                          top: 2.sp,
                                                                                        ),
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
                                                                                                color: ccNeutral0,
                                                                                                alignment: Alignment.centerLeft,
                                                                                                child: Row(
                                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                  children: [
                                                                                                    SizedBox(
                                                                                                      width: 153.sp,
                                                                                                      child: Row(
                                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                        children: [
                                                                                                          Text(
                                                                                                            'Functions',
                                                                                                            style: GoogleFonts.sen(
                                                                                                              color: ccNutural550,
                                                                                                              fontSize: 5.714.sp,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ],
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
                                                                                      Container(
                                                                                        color: ccDanger100,
                                                                                        padding: EdgeInsets.only(
                                                                                          left: 3.sp,
                                                                                          right: 1.sp,
                                                                                        ),
                                                                                        child: Column(
                                                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: EdgeInsets.only(top: 4.83.sp),
                                                                                            ),
                                                                                            Row(
                                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                              children: [
                                                                                                SizedBox(
                                                                                                  // padding: EdgeInsets.only(left: 4.153.sp, right: 4.65.sp),
                                                                                                  width: 51.868.sp,
                                                                                                  height: 21.78868.sp,
                                                                                                  child: Column(
                                                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                    children: [
                                                                                                      SizedBox(
                                                                                                        width: double.infinity,
                                                                                                        child: Text(
                                                                                                          "Cash Shift",
                                                                                                          style: GoogleFonts.sen(
                                                                                                            fontSize: 4.395.sp,
                                                                                                            fontWeight: FontWeight.w400,
                                                                                                            color: ccDanger300,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(padding: EdgeInsets.only(bottom: 3.95.sp)),
                                                                                                      TextField(
                                                                                                        enabled: false,
                                                                                                        style: const TextStyle(color: ccNutural550),
                                                                                                        controller: TextEditingController(text: "Start Cash Shift"),
                                                                                                        decoration: InputDecoration(
                                                                                                          fillColor: ccNeutral0,
                                                                                                          filled: true,
                                                                                                          contentPadding: EdgeInsets.all(2.63.sp),
                                                                                                          // fillColor:
                                                                                                          //     ccBakground,
                                                                                                          border: OutlineInputBorder(
                                                                                                            borderRadius: BorderRadius.circular(1.0989.sp),
                                                                                                            borderSide: const BorderSide(
                                                                                                              color: ccPrimary300,
                                                                                                              width: 1,
                                                                                                            ),
                                                                                                          ),

                                                                                                          prefixIcon: Container(
                                                                                                              decoration:
                                                                                                                  // ignore: prefer_const_constructors
                                                                                                                  BoxDecoration(
                                                                                                                borderRadius: BorderRadius.only(
                                                                                                                  topLeft: Radius.circular(1.0989.sp),
                                                                                                                  bottomLeft: Radius.circular(1.0989.sp),
                                                                                                                ),
                                                                                                                border: Border.all(
                                                                                                                  color: ccPrimary300,
                                                                                                                  width: 1,
                                                                                                                ),
                                                                                                              ),
                                                                                                              clipBehavior: Clip.antiAlias,
                                                                                                              // color:
                                                                                                              //     ccNetural350,
                                                                                                              height: 10.109.sp,
                                                                                                              width: 11.86.sp,
                                                                                                              margin: EdgeInsets.only(right: 3.296.sp),
                                                                                                              // color:
                                                                                                              //     ccNeutral0, // background color
                                                                                                              child: Container(
                                                                                                                color: ccNeutral0,
                                                                                                                margin: EdgeInsets.only(left: 1),
                                                                                                                child: Center(
                                                                                                                  child: SvgPicture.asset(
                                                                                                                    "../assets/imges/key.svg",
                                                                                                                    height: 5.2747.sp,
                                                                                                                    width: 5.2747.sp,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              )),
                                                                                                          hintText: "Open Cashbox",
                                                                                                          hintStyle: TextStyle(
                                                                                                            color: ccPrimary300,
                                                                                                            fontSize: 3.956.sp,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(padding: EdgeInsets.only(bottom: 1.95.sp)),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                                cshorzSpace2,
                                                                                                Opacity(
                                                                                                  opacity: .5,
                                                                                                  child: SizedBox(
                                                                                                    width: 51.868.sp,
                                                                                                    height: 21.78868.sp,
                                                                                                    child: Column(
                                                                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                                                                      crossAxisAlignment: CrossAxisAlignment.end,
                                                                                                      children: [
                                                                                                        Padding(padding: EdgeInsets.only(bottom: 3.95.sp)),
                                                                                                        TextField(
                                                                                                          enabled: false,
                                                                                                          style: const TextStyle(color: ccNutural550),
                                                                                                          controller: TextEditingController(text: "Finish Cash Shift"),
                                                                                                          decoration: InputDecoration(
                                                                                                            fillColor: ccNeutral0,
                                                                                                            filled: true,
                                                                                                            contentPadding: EdgeInsets.all(2.63.sp),
                                                                                                            // fillColor:
                                                                                                            //     ccBakground,
                                                                                                            border: OutlineInputBorder(
                                                                                                              borderRadius: BorderRadius.circular(1.0989.sp),
                                                                                                              borderSide: const BorderSide(
                                                                                                                color: ccPrimary300,
                                                                                                                width: 1,
                                                                                                              ),
                                                                                                            ),

                                                                                                            prefixIcon: Container(
                                                                                                                decoration:
                                                                                                                    // ignore: prefer_const_constructors
                                                                                                                    BoxDecoration(
                                                                                                                  borderRadius: BorderRadius.only(
                                                                                                                    topLeft: Radius.circular(1.0989.sp),
                                                                                                                    bottomLeft: Radius.circular(1.0989.sp),
                                                                                                                  ),
                                                                                                                  border: Border.all(
                                                                                                                    color: ccPrimary300,
                                                                                                                    width: 1,
                                                                                                                  ),
                                                                                                                ),
                                                                                                                clipBehavior: Clip.antiAlias,
                                                                                                                // color:
                                                                                                                //     ccNetural350,
                                                                                                                height: 10.109.sp,
                                                                                                                width: 11.86.sp,
                                                                                                                margin: EdgeInsets.only(right: 3.296.sp),
                                                                                                                // color:
                                                                                                                //     ccNeutral0, // background color
                                                                                                                child: Container(
                                                                                                                  color: ccNeutral0,
                                                                                                                  margin: EdgeInsets.only(left: 1),
                                                                                                                  child: Center(
                                                                                                                    child: SvgPicture.asset(
                                                                                                                      "../assets/imges/key.svg",
                                                                                                                      height: 5.2747.sp,
                                                                                                                      width: 5.2747.sp,
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                )
                                                                                                                // icon
                                                                                                                ),
                                                                                                            hintText: "Finish Cash Shift",
                                                                                                            hintStyle: TextStyle(
                                                                                                              color: ccPrimary300,
                                                                                                              fontSize: 3.956.sp,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                        Padding(padding: EdgeInsets.only(bottom: 1.95.sp)),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                cshorzSpace2,
                                                                                                Opacity(
                                                                                                  opacity: .5,
                                                                                                  child: SizedBox(
                                                                                                    height: 21.78868.sp,
                                                                                                    width: 51.868.sp,
                                                                                                    child: Column(
                                                                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                                                                      crossAxisAlignment: CrossAxisAlignment.end,
                                                                                                      children: [
                                                                                                        Padding(padding: EdgeInsets.only(bottom: 3.95.sp)),
                                                                                                        TextField(
                                                                                                          enabled: false,
                                                                                                          style: const TextStyle(color: ccNutural550),
                                                                                                          controller: TextEditingController(text: "Add Transaction"),
                                                                                                          decoration: InputDecoration(
                                                                                                            fillColor: ccNeutral0,
                                                                                                            filled: true,
                                                                                                            contentPadding: EdgeInsets.all(2.63.sp),
                                                                                                            // fillColor:
                                                                                                            //     ccBakground,
                                                                                                            border: OutlineInputBorder(
                                                                                                              borderRadius: BorderRadius.circular(1.0989.sp),
                                                                                                              borderSide: const BorderSide(
                                                                                                                color: ccPrimary300,
                                                                                                                width: 1,
                                                                                                              ),
                                                                                                            ),

                                                                                                            prefixIcon: Container(
                                                                                                                decoration:
                                                                                                                    // ignore: prefer_const_constructors
                                                                                                                    BoxDecoration(
                                                                                                                  borderRadius: BorderRadius.only(
                                                                                                                    topLeft: Radius.circular(1.0989.sp),
                                                                                                                    bottomLeft: Radius.circular(1.0989.sp),
                                                                                                                  ),
                                                                                                                  border: Border.all(
                                                                                                                    color: ccPrimary300,
                                                                                                                    width: 1,
                                                                                                                  ),
                                                                                                                ),
                                                                                                                clipBehavior: Clip.antiAlias,
                                                                                                                // color:
                                                                                                                //     ccNetural350,
                                                                                                                height: 10.109.sp,
                                                                                                                width: 11.86.sp,
                                                                                                                margin: EdgeInsets.only(right: 3.296.sp),
                                                                                                                // color:
                                                                                                                //     ccNeutral0, // background color
                                                                                                                child: Container(
                                                                                                                  color: ccNeutral0,
                                                                                                                  margin: EdgeInsets.only(left: 1),
                                                                                                                  child: Center(
                                                                                                                    child: SvgPicture.asset(
                                                                                                                      "../assets/imges/plus-g.svg",
                                                                                                                      height: 5.2747.sp,
                                                                                                                      width: 5.2747.sp,
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                )
                                                                                                                // icon
                                                                                                                ),
                                                                                                            hintText: "Add Transaction",
                                                                                                            hintStyle: TextStyle(
                                                                                                              color: ccPrimary300,
                                                                                                              fontSize: 3.956.sp,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                        Padding(padding: EdgeInsets.only(bottom: 1.95.sp)),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                cshorzSpace1,
                                                                                              ],
                                                                                            ),
                                                                                            csvertSpace2,
                                                                                            Row(
                                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                              children: [
                                                                                                SizedBox(
                                                                                                  // padding: EdgeInsets.only(left: 4.153.sp, right: 4.65.sp),
                                                                                                  width: 51.868.sp,
                                                                                                  height: 21.78868.sp,
                                                                                                  child: Column(
                                                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                    children: [
                                                                                                      SizedBox(
                                                                                                        width: double.infinity,
                                                                                                        child: Text(
                                                                                                          "Equipment",
                                                                                                          style: GoogleFonts.sen(
                                                                                                            fontSize: 4.395.sp,
                                                                                                            fontWeight: FontWeight.w400,
                                                                                                            color: ccDanger300,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(padding: EdgeInsets.only(bottom: 3.95.sp)),
                                                                                                      TextField(
                                                                                                        enabled: false,
                                                                                                        style: const TextStyle(color: ccNutural550),
                                                                                                        controller: TextEditingController(text: "Open Cashbox"),
                                                                                                        decoration: InputDecoration(
                                                                                                          fillColor: ccNeutral0,
                                                                                                          filled: true,
                                                                                                          contentPadding: EdgeInsets.all(2.63.sp),
                                                                                                          // fillColor:
                                                                                                          //     ccBakground,
                                                                                                          border: OutlineInputBorder(
                                                                                                            borderRadius: BorderRadius.circular(1.0989.sp),
                                                                                                            borderSide: const BorderSide(
                                                                                                              color: ccPrimary300,
                                                                                                              width: 1,
                                                                                                            ),
                                                                                                          ),

                                                                                                          prefixIcon: Container(
                                                                                                              decoration:
                                                                                                                  // ignore: prefer_const_constructors
                                                                                                                  BoxDecoration(
                                                                                                                borderRadius: BorderRadius.only(
                                                                                                                  topLeft: Radius.circular(1.0989.sp),
                                                                                                                  bottomLeft: Radius.circular(1.0989.sp),
                                                                                                                ),
                                                                                                                border: Border.all(
                                                                                                                  color: ccPrimary300,
                                                                                                                  width: 1,
                                                                                                                ),
                                                                                                              ),
                                                                                                              clipBehavior: Clip.antiAlias,
                                                                                                              // color:
                                                                                                              //     ccNetural350,
                                                                                                              height: 10.109.sp,
                                                                                                              width: 11.86.sp,
                                                                                                              margin: EdgeInsets.only(right: 3.296.sp),
                                                                                                              // color:
                                                                                                              //     ccNeutral0, // background color
                                                                                                              child: Container(
                                                                                                                color: ccNeutral0,
                                                                                                                margin: EdgeInsets.only(left: 1),
                                                                                                                child: Center(
                                                                                                                  child: SvgPicture.asset(
                                                                                                                    "../assets/imges/keyboard.svg",
                                                                                                                    height: 5.2747.sp,
                                                                                                                    width: 5.2747.sp,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              )),
                                                                                                          hintText: "Open Cashbox",
                                                                                                          hintStyle: TextStyle(
                                                                                                            color: ccPrimary300,
                                                                                                            fontSize: 3.956.sp,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(padding: EdgeInsets.only(bottom: 1.95.sp)),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            csvertSpace2,
                                                                                            Row(
                                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                              children: [
                                                                                                SizedBox(
                                                                                                  // padding: EdgeInsets.only(left: 4.153.sp, right: 4.65.sp),
                                                                                                  width: 51.868.sp,
                                                                                                  height: 21.78868.sp,
                                                                                                  child: Column(
                                                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                    children: [
                                                                                                      SizedBox(
                                                                                                        width: double.infinity,
                                                                                                        child: Text(
                                                                                                          "Others",
                                                                                                          style: GoogleFonts.sen(
                                                                                                            fontSize: 4.395.sp,
                                                                                                            fontWeight: FontWeight.w400,
                                                                                                            color: ccDanger300,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(padding: EdgeInsets.only(bottom: 3.95.sp)),
                                                                                                      TextField(
                                                                                                        enabled: false,
                                                                                                        style: const TextStyle(color: ccNutural550),
                                                                                                        controller: TextEditingController(text: "Creat a Report"),
                                                                                                        decoration: InputDecoration(
                                                                                                          fillColor: ccNeutral0,
                                                                                                          filled: true,
                                                                                                          contentPadding: EdgeInsets.all(2.63.sp),
                                                                                                          // fillColor:
                                                                                                          //     ccBakground,
                                                                                                          border: OutlineInputBorder(
                                                                                                            borderRadius: BorderRadius.circular(1.0989.sp),
                                                                                                            borderSide: const BorderSide(
                                                                                                              color: ccPrimary300,
                                                                                                              width: 1,
                                                                                                            ),
                                                                                                          ),

                                                                                                          prefixIcon: Container(
                                                                                                              decoration:
                                                                                                                  // ignore: prefer_const_constructors
                                                                                                                  BoxDecoration(
                                                                                                                borderRadius: BorderRadius.only(
                                                                                                                  topLeft: Radius.circular(1.0989.sp),
                                                                                                                  bottomLeft: Radius.circular(1.0989.sp),
                                                                                                                ),
                                                                                                                border: Border.all(
                                                                                                                  color: ccPrimary300,
                                                                                                                  width: 1,
                                                                                                                ),
                                                                                                              ),
                                                                                                              clipBehavior: Clip.antiAlias,
                                                                                                              // color:
                                                                                                              //     ccNetural350,
                                                                                                              height: 10.109.sp,
                                                                                                              width: 11.86.sp,
                                                                                                              margin: EdgeInsets.only(right: 3.296.sp),
                                                                                                              // color:
                                                                                                              //     ccNeutral0, // background color
                                                                                                              child: Container(
                                                                                                                color: ccNeutral0,
                                                                                                                margin: EdgeInsets.only(left: 1),
                                                                                                                child: Center(
                                                                                                                  child: SvgPicture.asset(
                                                                                                                    "../assets/imges/keyboard.svg",
                                                                                                                    height: 5.2747.sp,
                                                                                                                    width: 5.2747.sp,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              )),
                                                                                                          hintText: "Creat a Report",
                                                                                                          hintStyle: TextStyle(
                                                                                                            color: ccPrimary300,
                                                                                                            fontSize: 3.956.sp,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(padding: EdgeInsets.only(bottom: 1.95.sp)),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                                cshorzSpace8,
                                                                                                SizedBox(
                                                                                                  width: 51.868.sp,
                                                                                                  height: 21.78868.sp,
                                                                                                  child: Column(
                                                                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.end,
                                                                                                    children: [
                                                                                                      Padding(padding: EdgeInsets.only(bottom: 3.95.sp)),
                                                                                                      TextField(
                                                                                                        enabled: false,
                                                                                                        style: const TextStyle(color: ccNutural550),
                                                                                                        controller: TextEditingController(text: "Sign Out"),
                                                                                                        decoration: InputDecoration(
                                                                                                          fillColor: ccNeutral0,
                                                                                                          filled: true,
                                                                                                          contentPadding: EdgeInsets.all(2.63.sp),
                                                                                                          // fillColor:
                                                                                                          //     ccBakground,
                                                                                                          border: OutlineInputBorder(
                                                                                                            borderRadius: BorderRadius.circular(1.0989.sp),
                                                                                                            borderSide: const BorderSide(
                                                                                                              color: ccPrimary300,
                                                                                                              width: 1,
                                                                                                            ),
                                                                                                          ),

                                                                                                          prefixIcon: Container(
                                                                                                              decoration:
                                                                                                                  // ignore: prefer_const_constructors
                                                                                                                  BoxDecoration(
                                                                                                                borderRadius: BorderRadius.only(
                                                                                                                  topLeft: Radius.circular(1.0989.sp),
                                                                                                                  bottomLeft: Radius.circular(1.0989.sp),
                                                                                                                ),
                                                                                                                border: Border.all(
                                                                                                                  color: ccPrimary300,
                                                                                                                  width: 1,
                                                                                                                ),
                                                                                                              ),
                                                                                                              clipBehavior: Clip.antiAlias,
                                                                                                              // color:
                                                                                                              //     ccNetural350,
                                                                                                              height: 10.109.sp,
                                                                                                              width: 11.86.sp,
                                                                                                              margin: EdgeInsets.only(right: 3.296.sp),
                                                                                                              // color:
                                                                                                              //     ccNeutral0, // background color
                                                                                                              child: Container(
                                                                                                                color: ccNeutral0,
                                                                                                                margin: EdgeInsets.only(left: 1),
                                                                                                                child: Center(
                                                                                                                  child: SvgPicture.asset(
                                                                                                                    "../assets/imges/key.svg",
                                                                                                                    height: 5.2747.sp,
                                                                                                                    width: 5.2747.sp,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              )
                                                                                                              // icon
                                                                                                              ),
                                                                                                          hintText: "Sign Out",
                                                                                                          hintStyle: TextStyle(
                                                                                                            color: ccPrimary300,
                                                                                                            fontSize: 3.956.sp,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(padding: EdgeInsets.only(bottom: 1.95.sp)),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                                cshorzSpace1,
                                                                                              ],
                                                                                            ),
                                                                                            csvertSpace8,
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              140.sp,
                                                                          child:
                                                                              Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children: [
                                                                              Text(
                                                                                'Add Transaction',
                                                                                style: GoogleFonts.sen(
                                                                                  color: ccNutural550,
                                                                                  fontSize: 5.714.sp,
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  height:
                                                                      10.62.sp,
                                                                  width: 10.sp,
                                                                  child:
                                                                      ElevatedButton(
                                                                    onPressed:
                                                                        () {
                                                                      Navigator.pop(
                                                                          context);
                                                                    },
                                                                    style: ElevatedButton
                                                                        .styleFrom(
                                                                      backgroundColor:
                                                                          ccNeutral0,
                                                                      elevation:
                                                                          0,
                                                                      shadowColor:
                                                                          Colors
                                                                              .transparent,
                                                                    ),
                                                                    child: SvgPicture
                                                                        .asset(
                                                                      "../assets/imges/close.svg",
                                                                      height:
                                                                          4.615
                                                                              .sp,
                                                                      width: 4.615
                                                                          .sp,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            color: ccDanger100,
                                                            padding:
                                                                EdgeInsets.only(
                                                              left: 5.sp,
                                                              right: 1.sp,
                                                            ),
                                                            child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsets.only(
                                                                      top: 4.83
                                                                          .sp),
                                                                ),
                                                                csvertSpace4,
                                                                Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color:
                                                                        ccNeutral0,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            2.1978.sp),
                                                                    border: Border.all(
                                                                        color:
                                                                            ccPrimary300),
                                                                  ),
                                                                  child:
                                                                      ToggleButtons(
                                                                    isSelected:
                                                                        isExpanse,
                                                                    selectedColor:
                                                                        ccDanger300,
                                                                    color:
                                                                        ccNutural550,
                                                                    fillColor:
                                                                        ccNeutral0,
                                                                    selectedBorderColor:
                                                                        ccDanger300,
                                                                    borderWidth:
                                                                        1,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            2.1978.sp),
                                                                    children: <
                                                                        Widget>[
                                                                      Container(
                                                                        width: 55.50
                                                                            .sp,
                                                                        padding:
                                                                            EdgeInsets.symmetric(horizontal: 4.75.sp),
                                                                        child:
                                                                            Center(
                                                                          child:
                                                                              Text(
                                                                            'Expense',
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              fontSize: 5.71428.sp,
                                                                              fontWeight: FontWeight.w400,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      InkWell(
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                55.50.sp,
                                                                            padding:
                                                                                EdgeInsets.symmetric(horizontal: 2.75.sp),
                                                                            child:
                                                                                Center(
                                                                              child: Text(
                                                                                'Income',
                                                                                style: GoogleFonts.sen(
                                                                                  fontSize: 5.71428.sp,
                                                                                  fontWeight: FontWeight.w400,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          onTap:
                                                                              () {
                                                                            Navigator.pop(context);
                                                                            showDialog(
                                                                              context: context,
                                                                              barrierDismissible: false,
                                                                              builder: (_) => AlertDialog(
                                                                                contentPadding: EdgeInsets.zero,
                                                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2.197.sp))),
                                                                                content: Container(
                                                                                  width: 176.923.sp,
                                                                                  height: 70.40.sp,
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
                                                                                      Container(
                                                                                        padding: EdgeInsets.only(
                                                                                          left: 3.sp,
                                                                                          right: 1.sp,
                                                                                          top: 2.sp,
                                                                                        ),
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
                                                                                                color: ccNeutral0,
                                                                                                alignment: Alignment.centerLeft,
                                                                                                child: Row(
                                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                  children: [
                                                                                                    cshorzSpace2,
                                                                                                    InkWell(
                                                                                                      child: Text(
                                                                                                        'Functions',
                                                                                                        style: GoogleFonts.sen(
                                                                                                          color: ccDanger300,
                                                                                                          fontSize: 4.3956.sp,
                                                                                                        ),
                                                                                                      ),
                                                                                                      onTap: () {
                                                                                                        Navigator.pop(context);
                                                                                                        showDialog(
                                                                                                          context: context,
                                                                                                          barrierDismissible: false,
                                                                                                          builder: (_) => AlertDialog(
                                                                                                            contentPadding: EdgeInsets.zero,
                                                                                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2.197.sp))),
                                                                                                            content: Container(
                                                                                                              width: 183.076.sp,
                                                                                                              height: 97.sp,
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
                                                                                                                  Container(
                                                                                                                    padding: EdgeInsets.only(
                                                                                                                      left: 3.sp,
                                                                                                                      right: 1.sp,
                                                                                                                      top: 2.sp,
                                                                                                                    ),
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
                                                                                                                            color: ccNeutral0,
                                                                                                                            alignment: Alignment.centerLeft,
                                                                                                                            child: Row(
                                                                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                                              children: [
                                                                                                                                SizedBox(
                                                                                                                                  width: 153.sp,
                                                                                                                                  child: Row(
                                                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                                                    children: [
                                                                                                                                      Text(
                                                                                                                                        'Functions',
                                                                                                                                        style: GoogleFonts.sen(
                                                                                                                                          color: ccNutural550,
                                                                                                                                          fontSize: 5.714.sp,
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                    ],
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
                                                                                                                  Container(
                                                                                                                    color: ccDanger100,
                                                                                                                    padding: EdgeInsets.only(
                                                                                                                      left: 3.sp,
                                                                                                                      right: 1.sp,
                                                                                                                    ),
                                                                                                                    child: Column(
                                                                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                      children: [
                                                                                                                        Padding(
                                                                                                                          padding: EdgeInsets.only(top: 4.83.sp),
                                                                                                                        ),
                                                                                                                        Row(
                                                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                          children: [
                                                                                                                            SizedBox(
                                                                                                                              // padding: EdgeInsets.only(left: 4.153.sp, right: 4.65.sp),
                                                                                                                              width: 51.868.sp,
                                                                                                                              height: 21.78868.sp,
                                                                                                                              child: Column(
                                                                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                                children: [
                                                                                                                                  SizedBox(
                                                                                                                                    width: double.infinity,
                                                                                                                                    child: Text(
                                                                                                                                      "Cash Shift",
                                                                                                                                      style: GoogleFonts.sen(
                                                                                                                                        fontSize: 4.395.sp,
                                                                                                                                        fontWeight: FontWeight.w400,
                                                                                                                                        color: ccDanger300,
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                  Padding(padding: EdgeInsets.only(bottom: 3.95.sp)),
                                                                                                                                  TextField(
                                                                                                                                    enabled: false,
                                                                                                                                    style: const TextStyle(color: ccNutural550),
                                                                                                                                    controller: TextEditingController(text: "Start Cash Shift"),
                                                                                                                                    decoration: InputDecoration(
                                                                                                                                      fillColor: ccNeutral0,
                                                                                                                                      filled: true,
                                                                                                                                      contentPadding: EdgeInsets.all(2.63.sp),
                                                                                                                                      // fillColor:
                                                                                                                                      //     ccBakground,
                                                                                                                                      border: OutlineInputBorder(
                                                                                                                                        borderRadius: BorderRadius.circular(1.0989.sp),
                                                                                                                                        borderSide: const BorderSide(
                                                                                                                                          color: ccPrimary300,
                                                                                                                                          width: 1,
                                                                                                                                        ),
                                                                                                                                      ),

                                                                                                                                      prefixIcon: Container(
                                                                                                                                          decoration:
                                                                                                                                              // ignore: prefer_const_constructors
                                                                                                                                              BoxDecoration(
                                                                                                                                            borderRadius: BorderRadius.only(
                                                                                                                                              topLeft: Radius.circular(1.0989.sp),
                                                                                                                                              bottomLeft: Radius.circular(1.0989.sp),
                                                                                                                                            ),
                                                                                                                                            border: Border.all(
                                                                                                                                              color: ccPrimary300,
                                                                                                                                              width: 1,
                                                                                                                                            ),
                                                                                                                                          ),
                                                                                                                                          clipBehavior: Clip.antiAlias,
                                                                                                                                          // color:
                                                                                                                                          //     ccNetural350,
                                                                                                                                          height: 10.109.sp,
                                                                                                                                          width: 11.86.sp,
                                                                                                                                          margin: EdgeInsets.only(right: 3.296.sp),
                                                                                                                                          // color:
                                                                                                                                          //     ccNeutral0, // background color
                                                                                                                                          child: Container(
                                                                                                                                            color: ccNeutral0,
                                                                                                                                            margin: EdgeInsets.only(left: 1),
                                                                                                                                            child: Center(
                                                                                                                                              child: SvgPicture.asset(
                                                                                                                                                "../assets/imges/key.svg",
                                                                                                                                                height: 5.2747.sp,
                                                                                                                                                width: 5.2747.sp,
                                                                                                                                              ),
                                                                                                                                            ),
                                                                                                                                          )),
                                                                                                                                      hintText: "Open Cashbox",
                                                                                                                                      hintStyle: TextStyle(
                                                                                                                                        color: ccPrimary300,
                                                                                                                                        fontSize: 3.956.sp,
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                  Padding(padding: EdgeInsets.only(bottom: 1.95.sp)),
                                                                                                                                ],
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                            cshorzSpace2,
                                                                                                                            Opacity(
                                                                                                                              opacity: .5,
                                                                                                                              child: SizedBox(
                                                                                                                                width: 51.868.sp,
                                                                                                                                height: 21.78868.sp,
                                                                                                                                child: Column(
                                                                                                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                                                                                                  crossAxisAlignment: CrossAxisAlignment.end,
                                                                                                                                  children: [
                                                                                                                                    Padding(padding: EdgeInsets.only(bottom: 3.95.sp)),
                                                                                                                                    TextField(
                                                                                                                                      enabled: false,
                                                                                                                                      style: const TextStyle(color: ccNutural550),
                                                                                                                                      controller: TextEditingController(text: "Finish Cash Shift"),
                                                                                                                                      decoration: InputDecoration(
                                                                                                                                        fillColor: ccNeutral0,
                                                                                                                                        filled: true,
                                                                                                                                        contentPadding: EdgeInsets.all(2.63.sp),
                                                                                                                                        // fillColor:
                                                                                                                                        //     ccBakground,
                                                                                                                                        border: OutlineInputBorder(
                                                                                                                                          borderRadius: BorderRadius.circular(1.0989.sp),
                                                                                                                                          borderSide: const BorderSide(
                                                                                                                                            color: ccPrimary300,
                                                                                                                                            width: 1,
                                                                                                                                          ),
                                                                                                                                        ),

                                                                                                                                        prefixIcon: Container(
                                                                                                                                            decoration:
                                                                                                                                                // ignore: prefer_const_constructors
                                                                                                                                                BoxDecoration(
                                                                                                                                              borderRadius: BorderRadius.only(
                                                                                                                                                topLeft: Radius.circular(1.0989.sp),
                                                                                                                                                bottomLeft: Radius.circular(1.0989.sp),
                                                                                                                                              ),
                                                                                                                                              border: Border.all(
                                                                                                                                                color: ccPrimary300,
                                                                                                                                                width: 1,
                                                                                                                                              ),
                                                                                                                                            ),
                                                                                                                                            clipBehavior: Clip.antiAlias,
                                                                                                                                            // color:
                                                                                                                                            //     ccNetural350,
                                                                                                                                            height: 10.109.sp,
                                                                                                                                            width: 11.86.sp,
                                                                                                                                            margin: EdgeInsets.only(right: 3.296.sp),
                                                                                                                                            // color:
                                                                                                                                            //     ccNeutral0, // background color
                                                                                                                                            child: Container(
                                                                                                                                              color: ccNeutral0,
                                                                                                                                              margin: EdgeInsets.only(left: 1),
                                                                                                                                              child: Center(
                                                                                                                                                child: SvgPicture.asset(
                                                                                                                                                  "../assets/imges/key.svg",
                                                                                                                                                  height: 5.2747.sp,
                                                                                                                                                  width: 5.2747.sp,
                                                                                                                                                ),
                                                                                                                                              ),
                                                                                                                                            )
                                                                                                                                            // icon
                                                                                                                                            ),
                                                                                                                                        hintText: "Finish Cash Shift",
                                                                                                                                        hintStyle: TextStyle(
                                                                                                                                          color: ccPrimary300,
                                                                                                                                          fontSize: 3.956.sp,
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                    Padding(padding: EdgeInsets.only(bottom: 1.95.sp)),
                                                                                                                                  ],
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                            cshorzSpace2,
                                                                                                                            Opacity(
                                                                                                                              opacity: .5,
                                                                                                                              child: SizedBox(
                                                                                                                                height: 21.78868.sp,
                                                                                                                                width: 51.868.sp,
                                                                                                                                child: Column(
                                                                                                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                                                                                                  crossAxisAlignment: CrossAxisAlignment.end,
                                                                                                                                  children: [
                                                                                                                                    Padding(padding: EdgeInsets.only(bottom: 3.95.sp)),
                                                                                                                                    TextField(
                                                                                                                                      enabled: false,
                                                                                                                                      style: const TextStyle(color: ccNutural550),
                                                                                                                                      controller: TextEditingController(text: "Add Transaction"),
                                                                                                                                      decoration: InputDecoration(
                                                                                                                                        fillColor: ccNeutral0,
                                                                                                                                        filled: true,
                                                                                                                                        contentPadding: EdgeInsets.all(2.63.sp),
                                                                                                                                        // fillColor:
                                                                                                                                        //     ccBakground,
                                                                                                                                        border: OutlineInputBorder(
                                                                                                                                          borderRadius: BorderRadius.circular(1.0989.sp),
                                                                                                                                          borderSide: const BorderSide(
                                                                                                                                            color: ccPrimary300,
                                                                                                                                            width: 1,
                                                                                                                                          ),
                                                                                                                                        ),

                                                                                                                                        prefixIcon: Container(
                                                                                                                                            decoration:
                                                                                                                                                // ignore: prefer_const_constructors
                                                                                                                                                BoxDecoration(
                                                                                                                                              borderRadius: BorderRadius.only(
                                                                                                                                                topLeft: Radius.circular(1.0989.sp),
                                                                                                                                                bottomLeft: Radius.circular(1.0989.sp),
                                                                                                                                              ),
                                                                                                                                              border: Border.all(
                                                                                                                                                color: ccPrimary300,
                                                                                                                                                width: 1,
                                                                                                                                              ),
                                                                                                                                            ),
                                                                                                                                            clipBehavior: Clip.antiAlias,
                                                                                                                                            // color:
                                                                                                                                            //     ccNetural350,
                                                                                                                                            height: 10.109.sp,
                                                                                                                                            width: 11.86.sp,
                                                                                                                                            margin: EdgeInsets.only(right: 3.296.sp),
                                                                                                                                            // color:
                                                                                                                                            //     ccNeutral0, // background color
                                                                                                                                            child: Container(
                                                                                                                                              color: ccNeutral0,
                                                                                                                                              margin: EdgeInsets.only(left: 1),
                                                                                                                                              child: Center(
                                                                                                                                                child: SvgPicture.asset(
                                                                                                                                                  "../assets/imges/plus-g.svg",
                                                                                                                                                  height: 5.2747.sp,
                                                                                                                                                  width: 5.2747.sp,
                                                                                                                                                ),
                                                                                                                                              ),
                                                                                                                                            )
                                                                                                                                            // icon
                                                                                                                                            ),
                                                                                                                                        hintText: "Add Transaction",
                                                                                                                                        hintStyle: TextStyle(
                                                                                                                                          color: ccPrimary300,
                                                                                                                                          fontSize: 3.956.sp,
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                    Padding(padding: EdgeInsets.only(bottom: 1.95.sp)),
                                                                                                                                  ],
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                            cshorzSpace1,
                                                                                                                          ],
                                                                                                                        ),
                                                                                                                        csvertSpace2,
                                                                                                                        Row(
                                                                                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                          children: [
                                                                                                                            SizedBox(
                                                                                                                              // padding: EdgeInsets.only(left: 4.153.sp, right: 4.65.sp),
                                                                                                                              width: 51.868.sp,
                                                                                                                              height: 21.78868.sp,
                                                                                                                              child: Column(
                                                                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                                children: [
                                                                                                                                  SizedBox(
                                                                                                                                    width: double.infinity,
                                                                                                                                    child: Text(
                                                                                                                                      "Equipment",
                                                                                                                                      style: GoogleFonts.sen(
                                                                                                                                        fontSize: 4.395.sp,
                                                                                                                                        fontWeight: FontWeight.w400,
                                                                                                                                        color: ccDanger300,
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                  Padding(padding: EdgeInsets.only(bottom: 3.95.sp)),
                                                                                                                                  TextField(
                                                                                                                                    enabled: false,
                                                                                                                                    style: const TextStyle(color: ccNutural550),
                                                                                                                                    controller: TextEditingController(text: "Open Cashbox"),
                                                                                                                                    decoration: InputDecoration(
                                                                                                                                      fillColor: ccNeutral0,
                                                                                                                                      filled: true,
                                                                                                                                      contentPadding: EdgeInsets.all(2.63.sp),
                                                                                                                                      // fillColor:
                                                                                                                                      //     ccBakground,
                                                                                                                                      border: OutlineInputBorder(
                                                                                                                                        borderRadius: BorderRadius.circular(1.0989.sp),
                                                                                                                                        borderSide: const BorderSide(
                                                                                                                                          color: ccPrimary300,
                                                                                                                                          width: 1,
                                                                                                                                        ),
                                                                                                                                      ),

                                                                                                                                      prefixIcon: Container(
                                                                                                                                          decoration:
                                                                                                                                              // ignore: prefer_const_constructors
                                                                                                                                              BoxDecoration(
                                                                                                                                            borderRadius: BorderRadius.only(
                                                                                                                                              topLeft: Radius.circular(1.0989.sp),
                                                                                                                                              bottomLeft: Radius.circular(1.0989.sp),
                                                                                                                                            ),
                                                                                                                                            border: Border.all(
                                                                                                                                              color: ccPrimary300,
                                                                                                                                              width: 1,
                                                                                                                                            ),
                                                                                                                                          ),
                                                                                                                                          clipBehavior: Clip.antiAlias,
                                                                                                                                          // color:
                                                                                                                                          //     ccNetural350,
                                                                                                                                          height: 10.109.sp,
                                                                                                                                          width: 11.86.sp,
                                                                                                                                          margin: EdgeInsets.only(right: 3.296.sp),
                                                                                                                                          // color:
                                                                                                                                          //     ccNeutral0, // background color
                                                                                                                                          child: Container(
                                                                                                                                            color: ccNeutral0,
                                                                                                                                            margin: EdgeInsets.only(left: 1),
                                                                                                                                            child: Center(
                                                                                                                                              child: SvgPicture.asset(
                                                                                                                                                "../assets/imges/keyboard.svg",
                                                                                                                                                height: 5.2747.sp,
                                                                                                                                                width: 5.2747.sp,
                                                                                                                                              ),
                                                                                                                                            ),
                                                                                                                                          )),
                                                                                                                                      hintText: "Open Cashbox",
                                                                                                                                      hintStyle: TextStyle(
                                                                                                                                        color: ccPrimary300,
                                                                                                                                        fontSize: 3.956.sp,
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                  Padding(padding: EdgeInsets.only(bottom: 1.95.sp)),
                                                                                                                                ],
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                          ],
                                                                                                                        ),
                                                                                                                        csvertSpace2,
                                                                                                                        Row(
                                                                                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                          children: [
                                                                                                                            SizedBox(
                                                                                                                              // padding: EdgeInsets.only(left: 4.153.sp, right: 4.65.sp),
                                                                                                                              width: 51.868.sp,
                                                                                                                              height: 21.78868.sp,
                                                                                                                              child: Column(
                                                                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                                children: [
                                                                                                                                  SizedBox(
                                                                                                                                    width: double.infinity,
                                                                                                                                    child: Text(
                                                                                                                                      "Others",
                                                                                                                                      style: GoogleFonts.sen(
                                                                                                                                        fontSize: 4.395.sp,
                                                                                                                                        fontWeight: FontWeight.w400,
                                                                                                                                        color: ccDanger300,
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                  Padding(padding: EdgeInsets.only(bottom: 3.95.sp)),
                                                                                                                                  TextField(
                                                                                                                                    enabled: false,
                                                                                                                                    style: const TextStyle(color: ccNutural550),
                                                                                                                                    controller: TextEditingController(text: "Creat a Report"),
                                                                                                                                    decoration: InputDecoration(
                                                                                                                                      fillColor: ccNeutral0,
                                                                                                                                      filled: true,
                                                                                                                                      contentPadding: EdgeInsets.all(2.63.sp),
                                                                                                                                      // fillColor:
                                                                                                                                      //     ccBakground,
                                                                                                                                      border: OutlineInputBorder(
                                                                                                                                        borderRadius: BorderRadius.circular(1.0989.sp),
                                                                                                                                        borderSide: const BorderSide(
                                                                                                                                          color: ccPrimary300,
                                                                                                                                          width: 1,
                                                                                                                                        ),
                                                                                                                                      ),

                                                                                                                                      prefixIcon: Container(
                                                                                                                                          decoration:
                                                                                                                                              // ignore: prefer_const_constructors
                                                                                                                                              BoxDecoration(
                                                                                                                                            borderRadius: BorderRadius.only(
                                                                                                                                              topLeft: Radius.circular(1.0989.sp),
                                                                                                                                              bottomLeft: Radius.circular(1.0989.sp),
                                                                                                                                            ),
                                                                                                                                            border: Border.all(
                                                                                                                                              color: ccPrimary300,
                                                                                                                                              width: 1,
                                                                                                                                            ),
                                                                                                                                          ),
                                                                                                                                          clipBehavior: Clip.antiAlias,
                                                                                                                                          // color:
                                                                                                                                          //     ccNetural350,
                                                                                                                                          height: 10.109.sp,
                                                                                                                                          width: 11.86.sp,
                                                                                                                                          margin: EdgeInsets.only(right: 3.296.sp),
                                                                                                                                          // color:
                                                                                                                                          //     ccNeutral0, // background color
                                                                                                                                          child: Container(
                                                                                                                                            color: ccNeutral0,
                                                                                                                                            margin: EdgeInsets.only(left: 1),
                                                                                                                                            child: Center(
                                                                                                                                              child: SvgPicture.asset(
                                                                                                                                                "../assets/imges/keyboard.svg",
                                                                                                                                                height: 5.2747.sp,
                                                                                                                                                width: 5.2747.sp,
                                                                                                                                              ),
                                                                                                                                            ),
                                                                                                                                          )),
                                                                                                                                      hintText: "Creat a Report",
                                                                                                                                      hintStyle: TextStyle(
                                                                                                                                        color: ccPrimary300,
                                                                                                                                        fontSize: 3.956.sp,
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                  Padding(padding: EdgeInsets.only(bottom: 1.95.sp)),
                                                                                                                                ],
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                            cshorzSpace8,
                                                                                                                            SizedBox(
                                                                                                                              width: 51.868.sp,
                                                                                                                              height: 21.78868.sp,
                                                                                                                              child: Column(
                                                                                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                                                                                crossAxisAlignment: CrossAxisAlignment.end,
                                                                                                                                children: [
                                                                                                                                  Padding(padding: EdgeInsets.only(bottom: 3.95.sp)),
                                                                                                                                  TextField(
                                                                                                                                    enabled: false,
                                                                                                                                    style: const TextStyle(color: ccNutural550),
                                                                                                                                    controller: TextEditingController(text: "Sign Out"),
                                                                                                                                    decoration: InputDecoration(
                                                                                                                                      fillColor: ccNeutral0,
                                                                                                                                      filled: true,
                                                                                                                                      contentPadding: EdgeInsets.all(2.63.sp),
                                                                                                                                      // fillColor:
                                                                                                                                      //     ccBakground,
                                                                                                                                      border: OutlineInputBorder(
                                                                                                                                        borderRadius: BorderRadius.circular(1.0989.sp),
                                                                                                                                        borderSide: const BorderSide(
                                                                                                                                          color: ccPrimary300,
                                                                                                                                          width: 1,
                                                                                                                                        ),
                                                                                                                                      ),

                                                                                                                                      prefixIcon: Container(
                                                                                                                                          decoration:
                                                                                                                                              // ignore: prefer_const_constructors
                                                                                                                                              BoxDecoration(
                                                                                                                                            borderRadius: BorderRadius.only(
                                                                                                                                              topLeft: Radius.circular(1.0989.sp),
                                                                                                                                              bottomLeft: Radius.circular(1.0989.sp),
                                                                                                                                            ),
                                                                                                                                            border: Border.all(
                                                                                                                                              color: ccPrimary300,
                                                                                                                                              width: 1,
                                                                                                                                            ),
                                                                                                                                          ),
                                                                                                                                          clipBehavior: Clip.antiAlias,
                                                                                                                                          // color:
                                                                                                                                          //     ccNetural350,
                                                                                                                                          height: 10.109.sp,
                                                                                                                                          width: 11.86.sp,
                                                                                                                                          margin: EdgeInsets.only(right: 3.296.sp),
                                                                                                                                          // color:
                                                                                                                                          //     ccNeutral0, // background color
                                                                                                                                          child: Container(
                                                                                                                                            color: ccNeutral0,
                                                                                                                                            margin: EdgeInsets.only(left: 1),
                                                                                                                                            child: Center(
                                                                                                                                              child: SvgPicture.asset(
                                                                                                                                                "../assets/imges/key.svg",
                                                                                                                                                height: 5.2747.sp,
                                                                                                                                                width: 5.2747.sp,
                                                                                                                                              ),
                                                                                                                                            ),
                                                                                                                                          )
                                                                                                                                          // icon
                                                                                                                                          ),
                                                                                                                                      hintText: "Sign Out",
                                                                                                                                      hintStyle: TextStyle(
                                                                                                                                        color: ccPrimary300,
                                                                                                                                        fontSize: 3.956.sp,
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                  Padding(padding: EdgeInsets.only(bottom: 1.95.sp)),
                                                                                                                                ],
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                            cshorzSpace1,
                                                                                                                          ],
                                                                                                                        ),
                                                                                                                        csvertSpace8,
                                                                                                                      ],
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ],
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        );
                                                                                                      },
                                                                                                    ),
                                                                                                    SizedBox(
                                                                                                      width: 140.sp,
                                                                                                      child: Row(
                                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                        children: [
                                                                                                          Text(
                                                                                                            'Add Transaction',
                                                                                                            style: GoogleFonts.sen(
                                                                                                              color: ccNutural550,
                                                                                                              fontSize: 5.714.sp,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ],
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
                                                                                      Container(
                                                                                        color: ccDanger100,
                                                                                        padding: EdgeInsets.only(
                                                                                          left: 5.sp,
                                                                                          right: 1.sp,
                                                                                        ),
                                                                                        child: Column(
                                                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: EdgeInsets.only(top: 4.83.sp),
                                                                                            ),
                                                                                            csvertSpace4,
                                                                                            Container(
                                                                                              decoration: BoxDecoration(
                                                                                                color: ccNeutral0,
                                                                                                borderRadius: BorderRadius.circular(2.1978.sp),
                                                                                                border: Border.all(color: ccPrimary300),
                                                                                              ),
                                                                                              child: ToggleButtons(
                                                                                                isSelected: isIncome,
                                                                                                selectedColor: ccDanger300,
                                                                                                color: ccNutural550,
                                                                                                fillColor: ccNeutral0,
                                                                                                selectedBorderColor: ccDanger300,
                                                                                                borderWidth: 1,
                                                                                                borderRadius: BorderRadius.circular(2.1978.sp),
                                                                                                children: <Widget>[
                                                                                                  Container(
                                                                                                    width: 55.50.sp,
                                                                                                    padding: EdgeInsets.symmetric(horizontal: 4.75.sp),
                                                                                                    child: Center(
                                                                                                      child: Text(
                                                                                                        'Expense',
                                                                                                        style: GoogleFonts.sen(
                                                                                                          fontSize: 5.71428.sp,
                                                                                                          fontWeight: FontWeight.w400,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  Container(
                                                                                                    width: 55.50.sp,
                                                                                                    padding: EdgeInsets.symmetric(horizontal: 2.75.sp),
                                                                                                    child: Center(
                                                                                                      child: Text(
                                                                                                        'Income',
                                                                                                        style: GoogleFonts.sen(
                                                                                                          fontSize: 5.71428.sp,
                                                                                                          fontWeight: FontWeight.w400,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  Container(
                                                                                                    width: 55.50.sp,
                                                                                                    padding: EdgeInsets.symmetric(horizontal: 2.75.sp),
                                                                                                    child: Center(
                                                                                                      child: Text(
                                                                                                        'Safe Drop',
                                                                                                        style: GoogleFonts.sen(
                                                                                                          fontSize: 5.71428.sp,
                                                                                                          fontWeight: FontWeight.w400,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                                onPressed: (int newIndex) {
                                                                                                  // setState(() {
                                                                                                  //   for (int index = 0;
                                                                                                  //       index <
                                                                                                  //           isSorted
                                                                                                  //               .length;
                                                                                                  //       index++) {
                                                                                                  //     if (index ==
                                                                                                  //         newIndex) {
                                                                                                  //       isSorted[index] =
                                                                                                  //           true;
                                                                                                  //     } else {
                                                                                                  //       isSorted[index] =
                                                                                                  //           false;
                                                                                                  //     }
                                                                                                  //   }
                                                                                                  // });
                                                                                                },
                                                                                              ),
                                                                                            ),
                                                                                            csvertSpace4,
                                                                                            Container(
                                                                                              padding: EdgeInsets.only(right: 3.sp),
                                                                                              child: Row(
                                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                crossAxisAlignment: CrossAxisAlignment.end,
                                                                                                children: [
                                                                                                  SizedBox(
                                                                                                    width: 74.sp,
                                                                                                    // height:
                                                                                                    // 10.1648.sp,
                                                                                                    child: TextFeildWidget(
                                                                                                      hint: 'Transaction Amount',
                                                                                                    ),
                                                                                                  ),
                                                                                                  Container(
                                                                                                    width: 74.sp,
                                                                                                    height: 10.1648.sp,
                                                                                                    padding: EdgeInsets.only(
                                                                                                      left: 4.153.sp,
                                                                                                      right: 1.318.sp,
                                                                                                      // top: 1.5.sp
                                                                                                    ),
                                                                                                    decoration: ShapeDecoration(
                                                                                                      color: ccNeutral0,
                                                                                                      shape: RoundedRectangleBorder(
                                                                                                        side: const BorderSide(
                                                                                                          width: 2,
                                                                                                          style: BorderStyle.solid,
                                                                                                          color: ccPrimary300,
                                                                                                        ),
                                                                                                        borderRadius: BorderRadius.all(Radius.circular(1.0989.sp)),
                                                                                                      ),
                                                                                                    ),
                                                                                                    child: DropdownButton<String>(
                                                                                                      value: dropdownValue,
                                                                                                      icon: Icon(
                                                                                                        Icons.keyboard_arrow_down,
                                                                                                        color: ccNutural550,
                                                                                                        size: 5.395.sp,
                                                                                                      ),
                                                                                                      elevation: 16,
                                                                                                      isExpanded: true,
                                                                                                      // isDense: true,
                                                                                                      style: TextStyle(
                                                                                                        color: ccNutural550,
                                                                                                        fontSize: 3.956.sp,
                                                                                                      ),
                                                                                                      underline: Container(
                                                                                                        height: 0.0,
                                                                                                        color: Colors.transparent,
                                                                                                      ),
                                                                                                      onChanged: (String? newValue) {
                                                                                                        // setState(() {
                                                                                                        //   dropdownValue = newValue!;
                                                                                                        // });
                                                                                                      },
                                                                                                      items: <String>[
                                                                                                        'Supplies',
                                                                                                        'Cash Shifts',
                                                                                                      ].map<DropdownMenuItem<String>>((String value) {
                                                                                                        return DropdownMenuItem<String>(
                                                                                                          value: value,
                                                                                                          child: Text(value),
                                                                                                        );
                                                                                                      }).toList(),
                                                                                                      dropdownColor: ccNeutral0,
                                                                                                    ),
                                                                                                  )
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                            csvertSpace4,
                                                                                            SizedBox(
                                                                                              width: 100.w,
                                                                                              child: TextFeildWidget(
                                                                                                hint: 'Comment',
                                                                                              ),
                                                                                            ),
                                                                                            csvertSpace4,
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                actions: [
                                                                                  Row(
                                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                    children: [
                                                                                      Padding(
                                                                                          padding: EdgeInsets.only(
                                                                                        left: 3.sp,
                                                                                      )),
                                                                                      Container(
                                                                                        height: 9.25.sp,
                                                                                        width: 29.23.sp,
                                                                                        decoration: BoxDecoration(
                                                                                          borderRadius: BorderRadius.circular(1.098.sp),
                                                                                          border: Border.all(color: ccDanger300),
                                                                                        ),
                                                                                        child: ElevatedButton.icon(
                                                                                          onPressed: () {
                                                                                            Navigator.pop(context);
                                                                                            // model
                                                                                            //     .goToDashboard();
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
                                                                                            'Add',
                                                                                            style: GoogleFonts.sen(
                                                                                              color: ccNeutral0,
                                                                                              fontSize: 4.39.sp,
                                                                                              fontWeight: FontWeight.w400,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            );
                                                                          }),
                                                                      InkWell(
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                55.50.sp,
                                                                            padding:
                                                                                EdgeInsets.symmetric(horizontal: 2.75.sp),
                                                                            child:
                                                                                Center(
                                                                              child: Text(
                                                                                'Safe Drop',
                                                                                style: GoogleFonts.sen(
                                                                                  fontSize: 5.71428.sp,
                                                                                  fontWeight: FontWeight.w400,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          onTap:
                                                                              () {
                                                                            Navigator.pop(context);
                                                                            showDialog(
                                                                              context: context,
                                                                              barrierDismissible: false,
                                                                              builder: (_) => AlertDialog(
                                                                                contentPadding: EdgeInsets.zero,
                                                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2.197.sp))),
                                                                                content: Container(
                                                                                  width: 176.923.sp,
                                                                                  height: 80.sp,
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
                                                                                      Container(
                                                                                        padding: EdgeInsets.only(
                                                                                          left: 3.sp,
                                                                                          right: 1.sp,
                                                                                          top: 2.sp,
                                                                                        ),
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
                                                                                                color: ccNeutral0,
                                                                                                alignment: Alignment.centerLeft,
                                                                                                child: Row(
                                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                  children: [
                                                                                                    cshorzSpace2,
                                                                                                    InkWell(
                                                                                                      child: Text(
                                                                                                        'Functions',
                                                                                                        style: GoogleFonts.sen(
                                                                                                          color: ccDanger300,
                                                                                                          fontSize: 4.3956.sp,
                                                                                                        ),
                                                                                                      ),
                                                                                                      onTap: () {
                                                                                                        Navigator.pop(context);
                                                                                                        showDialog(
                                                                                                          context: context,
                                                                                                          barrierDismissible: false,
                                                                                                          builder: (_) => AlertDialog(
                                                                                                            contentPadding: EdgeInsets.zero,
                                                                                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2.197.sp))),
                                                                                                            content: Container(
                                                                                                              width: 183.076.sp,
                                                                                                              height: 97.sp,
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
                                                                                                                  Container(
                                                                                                                    padding: EdgeInsets.only(
                                                                                                                      left: 3.sp,
                                                                                                                      right: 1.sp,
                                                                                                                      top: 2.sp,
                                                                                                                    ),
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
                                                                                                                            color: ccNeutral0,
                                                                                                                            alignment: Alignment.centerLeft,
                                                                                                                            child: Row(
                                                                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                                              children: [
                                                                                                                                SizedBox(
                                                                                                                                  width: 153.sp,
                                                                                                                                  child: Row(
                                                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                                                    children: [
                                                                                                                                      Text(
                                                                                                                                        'Functions',
                                                                                                                                        style: GoogleFonts.sen(
                                                                                                                                          color: ccNutural550,
                                                                                                                                          fontSize: 5.714.sp,
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                    ],
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
                                                                                                                  Container(
                                                                                                                    color: ccDanger100,
                                                                                                                    padding: EdgeInsets.only(
                                                                                                                      left: 3.sp,
                                                                                                                      right: 1.sp,
                                                                                                                    ),
                                                                                                                    child: Column(
                                                                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                      children: [
                                                                                                                        Padding(
                                                                                                                          padding: EdgeInsets.only(top: 4.83.sp),
                                                                                                                        ),
                                                                                                                        Row(
                                                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                          children: [
                                                                                                                            SizedBox(
                                                                                                                              // padding: EdgeInsets.only(left: 4.153.sp, right: 4.65.sp),
                                                                                                                              width: 51.868.sp,
                                                                                                                              height: 21.78868.sp,
                                                                                                                              child: Column(
                                                                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                                children: [
                                                                                                                                  SizedBox(
                                                                                                                                    width: double.infinity,
                                                                                                                                    child: Text(
                                                                                                                                      "Cash Shift",
                                                                                                                                      style: GoogleFonts.sen(
                                                                                                                                        fontSize: 4.395.sp,
                                                                                                                                        fontWeight: FontWeight.w400,
                                                                                                                                        color: ccDanger300,
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                  Padding(padding: EdgeInsets.only(bottom: 3.95.sp)),
                                                                                                                                  TextField(
                                                                                                                                    enabled: false,
                                                                                                                                    style: const TextStyle(color: ccNutural550),
                                                                                                                                    controller: TextEditingController(text: "Start Cash Shift"),
                                                                                                                                    decoration: InputDecoration(
                                                                                                                                      fillColor: ccNeutral0,
                                                                                                                                      filled: true,
                                                                                                                                      contentPadding: EdgeInsets.all(2.63.sp),
                                                                                                                                      // fillColor:
                                                                                                                                      //     ccBakground,
                                                                                                                                      border: OutlineInputBorder(
                                                                                                                                        borderRadius: BorderRadius.circular(1.0989.sp),
                                                                                                                                        borderSide: const BorderSide(
                                                                                                                                          color: ccPrimary300,
                                                                                                                                          width: 1,
                                                                                                                                        ),
                                                                                                                                      ),

                                                                                                                                      prefixIcon: Container(
                                                                                                                                          decoration:
                                                                                                                                              // ignore: prefer_const_constructors
                                                                                                                                              BoxDecoration(
                                                                                                                                            borderRadius: BorderRadius.only(
                                                                                                                                              topLeft: Radius.circular(1.0989.sp),
                                                                                                                                              bottomLeft: Radius.circular(1.0989.sp),
                                                                                                                                            ),
                                                                                                                                            border: Border.all(
                                                                                                                                              color: ccPrimary300,
                                                                                                                                              width: 1,
                                                                                                                                            ),
                                                                                                                                          ),
                                                                                                                                          clipBehavior: Clip.antiAlias,
                                                                                                                                          // color:
                                                                                                                                          //     ccNetural350,
                                                                                                                                          height: 10.109.sp,
                                                                                                                                          width: 11.86.sp,
                                                                                                                                          margin: EdgeInsets.only(right: 3.296.sp),
                                                                                                                                          // color:
                                                                                                                                          //     ccNeutral0, // background color
                                                                                                                                          child: Container(
                                                                                                                                            color: ccNeutral0,
                                                                                                                                            margin: EdgeInsets.only(left: 1),
                                                                                                                                            child: Center(
                                                                                                                                              child: SvgPicture.asset(
                                                                                                                                                "../assets/imges/key.svg",
                                                                                                                                                height: 5.2747.sp,
                                                                                                                                                width: 5.2747.sp,
                                                                                                                                              ),
                                                                                                                                            ),
                                                                                                                                          )),
                                                                                                                                      hintText: "Open Cashbox",
                                                                                                                                      hintStyle: TextStyle(
                                                                                                                                        color: ccPrimary300,
                                                                                                                                        fontSize: 3.956.sp,
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                  Padding(padding: EdgeInsets.only(bottom: 1.95.sp)),
                                                                                                                                ],
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                            cshorzSpace2,
                                                                                                                            Opacity(
                                                                                                                              opacity: .5,
                                                                                                                              child: SizedBox(
                                                                                                                                width: 51.868.sp,
                                                                                                                                height: 21.78868.sp,
                                                                                                                                child: Column(
                                                                                                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                                                                                                  crossAxisAlignment: CrossAxisAlignment.end,
                                                                                                                                  children: [
                                                                                                                                    Padding(padding: EdgeInsets.only(bottom: 3.95.sp)),
                                                                                                                                    TextField(
                                                                                                                                      enabled: false,
                                                                                                                                      style: const TextStyle(color: ccNutural550),
                                                                                                                                      controller: TextEditingController(text: "Finish Cash Shift"),
                                                                                                                                      decoration: InputDecoration(
                                                                                                                                        fillColor: ccNeutral0,
                                                                                                                                        filled: true,
                                                                                                                                        contentPadding: EdgeInsets.all(2.63.sp),
                                                                                                                                        // fillColor:
                                                                                                                                        //     ccBakground,
                                                                                                                                        border: OutlineInputBorder(
                                                                                                                                          borderRadius: BorderRadius.circular(1.0989.sp),
                                                                                                                                          borderSide: const BorderSide(
                                                                                                                                            color: ccPrimary300,
                                                                                                                                            width: 1,
                                                                                                                                          ),
                                                                                                                                        ),

                                                                                                                                        prefixIcon: Container(
                                                                                                                                            decoration:
                                                                                                                                                // ignore: prefer_const_constructors
                                                                                                                                                BoxDecoration(
                                                                                                                                              borderRadius: BorderRadius.only(
                                                                                                                                                topLeft: Radius.circular(1.0989.sp),
                                                                                                                                                bottomLeft: Radius.circular(1.0989.sp),
                                                                                                                                              ),
                                                                                                                                              border: Border.all(
                                                                                                                                                color: ccPrimary300,
                                                                                                                                                width: 1,
                                                                                                                                              ),
                                                                                                                                            ),
                                                                                                                                            clipBehavior: Clip.antiAlias,
                                                                                                                                            // color:
                                                                                                                                            //     ccNetural350,
                                                                                                                                            height: 10.109.sp,
                                                                                                                                            width: 11.86.sp,
                                                                                                                                            margin: EdgeInsets.only(right: 3.296.sp),
                                                                                                                                            // color:
                                                                                                                                            //     ccNeutral0, // background color
                                                                                                                                            child: Container(
                                                                                                                                              color: ccNeutral0,
                                                                                                                                              margin: EdgeInsets.only(left: 1),
                                                                                                                                              child: Center(
                                                                                                                                                child: SvgPicture.asset(
                                                                                                                                                  "../assets/imges/key.svg",
                                                                                                                                                  height: 5.2747.sp,
                                                                                                                                                  width: 5.2747.sp,
                                                                                                                                                ),
                                                                                                                                              ),
                                                                                                                                            )
                                                                                                                                            // icon
                                                                                                                                            ),
                                                                                                                                        hintText: "Finish Cash Shift",
                                                                                                                                        hintStyle: TextStyle(
                                                                                                                                          color: ccPrimary300,
                                                                                                                                          fontSize: 3.956.sp,
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                    Padding(padding: EdgeInsets.only(bottom: 1.95.sp)),
                                                                                                                                  ],
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                            cshorzSpace2,
                                                                                                                            Opacity(
                                                                                                                              opacity: .5,
                                                                                                                              child: SizedBox(
                                                                                                                                height: 21.78868.sp,
                                                                                                                                width: 51.868.sp,
                                                                                                                                child: Column(
                                                                                                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                                                                                                  crossAxisAlignment: CrossAxisAlignment.end,
                                                                                                                                  children: [
                                                                                                                                    Padding(padding: EdgeInsets.only(bottom: 3.95.sp)),
                                                                                                                                    TextField(
                                                                                                                                      enabled: false,
                                                                                                                                      style: const TextStyle(color: ccNutural550),
                                                                                                                                      controller: TextEditingController(text: "Add Transaction"),
                                                                                                                                      decoration: InputDecoration(
                                                                                                                                        fillColor: ccNeutral0,
                                                                                                                                        filled: true,
                                                                                                                                        contentPadding: EdgeInsets.all(2.63.sp),
                                                                                                                                        // fillColor:
                                                                                                                                        //     ccBakground,
                                                                                                                                        border: OutlineInputBorder(
                                                                                                                                          borderRadius: BorderRadius.circular(1.0989.sp),
                                                                                                                                          borderSide: const BorderSide(
                                                                                                                                            color: ccPrimary300,
                                                                                                                                            width: 1,
                                                                                                                                          ),
                                                                                                                                        ),

                                                                                                                                        prefixIcon: Container(
                                                                                                                                            decoration:
                                                                                                                                                // ignore: prefer_const_constructors
                                                                                                                                                BoxDecoration(
                                                                                                                                              borderRadius: BorderRadius.only(
                                                                                                                                                topLeft: Radius.circular(1.0989.sp),
                                                                                                                                                bottomLeft: Radius.circular(1.0989.sp),
                                                                                                                                              ),
                                                                                                                                              border: Border.all(
                                                                                                                                                color: ccPrimary300,
                                                                                                                                                width: 1,
                                                                                                                                              ),
                                                                                                                                            ),
                                                                                                                                            clipBehavior: Clip.antiAlias,
                                                                                                                                            // color:
                                                                                                                                            //     ccNetural350,
                                                                                                                                            height: 10.109.sp,
                                                                                                                                            width: 11.86.sp,
                                                                                                                                            margin: EdgeInsets.only(right: 3.296.sp),
                                                                                                                                            // color:
                                                                                                                                            //     ccNeutral0, // background color
                                                                                                                                            child: Container(
                                                                                                                                              color: ccNeutral0,
                                                                                                                                              margin: EdgeInsets.only(left: 1),
                                                                                                                                              child: Center(
                                                                                                                                                child: SvgPicture.asset(
                                                                                                                                                  "../assets/imges/plus-g.svg",
                                                                                                                                                  height: 5.2747.sp,
                                                                                                                                                  width: 5.2747.sp,
                                                                                                                                                ),
                                                                                                                                              ),
                                                                                                                                            )
                                                                                                                                            // icon
                                                                                                                                            ),
                                                                                                                                        hintText: "Add Transaction",
                                                                                                                                        hintStyle: TextStyle(
                                                                                                                                          color: ccPrimary300,
                                                                                                                                          fontSize: 3.956.sp,
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                    Padding(padding: EdgeInsets.only(bottom: 1.95.sp)),
                                                                                                                                  ],
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                            cshorzSpace1,
                                                                                                                          ],
                                                                                                                        ),
                                                                                                                        csvertSpace2,
                                                                                                                        Row(
                                                                                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                          children: [
                                                                                                                            SizedBox(
                                                                                                                              // padding: EdgeInsets.only(left: 4.153.sp, right: 4.65.sp),
                                                                                                                              width: 51.868.sp,
                                                                                                                              height: 21.78868.sp,
                                                                                                                              child: Column(
                                                                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                                children: [
                                                                                                                                  SizedBox(
                                                                                                                                    width: double.infinity,
                                                                                                                                    child: Text(
                                                                                                                                      "Equipment",
                                                                                                                                      style: GoogleFonts.sen(
                                                                                                                                        fontSize: 4.395.sp,
                                                                                                                                        fontWeight: FontWeight.w400,
                                                                                                                                        color: ccDanger300,
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                  Padding(padding: EdgeInsets.only(bottom: 3.95.sp)),
                                                                                                                                  TextField(
                                                                                                                                    enabled: false,
                                                                                                                                    style: const TextStyle(color: ccNutural550),
                                                                                                                                    controller: TextEditingController(text: "Open Cashbox"),
                                                                                                                                    decoration: InputDecoration(
                                                                                                                                      fillColor: ccNeutral0,
                                                                                                                                      filled: true,
                                                                                                                                      contentPadding: EdgeInsets.all(2.63.sp),
                                                                                                                                      // fillColor:
                                                                                                                                      //     ccBakground,
                                                                                                                                      border: OutlineInputBorder(
                                                                                                                                        borderRadius: BorderRadius.circular(1.0989.sp),
                                                                                                                                        borderSide: const BorderSide(
                                                                                                                                          color: ccPrimary300,
                                                                                                                                          width: 1,
                                                                                                                                        ),
                                                                                                                                      ),

                                                                                                                                      prefixIcon: Container(
                                                                                                                                          decoration:
                                                                                                                                              // ignore: prefer_const_constructors
                                                                                                                                              BoxDecoration(
                                                                                                                                            borderRadius: BorderRadius.only(
                                                                                                                                              topLeft: Radius.circular(1.0989.sp),
                                                                                                                                              bottomLeft: Radius.circular(1.0989.sp),
                                                                                                                                            ),
                                                                                                                                            border: Border.all(
                                                                                                                                              color: ccPrimary300,
                                                                                                                                              width: 1,
                                                                                                                                            ),
                                                                                                                                          ),
                                                                                                                                          clipBehavior: Clip.antiAlias,
                                                                                                                                          // color:
                                                                                                                                          //     ccNetural350,
                                                                                                                                          height: 10.109.sp,
                                                                                                                                          width: 11.86.sp,
                                                                                                                                          margin: EdgeInsets.only(right: 3.296.sp),
                                                                                                                                          // color:
                                                                                                                                          //     ccNeutral0, // background color
                                                                                                                                          child: Container(
                                                                                                                                            color: ccNeutral0,
                                                                                                                                            margin: EdgeInsets.only(left: 1),
                                                                                                                                            child: Center(
                                                                                                                                              child: SvgPicture.asset(
                                                                                                                                                "../assets/imges/keyboard.svg",
                                                                                                                                                height: 5.2747.sp,
                                                                                                                                                width: 5.2747.sp,
                                                                                                                                              ),
                                                                                                                                            ),
                                                                                                                                          )),
                                                                                                                                      hintText: "Open Cashbox",
                                                                                                                                      hintStyle: TextStyle(
                                                                                                                                        color: ccPrimary300,
                                                                                                                                        fontSize: 3.956.sp,
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                  Padding(padding: EdgeInsets.only(bottom: 1.95.sp)),
                                                                                                                                ],
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                          ],
                                                                                                                        ),
                                                                                                                        csvertSpace2,
                                                                                                                        Row(
                                                                                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                          children: [
                                                                                                                            SizedBox(
                                                                                                                              // padding: EdgeInsets.only(left: 4.153.sp, right: 4.65.sp),
                                                                                                                              width: 51.868.sp,
                                                                                                                              height: 21.78868.sp,
                                                                                                                              child: Column(
                                                                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                                children: [
                                                                                                                                  SizedBox(
                                                                                                                                    width: double.infinity,
                                                                                                                                    child: Text(
                                                                                                                                      "Others",
                                                                                                                                      style: GoogleFonts.sen(
                                                                                                                                        fontSize: 4.395.sp,
                                                                                                                                        fontWeight: FontWeight.w400,
                                                                                                                                        color: ccDanger300,
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                  Padding(padding: EdgeInsets.only(bottom: 3.95.sp)),
                                                                                                                                  TextField(
                                                                                                                                    enabled: false,
                                                                                                                                    style: const TextStyle(color: ccNutural550),
                                                                                                                                    controller: TextEditingController(text: "Creat a Report"),
                                                                                                                                    decoration: InputDecoration(
                                                                                                                                      fillColor: ccNeutral0,
                                                                                                                                      filled: true,
                                                                                                                                      contentPadding: EdgeInsets.all(2.63.sp),
                                                                                                                                      // fillColor:
                                                                                                                                      //     ccBakground,
                                                                                                                                      border: OutlineInputBorder(
                                                                                                                                        borderRadius: BorderRadius.circular(1.0989.sp),
                                                                                                                                        borderSide: const BorderSide(
                                                                                                                                          color: ccPrimary300,
                                                                                                                                          width: 1,
                                                                                                                                        ),
                                                                                                                                      ),

                                                                                                                                      prefixIcon: Container(
                                                                                                                                          decoration:
                                                                                                                                              // ignore: prefer_const_constructors
                                                                                                                                              BoxDecoration(
                                                                                                                                            borderRadius: BorderRadius.only(
                                                                                                                                              topLeft: Radius.circular(1.0989.sp),
                                                                                                                                              bottomLeft: Radius.circular(1.0989.sp),
                                                                                                                                            ),
                                                                                                                                            border: Border.all(
                                                                                                                                              color: ccPrimary300,
                                                                                                                                              width: 1,
                                                                                                                                            ),
                                                                                                                                          ),
                                                                                                                                          clipBehavior: Clip.antiAlias,
                                                                                                                                          // color:
                                                                                                                                          //     ccNetural350,
                                                                                                                                          height: 10.109.sp,
                                                                                                                                          width: 11.86.sp,
                                                                                                                                          margin: EdgeInsets.only(right: 3.296.sp),
                                                                                                                                          // color:
                                                                                                                                          //     ccNeutral0, // background color
                                                                                                                                          child: Container(
                                                                                                                                            color: ccNeutral0,
                                                                                                                                            margin: EdgeInsets.only(left: 1),
                                                                                                                                            child: Center(
                                                                                                                                              child: SvgPicture.asset(
                                                                                                                                                "../assets/imges/keyboard.svg",
                                                                                                                                                height: 5.2747.sp,
                                                                                                                                                width: 5.2747.sp,
                                                                                                                                              ),
                                                                                                                                            ),
                                                                                                                                          )),
                                                                                                                                      hintText: "Creat a Report",
                                                                                                                                      hintStyle: TextStyle(
                                                                                                                                        color: ccPrimary300,
                                                                                                                                        fontSize: 3.956.sp,
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                  Padding(padding: EdgeInsets.only(bottom: 1.95.sp)),
                                                                                                                                ],
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                            cshorzSpace8,
                                                                                                                            SizedBox(
                                                                                                                              width: 51.868.sp,
                                                                                                                              height: 21.78868.sp,
                                                                                                                              child: Column(
                                                                                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                                                                                crossAxisAlignment: CrossAxisAlignment.end,
                                                                                                                                children: [
                                                                                                                                  Padding(padding: EdgeInsets.only(bottom: 3.95.sp)),
                                                                                                                                  TextField(
                                                                                                                                    enabled: false,
                                                                                                                                    style: const TextStyle(color: ccNutural550),
                                                                                                                                    controller: TextEditingController(text: "Sign Out"),
                                                                                                                                    decoration: InputDecoration(
                                                                                                                                      fillColor: ccNeutral0,
                                                                                                                                      filled: true,
                                                                                                                                      contentPadding: EdgeInsets.all(2.63.sp),
                                                                                                                                      // fillColor:
                                                                                                                                      //     ccBakground,
                                                                                                                                      border: OutlineInputBorder(
                                                                                                                                        borderRadius: BorderRadius.circular(1.0989.sp),
                                                                                                                                        borderSide: const BorderSide(
                                                                                                                                          color: ccPrimary300,
                                                                                                                                          width: 1,
                                                                                                                                        ),
                                                                                                                                      ),

                                                                                                                                      prefixIcon: Container(
                                                                                                                                          decoration:
                                                                                                                                              // ignore: prefer_const_constructors
                                                                                                                                              BoxDecoration(
                                                                                                                                            borderRadius: BorderRadius.only(
                                                                                                                                              topLeft: Radius.circular(1.0989.sp),
                                                                                                                                              bottomLeft: Radius.circular(1.0989.sp),
                                                                                                                                            ),
                                                                                                                                            border: Border.all(
                                                                                                                                              color: ccPrimary300,
                                                                                                                                              width: 1,
                                                                                                                                            ),
                                                                                                                                          ),
                                                                                                                                          clipBehavior: Clip.antiAlias,
                                                                                                                                          // color:
                                                                                                                                          //     ccNetural350,
                                                                                                                                          height: 10.109.sp,
                                                                                                                                          width: 11.86.sp,
                                                                                                                                          margin: EdgeInsets.only(right: 3.296.sp),
                                                                                                                                          // color:
                                                                                                                                          //     ccNeutral0, // background color
                                                                                                                                          child: Container(
                                                                                                                                            color: ccNeutral0,
                                                                                                                                            margin: EdgeInsets.only(left: 1),
                                                                                                                                            child: Center(
                                                                                                                                              child: SvgPicture.asset(
                                                                                                                                                "../assets/imges/key.svg",
                                                                                                                                                height: 5.2747.sp,
                                                                                                                                                width: 5.2747.sp,
                                                                                                                                              ),
                                                                                                                                            ),
                                                                                                                                          )
                                                                                                                                          // icon
                                                                                                                                          ),
                                                                                                                                      hintText: "Sign Out",
                                                                                                                                      hintStyle: TextStyle(
                                                                                                                                        color: ccPrimary300,
                                                                                                                                        fontSize: 3.956.sp,
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                  Padding(padding: EdgeInsets.only(bottom: 1.95.sp)),
                                                                                                                                ],
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                            cshorzSpace1,
                                                                                                                          ],
                                                                                                                        ),
                                                                                                                        csvertSpace8,
                                                                                                                      ],
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ],
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        );
                                                                                                      },
                                                                                                    ),
                                                                                                    SizedBox(
                                                                                                      width: 140.sp,
                                                                                                      child: Row(
                                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                        children: [
                                                                                                          Text(
                                                                                                            'Add Transaction',
                                                                                                            style: GoogleFonts.sen(
                                                                                                              color: ccNutural550,
                                                                                                              fontSize: 5.714.sp,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ],
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
                                                                                      Container(
                                                                                        color: ccDanger100,
                                                                                        padding: EdgeInsets.only(
                                                                                          left: 5.sp,
                                                                                          right: 1.sp,
                                                                                        ),
                                                                                        child: Column(
                                                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: EdgeInsets.only(top: 4.83.sp),
                                                                                            ),
                                                                                            csvertSpace4,
                                                                                            Container(
                                                                                              decoration: BoxDecoration(
                                                                                                color: ccNeutral0,
                                                                                                borderRadius: BorderRadius.circular(2.1978.sp),
                                                                                                border: Border.all(color: ccPrimary300),
                                                                                              ),
                                                                                              child: ToggleButtons(
                                                                                                isSelected: isSafeDrop,
                                                                                                selectedColor: ccDanger300,
                                                                                                color: ccNutural550,
                                                                                                fillColor: ccNeutral0,
                                                                                                selectedBorderColor: ccDanger300,
                                                                                                borderWidth: 1,
                                                                                                borderRadius: BorderRadius.circular(2.1978.sp),
                                                                                                children: <Widget>[
                                                                                                  Container(
                                                                                                    width: 55.50.sp,
                                                                                                    padding: EdgeInsets.symmetric(horizontal: 4.75.sp),
                                                                                                    child: Center(
                                                                                                      child: Text(
                                                                                                        'Expense',
                                                                                                        style: GoogleFonts.sen(
                                                                                                          fontSize: 5.71428.sp,
                                                                                                          fontWeight: FontWeight.w400,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  Container(
                                                                                                    width: 55.50.sp,
                                                                                                    padding: EdgeInsets.symmetric(horizontal: 2.75.sp),
                                                                                                    child: Center(
                                                                                                      child: Text(
                                                                                                        'Income',
                                                                                                        style: GoogleFonts.sen(
                                                                                                          fontSize: 5.71428.sp,
                                                                                                          fontWeight: FontWeight.w400,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  Container(
                                                                                                    width: 55.50.sp,
                                                                                                    padding: EdgeInsets.symmetric(horizontal: 2.75.sp),
                                                                                                    child: Center(
                                                                                                      child: Text(
                                                                                                        'Safe Drop',
                                                                                                        style: GoogleFonts.sen(
                                                                                                          fontSize: 5.71428.sp,
                                                                                                          fontWeight: FontWeight.w400,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                                onPressed: (int newIndex) {
                                                                                                  // setState(() {
                                                                                                  //   for (int index = 0;
                                                                                                  //       index <
                                                                                                  //           isSorted
                                                                                                  //               .length;
                                                                                                  //       index++) {
                                                                                                  //     if (index ==
                                                                                                  //         newIndex) {
                                                                                                  //       isSorted[index] =
                                                                                                  //           true;
                                                                                                  //     } else {
                                                                                                  //       isSorted[index] =
                                                                                                  //           false;
                                                                                                  //     }
                                                                                                  //   }
                                                                                                  // });
                                                                                                },
                                                                                              ),
                                                                                            ),
                                                                                            csvertSpace4,
                                                                                            Row(
                                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                              children: [
                                                                                                SvgPicture.asset(
                                                                                                  "../assets/imges/flag.svg",
                                                                                                  width: 4.3956.sp,
                                                                                                  height: 5.4945.sp,
                                                                                                ),
                                                                                                cshorzSpace2,
                                                                                                SizedBox(
                                                                                                  // width: 140.sp,
                                                                                                  child: Text(
                                                                                                    'Count the day’s cash revenue and move it to the safe box',
                                                                                                    style: GoogleFonts.sen(
                                                                                                      color: ccNutural550,
                                                                                                      fontSize: 4.3956.sp,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            csvertSpace4,
                                                                                            SizedBox(
                                                                                              width: 100.w,
                                                                                              // height:
                                                                                              // 10.1648.sp,
                                                                                              child: TextFeildWidget(
                                                                                                hint: 'Transaction Amount',
                                                                                              ),
                                                                                            ),
                                                                                            csvertSpace4,
                                                                                            SizedBox(
                                                                                              width: 100.w,
                                                                                              child: TextFeildWidget(
                                                                                                hint: 'Comment',
                                                                                              ),
                                                                                            ),
                                                                                            csvertSpace4,
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                actions: [
                                                                                  Row(
                                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                    children: [
                                                                                      Padding(
                                                                                          padding: EdgeInsets.only(
                                                                                        left: 3.sp,
                                                                                      )),
                                                                                      Container(
                                                                                        height: 9.25.sp,
                                                                                        width: 29.23.sp,
                                                                                        decoration: BoxDecoration(
                                                                                          borderRadius: BorderRadius.circular(1.098.sp),
                                                                                          border: Border.all(color: ccDanger300),
                                                                                        ),
                                                                                        child: ElevatedButton.icon(
                                                                                          onPressed: () {
                                                                                            Navigator.pop(context);
                                                                                            // model
                                                                                            //     .goToDashboard();
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
                                                                                            'Add',
                                                                                            style: GoogleFonts.sen(
                                                                                              color: ccNeutral0,
                                                                                              fontSize: 4.39.sp,
                                                                                              fontWeight: FontWeight.w400,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            );
                                                                          }),
                                                                    ],
                                                                    onPressed: (int
                                                                        newIndex) {
                                                                      // setState(() {
                                                                      //   for (int index = 0;
                                                                      //       index <
                                                                      //           isSorted
                                                                      //               .length;
                                                                      //       index++) {
                                                                      //     if (index ==
                                                                      //         newIndex) {
                                                                      //       isSorted[index] =
                                                                      //           true;
                                                                      //     } else {
                                                                      //       isSorted[index] =
                                                                      //           false;
                                                                      //     }
                                                                      //   }
                                                                      // });
                                                                    },
                                                                  ),
                                                                ),
                                                                csvertSpace4,
                                                                Container(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          right:
                                                                              3.sp),
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      SizedBox(
                                                                        width: 74
                                                                            .sp,
                                                                        // height:
                                                                        // 10.1648.sp,
                                                                        child:
                                                                            TextFeildWidget(
                                                                          hint:
                                                                              'Transaction Amount',
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        width: 74
                                                                            .sp,
                                                                        height:
                                                                            10.1648.sp,
                                                                        padding:
                                                                            EdgeInsets.only(
                                                                          left:
                                                                              4.153.sp,
                                                                          right:
                                                                              1.318.sp,
                                                                          // top: 1.5.sp
                                                                        ),
                                                                        decoration:
                                                                            ShapeDecoration(
                                                                          color:
                                                                              ccNeutral0,
                                                                          shape:
                                                                              RoundedRectangleBorder(
                                                                            side:
                                                                                const BorderSide(
                                                                              width: 2,
                                                                              style: BorderStyle.solid,
                                                                              color: ccPrimary300,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.all(Radius.circular(1.0989.sp)),
                                                                          ),
                                                                        ),
                                                                        child: DropdownButton<
                                                                            String>(
                                                                          value:
                                                                              dropdownValue,
                                                                          icon:
                                                                              Icon(
                                                                            Icons.keyboard_arrow_down,
                                                                            color:
                                                                                ccNutural550,
                                                                            size:
                                                                                5.395.sp,
                                                                          ),
                                                                          elevation:
                                                                              16,
                                                                          isExpanded:
                                                                              true,
                                                                          // isDense: true,
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                ccNutural550,
                                                                            fontSize:
                                                                                3.956.sp,
                                                                          ),
                                                                          underline:
                                                                              Container(
                                                                            height:
                                                                                0.0,
                                                                            color:
                                                                                Colors.transparent,
                                                                          ),
                                                                          onChanged:
                                                                              (String? newValue) {
                                                                            // setState(() {
                                                                            //   dropdownValue = newValue!;
                                                                            // });
                                                                          },
                                                                          items: <
                                                                              String>[
                                                                            'Supplies',
                                                                            'Cash Shifts',
                                                                          ].map<DropdownMenuItem<String>>((String
                                                                              value) {
                                                                            return DropdownMenuItem<String>(
                                                                              value: value,
                                                                              child: Text(value),
                                                                            );
                                                                          }).toList(),
                                                                          dropdownColor:
                                                                              ccNeutral0,
                                                                        ),
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                                csvertSpace4,
                                                                SizedBox(
                                                                  width: 100.w,
                                                                  child:
                                                                      TextFeildWidget(
                                                                    hint:
                                                                        'Comment',
                                                                  ),
                                                                ),
                                                                csvertSpace4,
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    actions: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .only(
                                                            left: 3.sp,
                                                          )),
                                                          Container(
                                                            height: 9.25.sp,
                                                            width: 29.23.sp,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          1.098
                                                                              .sp),
                                                              border: Border.all(
                                                                  color:
                                                                      ccDanger300),
                                                            ),
                                                            child:
                                                                ElevatedButton
                                                                    .icon(
                                                              onPressed: () {
                                                                Navigator.pop(
                                                                    context);
                                                                // model
                                                                //     .goToDashboard();
                                                              },
                                                              style:
                                                                  ElevatedButton
                                                                      .styleFrom(
                                                                backgroundColor:
                                                                    ccDanger300,
                                                                elevation: 0,
                                                                shadowColor: Colors
                                                                    .transparent,
                                                              ),
                                                              icon: SvgPicture
                                                                  .asset(
                                                                "../assets/imges/check-white.svg",
                                                                width: 4.17.sp,
                                                                height: 3.07.sp,
                                                              ),
                                                              label: Text(
                                                                'Add',
                                                                style:
                                                                    GoogleFonts
                                                                        .sen(
                                                                  color:
                                                                      ccNeutral0,
                                                                  fontSize:
                                                                      4.39.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              }),
                                          cshorzSpace1,
                                        ],
                                      ),
                                      csvertSpace2,
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            // padding: EdgeInsets.only(left: 4.153.sp, right: 4.65.sp),
                                            width: 51.868.sp,
                                            height: 21.78868.sp,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  width: double.infinity,
                                                  child: Text(
                                                    "Equipment",
                                                    style: GoogleFonts.sen(
                                                      fontSize: 4.395.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: ccDanger300,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 3.95.sp)),
                                                TextField(
                                                  enabled: false,
                                                  style: const TextStyle(
                                                      color: ccNutural550),
                                                  controller:
                                                      TextEditingController(
                                                          text: "Open Cashbox"),
                                                  decoration: InputDecoration(
                                                    fillColor: ccNeutral0,
                                                    filled: true,
                                                    contentPadding:
                                                        EdgeInsets.all(2.63.sp),
                                                    // fillColor:
                                                    //     ccBakground,
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              1.0989.sp),
                                                      borderSide:
                                                          const BorderSide(
                                                        color: ccPrimary300,
                                                        width: 1,
                                                      ),
                                                    ),

                                                    prefixIcon: Container(
                                                        decoration:
                                                            // ignore: prefer_const_constructors
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    1.0989.sp),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    1.0989.sp),
                                                          ),
                                                          border: Border.all(
                                                            color: ccPrimary300,
                                                            width: 1,
                                                          ),
                                                        ),
                                                        clipBehavior:
                                                            Clip.antiAlias,
                                                        // color:
                                                        //     ccNetural350,
                                                        height: 10.109.sp,
                                                        width: 11.86.sp,
                                                        margin: EdgeInsets.only(
                                                            right: 3.296.sp),
                                                        // color:
                                                        //     ccNeutral0, // background color
                                                        child: Container(
                                                          color: ccNeutral0,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 1),
                                                          child: Center(
                                                            child: SvgPicture
                                                                .asset(
                                                              "../assets/imges/keyboard.svg",
                                                              height: 5.2747.sp,
                                                              width: 5.2747.sp,
                                                            ),
                                                          ),
                                                        )),
                                                    hintText: "Open Cashbox",
                                                    hintStyle: TextStyle(
                                                      color: ccPrimary300,
                                                      fontSize: 3.956.sp,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 1.95.sp)),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      csvertSpace2,
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          InkWell(
                                              child: SizedBox(
                                                // padding: EdgeInsets.only(left: 4.153.sp, right: 4.65.sp),
                                                width: 51.868.sp,
                                                height: 21.78868.sp,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                      width: double.infinity,
                                                      child: Text(
                                                        "Others",
                                                        style: GoogleFonts.sen(
                                                          fontSize: 4.395.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: ccDanger300,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                bottom:
                                                                    3.95.sp)),
                                                    TextField(
                                                      enabled: false,
                                                      style: const TextStyle(
                                                          color: ccNutural550),
                                                      controller:
                                                          TextEditingController(
                                                              text:
                                                                  "Creat a Report"),
                                                      decoration:
                                                          InputDecoration(
                                                        fillColor: ccNeutral0,
                                                        filled: true,
                                                        contentPadding:
                                                            EdgeInsets.all(
                                                                2.63.sp),
                                                        // fillColor:
                                                        //     ccBakground,
                                                        border:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      1.0989
                                                                          .sp),
                                                          borderSide:
                                                              const BorderSide(
                                                            color: ccPrimary300,
                                                            width: 1,
                                                          ),
                                                        ),

                                                        prefixIcon: Container(
                                                            decoration:
                                                                // ignore: prefer_const_constructors
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        1.0989
                                                                            .sp),
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        1.0989
                                                                            .sp),
                                                              ),
                                                              border:
                                                                  Border.all(
                                                                color:
                                                                    ccPrimary300,
                                                                width: 1,
                                                              ),
                                                            ),
                                                            clipBehavior: Clip
                                                                .antiAlias,
                                                            // color:
                                                            //     ccNetural350,
                                                            height: 10.109.sp,
                                                            width: 11.86.sp,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    right: 3.296
                                                                        .sp),
                                                            // color:
                                                            //     ccNeutral0, // background color
                                                            child: Container(
                                                              color: ccNeutral0,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left: 1),
                                                              child: Center(
                                                                child:
                                                                    SvgPicture
                                                                        .asset(
                                                                  "../assets/imges/keyboard.svg",
                                                                  height:
                                                                      5.2747.sp,
                                                                  width:
                                                                      5.2747.sp,
                                                                ),
                                                              ),
                                                            )),
                                                        hintText:
                                                            "Creat a Report",
                                                        hintStyle: TextStyle(
                                                          color: ccPrimary300,
                                                          fontSize: 3.956.sp,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                bottom:
                                                                    1.95.sp)),
                                                  ],
                                                ),
                                              ),
                                              onTap: () {
                                                Navigator.pop(context);
                                                showDialog(
                                                  context: context,
                                                  barrierDismissible: false,
                                                  builder: (_) => AlertDialog(
                                                    contentPadding:
                                                        EdgeInsets.zero,
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    2.197.sp))),
                                                    content: Container(
                                                      width: 176.923.sp,
                                                      height: 69.40.sp,
                                                      decoration:
                                                          const BoxDecoration(
                                                              border: Border(
                                                                  bottom:
                                                                      BorderSide(
                                                        width: 0.5,
                                                        color: ccNatural250,
                                                      ))),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            padding:
                                                                EdgeInsets.only(
                                                              left: 3.sp,
                                                              right: 1.sp,
                                                              top: 2.sp,
                                                            ),
                                                            decoration:
                                                                const BoxDecoration(
                                                                    border: Border(
                                                                        bottom: BorderSide(
                                                              width: 0.5,
                                                              color:
                                                                  ccNatural250,
                                                            ))),
                                                            height: 14.62.sp,
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                      Container(
                                                                    height:
                                                                        10.62
                                                                            .sp,
                                                                    color:
                                                                        ccNeutral0,
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        cshorzSpace2,
                                                                        InkWell(
                                                                          child:
                                                                              Text(
                                                                            'Functions',
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              color: ccDanger300,
                                                                              fontSize: 4.3956.sp,
                                                                            ),
                                                                          ),
                                                                          onTap:
                                                                              () {
                                                                            Navigator.pop(context);
                                                                            showDialog(
                                                                              context: context,
                                                                              barrierDismissible: false,
                                                                              builder: (_) => AlertDialog(
                                                                                contentPadding: EdgeInsets.zero,
                                                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2.197.sp))),
                                                                                content: Container(
                                                                                  width: 183.076.sp,
                                                                                  height: 97.sp,
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
                                                                                      Container(
                                                                                        padding: EdgeInsets.only(
                                                                                          left: 3.sp,
                                                                                          right: 1.sp,
                                                                                          top: 2.sp,
                                                                                        ),
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
                                                                                                color: ccNeutral0,
                                                                                                alignment: Alignment.centerLeft,
                                                                                                child: Row(
                                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                  children: [
                                                                                                    SizedBox(
                                                                                                      width: 153.sp,
                                                                                                      child: Row(
                                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                        children: [
                                                                                                          Text(
                                                                                                            'Functions',
                                                                                                            style: GoogleFonts.sen(
                                                                                                              color: ccNutural550,
                                                                                                              fontSize: 5.714.sp,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ],
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
                                                                                      Container(
                                                                                        color: ccDanger100,
                                                                                        padding: EdgeInsets.only(
                                                                                          left: 3.sp,
                                                                                          right: 1.sp,
                                                                                        ),
                                                                                        child: Column(
                                                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: EdgeInsets.only(top: 4.83.sp),
                                                                                            ),
                                                                                            Row(
                                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                              children: [
                                                                                                SizedBox(
                                                                                                  // padding: EdgeInsets.only(left: 4.153.sp, right: 4.65.sp),
                                                                                                  width: 51.868.sp,
                                                                                                  height: 21.78868.sp,
                                                                                                  child: Column(
                                                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                    children: [
                                                                                                      SizedBox(
                                                                                                        width: double.infinity,
                                                                                                        child: Text(
                                                                                                          "Cash Shift",
                                                                                                          style: GoogleFonts.sen(
                                                                                                            fontSize: 4.395.sp,
                                                                                                            fontWeight: FontWeight.w400,
                                                                                                            color: ccDanger300,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(padding: EdgeInsets.only(bottom: 3.95.sp)),
                                                                                                      TextField(
                                                                                                        enabled: false,
                                                                                                        style: const TextStyle(color: ccNutural550),
                                                                                                        controller: TextEditingController(text: "Start Cash Shift"),
                                                                                                        decoration: InputDecoration(
                                                                                                          fillColor: ccNeutral0,
                                                                                                          filled: true,
                                                                                                          contentPadding: EdgeInsets.all(2.63.sp),
                                                                                                          // fillColor:
                                                                                                          //     ccBakground,
                                                                                                          border: OutlineInputBorder(
                                                                                                            borderRadius: BorderRadius.circular(1.0989.sp),
                                                                                                            borderSide: const BorderSide(
                                                                                                              color: ccPrimary300,
                                                                                                              width: 1,
                                                                                                            ),
                                                                                                          ),

                                                                                                          prefixIcon: Container(
                                                                                                              decoration:
                                                                                                                  // ignore: prefer_const_constructors
                                                                                                                  BoxDecoration(
                                                                                                                borderRadius: BorderRadius.only(
                                                                                                                  topLeft: Radius.circular(1.0989.sp),
                                                                                                                  bottomLeft: Radius.circular(1.0989.sp),
                                                                                                                ),
                                                                                                                border: Border.all(
                                                                                                                  color: ccPrimary300,
                                                                                                                  width: 1,
                                                                                                                ),
                                                                                                              ),
                                                                                                              clipBehavior: Clip.antiAlias,
                                                                                                              // color:
                                                                                                              //     ccNetural350,
                                                                                                              height: 10.109.sp,
                                                                                                              width: 11.86.sp,
                                                                                                              margin: EdgeInsets.only(right: 3.296.sp),
                                                                                                              // color:
                                                                                                              //     ccNeutral0, // background color
                                                                                                              child: Container(
                                                                                                                color: ccNeutral0,
                                                                                                                margin: EdgeInsets.only(left: 1),
                                                                                                                child: Center(
                                                                                                                  child: SvgPicture.asset(
                                                                                                                    "../assets/imges/key.svg",
                                                                                                                    height: 5.2747.sp,
                                                                                                                    width: 5.2747.sp,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              )),
                                                                                                          hintText: "Open Cashbox",
                                                                                                          hintStyle: TextStyle(
                                                                                                            color: ccPrimary300,
                                                                                                            fontSize: 3.956.sp,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(padding: EdgeInsets.only(bottom: 1.95.sp)),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                                cshorzSpace2,
                                                                                                Opacity(
                                                                                                  opacity: .5,
                                                                                                  child: SizedBox(
                                                                                                    width: 51.868.sp,
                                                                                                    height: 21.78868.sp,
                                                                                                    child: Column(
                                                                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                                                                      crossAxisAlignment: CrossAxisAlignment.end,
                                                                                                      children: [
                                                                                                        Padding(padding: EdgeInsets.only(bottom: 3.95.sp)),
                                                                                                        TextField(
                                                                                                          enabled: false,
                                                                                                          style: const TextStyle(color: ccNutural550),
                                                                                                          controller: TextEditingController(text: "Finish Cash Shift"),
                                                                                                          decoration: InputDecoration(
                                                                                                            fillColor: ccNeutral0,
                                                                                                            filled: true,
                                                                                                            contentPadding: EdgeInsets.all(2.63.sp),
                                                                                                            // fillColor:
                                                                                                            //     ccBakground,
                                                                                                            border: OutlineInputBorder(
                                                                                                              borderRadius: BorderRadius.circular(1.0989.sp),
                                                                                                              borderSide: const BorderSide(
                                                                                                                color: ccPrimary300,
                                                                                                                width: 1,
                                                                                                              ),
                                                                                                            ),

                                                                                                            prefixIcon: Container(
                                                                                                                decoration:
                                                                                                                    // ignore: prefer_const_constructors
                                                                                                                    BoxDecoration(
                                                                                                                  borderRadius: BorderRadius.only(
                                                                                                                    topLeft: Radius.circular(1.0989.sp),
                                                                                                                    bottomLeft: Radius.circular(1.0989.sp),
                                                                                                                  ),
                                                                                                                  border: Border.all(
                                                                                                                    color: ccPrimary300,
                                                                                                                    width: 1,
                                                                                                                  ),
                                                                                                                ),
                                                                                                                clipBehavior: Clip.antiAlias,
                                                                                                                // color:
                                                                                                                //     ccNetural350,
                                                                                                                height: 10.109.sp,
                                                                                                                width: 11.86.sp,
                                                                                                                margin: EdgeInsets.only(right: 3.296.sp),
                                                                                                                // color:
                                                                                                                //     ccNeutral0, // background color
                                                                                                                child: Container(
                                                                                                                  color: ccNeutral0,
                                                                                                                  margin: EdgeInsets.only(left: 1),
                                                                                                                  child: Center(
                                                                                                                    child: SvgPicture.asset(
                                                                                                                      "../assets/imges/key.svg",
                                                                                                                      height: 5.2747.sp,
                                                                                                                      width: 5.2747.sp,
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                )
                                                                                                                // icon
                                                                                                                ),
                                                                                                            hintText: "Finish Cash Shift",
                                                                                                            hintStyle: TextStyle(
                                                                                                              color: ccPrimary300,
                                                                                                              fontSize: 3.956.sp,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                        Padding(padding: EdgeInsets.only(bottom: 1.95.sp)),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                cshorzSpace2,
                                                                                                Opacity(
                                                                                                  opacity: .5,
                                                                                                  child: SizedBox(
                                                                                                    height: 21.78868.sp,
                                                                                                    width: 51.868.sp,
                                                                                                    child: Column(
                                                                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                                                                      crossAxisAlignment: CrossAxisAlignment.end,
                                                                                                      children: [
                                                                                                        Padding(padding: EdgeInsets.only(bottom: 3.95.sp)),
                                                                                                        TextField(
                                                                                                          enabled: false,
                                                                                                          style: const TextStyle(color: ccNutural550),
                                                                                                          controller: TextEditingController(text: "Add Transaction"),
                                                                                                          decoration: InputDecoration(
                                                                                                            fillColor: ccNeutral0,
                                                                                                            filled: true,
                                                                                                            contentPadding: EdgeInsets.all(2.63.sp),
                                                                                                            // fillColor:
                                                                                                            //     ccBakground,
                                                                                                            border: OutlineInputBorder(
                                                                                                              borderRadius: BorderRadius.circular(1.0989.sp),
                                                                                                              borderSide: const BorderSide(
                                                                                                                color: ccPrimary300,
                                                                                                                width: 1,
                                                                                                              ),
                                                                                                            ),

                                                                                                            prefixIcon: Container(
                                                                                                                decoration:
                                                                                                                    // ignore: prefer_const_constructors
                                                                                                                    BoxDecoration(
                                                                                                                  borderRadius: BorderRadius.only(
                                                                                                                    topLeft: Radius.circular(1.0989.sp),
                                                                                                                    bottomLeft: Radius.circular(1.0989.sp),
                                                                                                                  ),
                                                                                                                  border: Border.all(
                                                                                                                    color: ccPrimary300,
                                                                                                                    width: 1,
                                                                                                                  ),
                                                                                                                ),
                                                                                                                clipBehavior: Clip.antiAlias,
                                                                                                                // color:
                                                                                                                //     ccNetural350,
                                                                                                                height: 10.109.sp,
                                                                                                                width: 11.86.sp,
                                                                                                                margin: EdgeInsets.only(right: 3.296.sp),
                                                                                                                // color:
                                                                                                                //     ccNeutral0, // background color
                                                                                                                child: Container(
                                                                                                                  color: ccNeutral0,
                                                                                                                  margin: EdgeInsets.only(left: 1),
                                                                                                                  child: Center(
                                                                                                                    child: SvgPicture.asset(
                                                                                                                      "../assets/imges/plus-g.svg",
                                                                                                                      height: 5.2747.sp,
                                                                                                                      width: 5.2747.sp,
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                )
                                                                                                                // icon
                                                                                                                ),
                                                                                                            hintText: "Add Transaction",
                                                                                                            hintStyle: TextStyle(
                                                                                                              color: ccPrimary300,
                                                                                                              fontSize: 3.956.sp,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                        Padding(padding: EdgeInsets.only(bottom: 1.95.sp)),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                cshorzSpace1,
                                                                                              ],
                                                                                            ),
                                                                                            csvertSpace2,
                                                                                            Row(
                                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                              children: [
                                                                                                SizedBox(
                                                                                                  // padding: EdgeInsets.only(left: 4.153.sp, right: 4.65.sp),
                                                                                                  width: 51.868.sp,
                                                                                                  height: 21.78868.sp,
                                                                                                  child: Column(
                                                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                    children: [
                                                                                                      SizedBox(
                                                                                                        width: double.infinity,
                                                                                                        child: Text(
                                                                                                          "Equipment",
                                                                                                          style: GoogleFonts.sen(
                                                                                                            fontSize: 4.395.sp,
                                                                                                            fontWeight: FontWeight.w400,
                                                                                                            color: ccDanger300,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(padding: EdgeInsets.only(bottom: 3.95.sp)),
                                                                                                      TextField(
                                                                                                        enabled: false,
                                                                                                        style: const TextStyle(color: ccNutural550),
                                                                                                        controller: TextEditingController(text: "Open Cashbox"),
                                                                                                        decoration: InputDecoration(
                                                                                                          fillColor: ccNeutral0,
                                                                                                          filled: true,
                                                                                                          contentPadding: EdgeInsets.all(2.63.sp),
                                                                                                          // fillColor:
                                                                                                          //     ccBakground,
                                                                                                          border: OutlineInputBorder(
                                                                                                            borderRadius: BorderRadius.circular(1.0989.sp),
                                                                                                            borderSide: const BorderSide(
                                                                                                              color: ccPrimary300,
                                                                                                              width: 1,
                                                                                                            ),
                                                                                                          ),

                                                                                                          prefixIcon: Container(
                                                                                                              decoration:
                                                                                                                  // ignore: prefer_const_constructors
                                                                                                                  BoxDecoration(
                                                                                                                borderRadius: BorderRadius.only(
                                                                                                                  topLeft: Radius.circular(1.0989.sp),
                                                                                                                  bottomLeft: Radius.circular(1.0989.sp),
                                                                                                                ),
                                                                                                                border: Border.all(
                                                                                                                  color: ccPrimary300,
                                                                                                                  width: 1,
                                                                                                                ),
                                                                                                              ),
                                                                                                              clipBehavior: Clip.antiAlias,
                                                                                                              // color:
                                                                                                              //     ccNetural350,
                                                                                                              height: 10.109.sp,
                                                                                                              width: 11.86.sp,
                                                                                                              margin: EdgeInsets.only(right: 3.296.sp),
                                                                                                              // color:
                                                                                                              //     ccNeutral0, // background color
                                                                                                              child: Container(
                                                                                                                color: ccNeutral0,
                                                                                                                margin: EdgeInsets.only(left: 1),
                                                                                                                child: Center(
                                                                                                                  child: SvgPicture.asset(
                                                                                                                    "../assets/imges/keyboard.svg",
                                                                                                                    height: 5.2747.sp,
                                                                                                                    width: 5.2747.sp,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              )),
                                                                                                          hintText: "Open Cashbox",
                                                                                                          hintStyle: TextStyle(
                                                                                                            color: ccPrimary300,
                                                                                                            fontSize: 3.956.sp,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(padding: EdgeInsets.only(bottom: 1.95.sp)),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            csvertSpace2,
                                                                                            Row(
                                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                              children: [
                                                                                                SizedBox(
                                                                                                  // padding: EdgeInsets.only(left: 4.153.sp, right: 4.65.sp),
                                                                                                  width: 51.868.sp,
                                                                                                  height: 21.78868.sp,
                                                                                                  child: Column(
                                                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                    children: [
                                                                                                      SizedBox(
                                                                                                        width: double.infinity,
                                                                                                        child: Text(
                                                                                                          "Others",
                                                                                                          style: GoogleFonts.sen(
                                                                                                            fontSize: 4.395.sp,
                                                                                                            fontWeight: FontWeight.w400,
                                                                                                            color: ccDanger300,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(padding: EdgeInsets.only(bottom: 3.95.sp)),
                                                                                                      TextField(
                                                                                                        enabled: false,
                                                                                                        style: const TextStyle(color: ccNutural550),
                                                                                                        controller: TextEditingController(text: "Creat a Report"),
                                                                                                        decoration: InputDecoration(
                                                                                                          fillColor: ccNeutral0,
                                                                                                          filled: true,
                                                                                                          contentPadding: EdgeInsets.all(2.63.sp),
                                                                                                          // fillColor:
                                                                                                          //     ccBakground,
                                                                                                          border: OutlineInputBorder(
                                                                                                            borderRadius: BorderRadius.circular(1.0989.sp),
                                                                                                            borderSide: const BorderSide(
                                                                                                              color: ccPrimary300,
                                                                                                              width: 1,
                                                                                                            ),
                                                                                                          ),

                                                                                                          prefixIcon: Container(
                                                                                                              decoration:
                                                                                                                  // ignore: prefer_const_constructors
                                                                                                                  BoxDecoration(
                                                                                                                borderRadius: BorderRadius.only(
                                                                                                                  topLeft: Radius.circular(1.0989.sp),
                                                                                                                  bottomLeft: Radius.circular(1.0989.sp),
                                                                                                                ),
                                                                                                                border: Border.all(
                                                                                                                  color: ccPrimary300,
                                                                                                                  width: 1,
                                                                                                                ),
                                                                                                              ),
                                                                                                              clipBehavior: Clip.antiAlias,
                                                                                                              // color:
                                                                                                              //     ccNetural350,
                                                                                                              height: 10.109.sp,
                                                                                                              width: 11.86.sp,
                                                                                                              margin: EdgeInsets.only(right: 3.296.sp),
                                                                                                              // color:
                                                                                                              //     ccNeutral0, // background color
                                                                                                              child: Container(
                                                                                                                color: ccNeutral0,
                                                                                                                margin: EdgeInsets.only(left: 1),
                                                                                                                child: Center(
                                                                                                                  child: SvgPicture.asset(
                                                                                                                    "../assets/imges/keyboard.svg",
                                                                                                                    height: 5.2747.sp,
                                                                                                                    width: 5.2747.sp,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              )),
                                                                                                          hintText: "Creat a Report",
                                                                                                          hintStyle: TextStyle(
                                                                                                            color: ccPrimary300,
                                                                                                            fontSize: 3.956.sp,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(padding: EdgeInsets.only(bottom: 1.95.sp)),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                                cshorzSpace8,
                                                                                                SizedBox(
                                                                                                  width: 51.868.sp,
                                                                                                  height: 21.78868.sp,
                                                                                                  child: Column(
                                                                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.end,
                                                                                                    children: [
                                                                                                      Padding(padding: EdgeInsets.only(bottom: 3.95.sp)),
                                                                                                      TextField(
                                                                                                        enabled: false,
                                                                                                        style: const TextStyle(color: ccNutural550),
                                                                                                        controller: TextEditingController(text: "Sign Out"),
                                                                                                        decoration: InputDecoration(
                                                                                                          fillColor: ccNeutral0,
                                                                                                          filled: true,
                                                                                                          contentPadding: EdgeInsets.all(2.63.sp),
                                                                                                          // fillColor:
                                                                                                          //     ccBakground,
                                                                                                          border: OutlineInputBorder(
                                                                                                            borderRadius: BorderRadius.circular(1.0989.sp),
                                                                                                            borderSide: const BorderSide(
                                                                                                              color: ccPrimary300,
                                                                                                              width: 1,
                                                                                                            ),
                                                                                                          ),

                                                                                                          prefixIcon: Container(
                                                                                                              decoration:
                                                                                                                  // ignore: prefer_const_constructors
                                                                                                                  BoxDecoration(
                                                                                                                borderRadius: BorderRadius.only(
                                                                                                                  topLeft: Radius.circular(1.0989.sp),
                                                                                                                  bottomLeft: Radius.circular(1.0989.sp),
                                                                                                                ),
                                                                                                                border: Border.all(
                                                                                                                  color: ccPrimary300,
                                                                                                                  width: 1,
                                                                                                                ),
                                                                                                              ),
                                                                                                              clipBehavior: Clip.antiAlias,
                                                                                                              // color:
                                                                                                              //     ccNetural350,
                                                                                                              height: 10.109.sp,
                                                                                                              width: 11.86.sp,
                                                                                                              margin: EdgeInsets.only(right: 3.296.sp),
                                                                                                              // color:
                                                                                                              //     ccNeutral0, // background color
                                                                                                              child: Container(
                                                                                                                color: ccNeutral0,
                                                                                                                margin: EdgeInsets.only(left: 1),
                                                                                                                child: Center(
                                                                                                                  child: SvgPicture.asset(
                                                                                                                    "../assets/imges/key.svg",
                                                                                                                    height: 5.2747.sp,
                                                                                                                    width: 5.2747.sp,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              )
                                                                                                              // icon
                                                                                                              ),
                                                                                                          hintText: "Sign Out",
                                                                                                          hintStyle: TextStyle(
                                                                                                            color: ccPrimary300,
                                                                                                            fontSize: 3.956.sp,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(padding: EdgeInsets.only(bottom: 1.95.sp)),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                                cshorzSpace1,
                                                                                              ],
                                                                                            ),
                                                                                            csvertSpace8,
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              140.sp,
                                                                          child:
                                                                              Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children: [
                                                                              Text(
                                                                                'Sales Report',
                                                                                style: GoogleFonts.sen(
                                                                                  color: ccNutural550,
                                                                                  fontSize: 5.714.sp,
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  height:
                                                                      10.62.sp,
                                                                  width: 10.sp,
                                                                  child:
                                                                      ElevatedButton(
                                                                    onPressed:
                                                                        () {
                                                                      Navigator.pop(
                                                                          context);
                                                                    },
                                                                    style: ElevatedButton
                                                                        .styleFrom(
                                                                      backgroundColor:
                                                                          ccNeutral0,
                                                                      elevation:
                                                                          0,
                                                                      shadowColor:
                                                                          Colors
                                                                              .transparent,
                                                                    ),
                                                                    child: SvgPicture
                                                                        .asset(
                                                                      "../assets/imges/close.svg",
                                                                      height:
                                                                          4.615
                                                                              .sp,
                                                                      width: 4.615
                                                                          .sp,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            color: ccDanger100,
                                                            padding:
                                                                EdgeInsets.only(
                                                              left: 5.sp,
                                                              right: 1.sp,
                                                            ),
                                                            child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsets.only(
                                                                      top: 4.83
                                                                          .sp),
                                                                ),
                                                                csvertSpace4,
                                                                Row(
                                                                  children: [
                                                                    SizedBox(
                                                                      width:
                                                                          45.sp,
                                                                      child:
                                                                          Text(
                                                                        'From',
                                                                        style: GoogleFonts
                                                                            .sen(
                                                                          color:
                                                                              ccNutural550,
                                                                          fontSize:
                                                                              5.7142.sp,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          72.sp,
                                                                      child:
                                                                          TextFeildWidget(
                                                                        hint:
                                                                            'Sept 02,2022',
                                                                      ),
                                                                    ),
                                                                    cshorzSpace7,
                                                                    SizedBox(
                                                                      width:
                                                                          45.sp,
                                                                      child:
                                                                          TextFeildWidget(
                                                                        hint:
                                                                            '10:00',
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                csvertSpace4,
                                                                Row(
                                                                  children: [
                                                                    SizedBox(
                                                                      width:
                                                                          45.sp,
                                                                      child:
                                                                          Text(
                                                                        'Till',
                                                                        style: GoogleFonts
                                                                            .sen(
                                                                          color:
                                                                              ccNutural550,
                                                                          fontSize:
                                                                              5.7142.sp,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          72.sp,
                                                                      child:
                                                                          TextFeildWidget(
                                                                        hint:
                                                                            'Sept 02,2022',
                                                                      ),
                                                                    ),
                                                                    cshorzSpace7,
                                                                    SizedBox(
                                                                      width:
                                                                          45.sp,
                                                                      child:
                                                                          TextFeildWidget(
                                                                        hint:
                                                                            '30:00',
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                csvertSpace4,
                                                                Row(
                                                                  children: [
                                                                    SizedBox(
                                                                      width:
                                                                          45.sp,
                                                                      child:
                                                                          Text(
                                                                        'Cashier',
                                                                        style: GoogleFonts
                                                                            .sen(
                                                                          color:
                                                                              ccNutural550,
                                                                          fontSize:
                                                                              5.7142.sp,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      width: 121.50
                                                                          .sp,
                                                                      height:
                                                                          10.1648
                                                                              .sp,
                                                                      padding:
                                                                          EdgeInsets
                                                                              .only(
                                                                        left: 4.153
                                                                            .sp,
                                                                        right: 1.318
                                                                            .sp,
                                                                        // top: 1.5.sp
                                                                      ),
                                                                      decoration:
                                                                          ShapeDecoration(
                                                                        color:
                                                                            ccNeutral0,
                                                                        shape:
                                                                            RoundedRectangleBorder(
                                                                          side:
                                                                              const BorderSide(
                                                                            width:
                                                                                2,
                                                                            style:
                                                                                BorderStyle.solid,
                                                                            color:
                                                                                ccPrimary300,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.all(Radius.circular(1.0989.sp)),
                                                                        ),
                                                                      ),
                                                                      child: DropdownButton<
                                                                          String>(
                                                                        value:
                                                                            dropdownValue,
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .keyboard_arrow_down,
                                                                          color:
                                                                              ccNutural550,
                                                                          size:
                                                                              5.395.sp,
                                                                        ),
                                                                        elevation:
                                                                            16,
                                                                        isExpanded:
                                                                            true,
                                                                        // isDense: true,
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              ccNutural550,
                                                                          fontSize:
                                                                              3.956.sp,
                                                                        ),
                                                                        underline:
                                                                            Container(
                                                                          height:
                                                                              0.0,
                                                                          color:
                                                                              Colors.transparent,
                                                                        ),
                                                                        onChanged:
                                                                            (String?
                                                                                newValue) {
                                                                          // setState(() {
                                                                          //   dropdownValue = newValue!;
                                                                          // });
                                                                        },
                                                                        items: <
                                                                            String>[
                                                                          'Supplies',
                                                                          'Cash Shifts',
                                                                        ].map<
                                                                            DropdownMenuItem<
                                                                                String>>((String
                                                                            value) {
                                                                          return DropdownMenuItem<
                                                                              String>(
                                                                            value:
                                                                                value,
                                                                            child:
                                                                                Text(value),
                                                                          );
                                                                        }).toList(),
                                                                        dropdownColor:
                                                                            ccNeutral0,
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                                
                                                                
                                                                csvertSpace4,
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    actions: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .only(
                                                            left: 3.sp,
                                                          )),
                                                          Container(
                                                            height: 9.25.sp,
                                                            width: 46.5934.sp,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          1.098
                                                                              .sp),
                                                              border: Border.all(
                                                                  color:
                                                                      ccDanger300),
                                                            ),
                                                            child:
                                                                ElevatedButton
                                                                    .icon(
                                                              onPressed: () {
                                                                Navigator.pop(
                                                                    context);
                                                                // model
                                                                //     .goToDashboard();
                                                              },
                                                              style:
                                                                  ElevatedButton
                                                                      .styleFrom(
                                                                backgroundColor:
                                                                    ccDanger300,
                                                                elevation: 0,
                                                                shadowColor: Colors
                                                                    .transparent,
                                                              ),
                                                              icon: SvgPicture
                                                                  .asset(
                                                                "../assets/imges/check-white.svg",
                                                                width: 4.17.sp,
                                                                height: 3.07.sp,
                                                              ),
                                                              label: Text(
                                                                'Create a report',
                                                                style:
                                                                    GoogleFonts
                                                                        .sen(
                                                                  color:
                                                                      ccNeutral0,
                                                                  fontSize:
                                                                      4.39.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              }),
                                          cshorzSpace8,
                                          SizedBox(
                                            width: 51.868.sp,
                                            height: 21.78868.sp,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 3.95.sp)),
                                                TextField(
                                                  enabled: false,
                                                  style: const TextStyle(
                                                      color: ccNutural550),
                                                  controller:
                                                      TextEditingController(
                                                          text: "Sign Out"),
                                                  decoration: InputDecoration(
                                                    fillColor: ccNeutral0,
                                                    filled: true,
                                                    contentPadding:
                                                        EdgeInsets.all(2.63.sp),
                                                    // fillColor:
                                                    //     ccBakground,
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              1.0989.sp),
                                                      borderSide:
                                                          const BorderSide(
                                                        color: ccPrimary300,
                                                        width: 1,
                                                      ),
                                                    ),

                                                    prefixIcon: Container(
                                                        decoration:
                                                            // ignore: prefer_const_constructors
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    1.0989.sp),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    1.0989.sp),
                                                          ),
                                                          border: Border.all(
                                                            color: ccPrimary300,
                                                            width: 1,
                                                          ),
                                                        ),
                                                        clipBehavior:
                                                            Clip.antiAlias,
                                                        // color:
                                                        //     ccNetural350,
                                                        height: 10.109.sp,
                                                        width: 11.86.sp,
                                                        margin: EdgeInsets.only(
                                                            right: 3.296.sp),
                                                        // color:
                                                        //     ccNeutral0, // background color
                                                        child: Container(
                                                          color: ccNeutral0,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 1),
                                                          child: Center(
                                                            child: SvgPicture
                                                                .asset(
                                                              "../assets/imges/key.svg",
                                                              height: 5.2747.sp,
                                                              width: 5.2747.sp,
                                                            ),
                                                          ),
                                                        )
                                                        // icon
                                                        ),
                                                    hintText: "Sign Out",
                                                    hintStyle: TextStyle(
                                                      color: ccPrimary300,
                                                      fontSize: 3.956.sp,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 1.95.sp)),
                                              ],
                                            ),
                                          ),
                                          cshorzSpace1,
                                        ],
                                      ),
                                      csvertSpace8,
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
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
