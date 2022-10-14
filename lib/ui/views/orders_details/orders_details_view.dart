import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/footer.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/order_details_list.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/ordersTabs/orders_tab.widget.dart';
import 'package:flutter_svg/svg.dart';
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
                                                  onTap: () {
                                                    model.goToPage('orders');
                                                  },
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
                                                width: 30.3.sp,
                                                child: Text(
                                                  "ID",
                                                  style: GoogleFonts.sen(
                                                    color: ccDanger300,
                                                    fontSize: 5.7142.sp,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
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
                                                width: 36.46.sp,
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
                                              SizedBox(
                                                width: 30.1758.sp,
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
                                                  goToPageRequested: (val) =>
                                                      {model.goToPage(val)},
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
