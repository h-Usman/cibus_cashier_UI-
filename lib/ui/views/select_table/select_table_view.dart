import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.colors.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/footer.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/selectTable_top_header.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/table_list.widget.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked/stacked.dart';

import './select_table_view_model.dart';

class SelectTableView extends StatelessWidget {
  const SelectTableView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SelectTableViewModel>.reactive(
      viewModelBuilder: () => SelectTableViewModel(),
      onModelReady: (SelectTableViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        SelectTableViewModel model,
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
                                left: 3.29.sp,
                                right: 3.29.sp,
                                top: 3.29.sp,
                              ),
                              // height: 12.sp,
                              color: ccNeutral0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Wrap(
                                    spacing: 5.23.sp,
                                    runSpacing: 5.23.sp,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          model.goToPage('orders');
                                        },
                                        child: TableListWidget(
                                          tName: 'Garden Table 1',
                                          status: true,
                                        ),
                                      ),
                                      InkWell(
                                        child: TableListWidget(
                                          tName: 'Garden Table 2',
                                          status: false,
                                        ),
                                        onTap: () => showDialog(
                                          context: context,
                                          barrierDismissible: false,
                                          builder: (_) => AlertDialog(
                                            contentPadding: EdgeInsets.zero,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(2.197.sp))),
                                            content: Container(
                                              width: 183.076.sp,
                                              height: 29.10.sp,
                                              decoration: const BoxDecoration(
                                                  border: Border(
                                                      bottom: BorderSide(
                                                width: 0.5,
                                                color: ccNatural250,
                                              ))),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                      left: 3.sp,
                                                      right: 1.sp,
                                                      top: 2.sp,
                                                    ),
                                                    decoration:
                                                        const BoxDecoration(
                                                            border: Border(
                                                                bottom:
                                                                    BorderSide(
                                                      width: 0.5,
                                                      color: ccNatural250,
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
                                                          child: Container(
                                                            height: 10.62.sp,
                                                            color: ccNeutral0,
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                SizedBox(
                                                                  width: 153.sp,
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Text(
                                                                        'Select another table',
                                                                        style: GoogleFonts
                                                                            .sen(
                                                                          color:
                                                                              ccNutural550,
                                                                          fontSize:
                                                                              5.714.sp,
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
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            style:
                                                                ElevatedButton
                                                                    .styleFrom(
                                                              backgroundColor:
                                                                  ccNeutral0,
                                                              elevation: 0,
                                                              shadowColor: Colors
                                                                  .transparent,
                                                            ),
                                                            child: SvgPicture
                                                                .asset(
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
                                                    child: Container(
                                                      color: ccDanger100,
                                                      padding: EdgeInsets.only(
                                                        left: 3.sp,
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
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 4.83
                                                                        .sp),
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              SvgPicture.asset(
                                                                "../assets/imges/flag.svg",
                                                                width:
                                                                    4.3956.sp,
                                                                height:
                                                                    5.4945.sp,
                                                              ),
                                                              cshorzSpace2,
                                                              SizedBox(
                                                                // width: 140.sp,
                                                                child: Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'Selected table already have an open order. Please select another table.',
                                                                      style: GoogleFonts
                                                                          .sen(
                                                                        color:
                                                                            ccNutural550,
                                                                        fontSize:
                                                                            4.3956.sp,
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
                                                  ),
                                                ],
                                              ),
                                            ),
                                            actions: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                    left: 3.sp,
                                                  )),
                                                  Container(
                                                    height: 9.25.sp,
                                                    width: 29.23.sp,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              1.098.sp),
                                                      border: Border.all(
                                                          color: ccDanger300),
                                                    ),
                                                    child: ElevatedButton.icon(
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        backgroundColor:
                                                            ccDanger300,
                                                        elevation: 0,
                                                        shadowColor:
                                                            Colors.transparent,
                                                      ),
                                                      icon: SvgPicture.asset(
                                                        "../assets/imges/check-white.svg",
                                                        width: 4.17.sp,
                                                        height: 3.07.sp,
                                                      ),
                                                      label: Text(
                                                        'Close',
                                                        style: GoogleFonts.sen(
                                                          color: ccNeutral0,
                                                          fontSize: 4.39.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      TableListWidget(
                                        tName: 'Garden Table 3',
                                        status: false,
                                      ),
                                      TableListWidget(
                                        tName: 'Garden Table 4',
                                        status: false,
                                      ),
                                    ],
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
                      child: SelectTableHeaderWidget(),
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
