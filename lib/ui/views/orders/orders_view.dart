import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.colors.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/order_list_item.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/question_textfeild.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/textarea.widget.dart';
import 'package:stacked/stacked.dart';

import '../../widgets/dumb_widgets/top_header.widget.dart';
import './orders_view_model.dart';
import 'package:flutter_svg/svg.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class OrdersView extends StatelessWidget {
  final bool selectOrder = true;
  const OrdersView({
    Key? key,
  }) : super(key: key);

  get goToModalRequested => null;

  get selected => null;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OrdersViewModel>.reactive(
      viewModelBuilder: () => OrdersViewModel(),
      onModelReady: (OrdersViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        OrdersViewModel model,
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
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          color: ccNeutral0,
                                          width: 50.w,
                                          height: 100.h - 14.sp,
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 15.3846.sp,
                                                decoration: const BoxDecoration(
                                                  color: ccNeutral0,
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
                                                      width: 66.373.sp,
                                                      child: Text(
                                                        "Item Name",
                                                        style: GoogleFonts.sen(
                                                          color: ccDanger300,
                                                          fontSize: 3.736.sp,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 36.2612.sp,
                                                      child: Center(
                                                        child: Text(
                                                          "Quantity",
                                                          style:
                                                              GoogleFonts.sen(
                                                            color: ccDanger300,
                                                            fontSize: 3.736.sp,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 25.0549.sp,
                                                      child: Text(
                                                        "Price",
                                                        style: GoogleFonts.sen(
                                                          color: ccDanger300,
                                                          fontSize: 3.736.sp,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      child: Text(
                                                        "Total",
                                                        style: GoogleFonts.sen(
                                                          color: ccDanger300,
                                                          fontSize: 3.736.sp,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 100.h - 72.967.sp,
                                                child: ListView.builder(
                                                    itemCount: 18,
                                                    itemBuilder:
                                                        (context, index) {
                                                      return OrderListItemWidget(
                                                        iName: 'Gazpacho',
                                                        iType: 'Medium',
                                                        price: '20.00',
                                                        total: '20.00',
                                                        tPrice: '20.00',
                                                      );
                                                    }),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  padding: EdgeInsets.only(
                                                      left: 3.sp, right: 3.sp),
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: ccNeutral0,
                                                    border: Border(
                                                      top: BorderSide(
                                                          color: ccNatural250,
                                                          width: 1),
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      ExpansionTile(
                                                        tilePadding:
                                                            EdgeInsets.only(
                                                                left: 0,
                                                                top: 0,
                                                                right: 0),
                                                        collapsedIconColor:
                                                            ccDanger300,
                                                        iconColor: ccDanger300,
                                                        initiallyExpanded: true,
                                                        title: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              "Items Total",
                                                              style: GoogleFonts
                                                                  .sen(
                                                                color:
                                                                    ccNutural550,
                                                                fontSize:
                                                                    4.3956.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
                                                            ),
                                                            Text(
                                                              "RM 50.00",
                                                              style: GoogleFonts
                                                                  .sen(
                                                                color:
                                                                    ccNutural550,
                                                                fontSize:
                                                                    4.3956.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                "Service Tax @ 6%",
                                                                style:
                                                                    GoogleFonts
                                                                        .sen(
                                                                  color:
                                                                      ccNutural550,
                                                                  fontSize:
                                                                      4.3956.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                ),
                                                              ),
                                                              Text(
                                                                "RM 3.00",
                                                                style:
                                                                    GoogleFonts
                                                                        .sen(
                                                                  color:
                                                                      ccNutural550,
                                                                  fontSize:
                                                                      4.3956.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          csvertSpace2
                                                        ],
                                                      ),
                                                      csvertSpace2,
                                                      Row(
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
                                                                GoogleFonts.sen(
                                                              color:
                                                                  ccNutural550,
                                                              fontSize:
                                                                  4.3956.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                            ),
                                                          ),
                                                          Text(
                                                            "RM 58.00",
                                                            style:
                                                                GoogleFonts.sen(
                                                              color:
                                                                  ccNutural550,
                                                              fontSize:
                                                                  4.3956.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      csvertSpace4,
                                                      Row(
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
                                                                    .center,
                                                            children: [
                                                              Container(
                                                                // height:
                                                                //     11.648.sp,
                                                                // width: 70.1.sp,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          2.1978
                                                                              .sp),
                                                                  border: Border
                                                                      .all(
                                                                    color:
                                                                        ccNutural550,
                                                                  ),
                                                                ),
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                child:
                                                                    DropdownButton(
                                                                  dropdownColor:
                                                                      ccNeutral0,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          2.1978
                                                                              .sp),
                                                                  icon:
                                                                      SvgPicture
                                                                          .asset(
                                                                    "../assets/imges/elipse-h.svg",
                                                                    height:
                                                                        0.8615
                                                                            .sp,
                                                                  ),
                                                                  underline:
                                                                      Container(
                                                                    height: 0.0,
                                                                    color: Colors
                                                                        .transparent,
                                                                  ),
                                                                  elevation: 0,
                                                                  items: [
                                                                    DropdownMenuItem(
                                                                      value:
                                                                          "Leave Comment",
                                                                      child:
                                                                          SizedBox(
                                                                        width: 35
                                                                            .sp,
                                                                        child:
                                                                            InkWell(
                                                                          child:
                                                                              Row(
                                                                            children: [
                                                                              Container(
                                                                                decoration: BoxDecoration(
                                                                                  borderRadius: BorderRadius.circular(2.1978.sp),
                                                                                ),
                                                                                child: Row(
                                                                                  children: [
                                                                                    Text(
                                                                                      "Leave Comment",
                                                                                      style: GoogleFonts.sen(
                                                                                        color: ccNutural550,
                                                                                        fontSize: 4.3956.sp,
                                                                                        fontWeight: FontWeight.w400,
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ],
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
                                                                                  height: 55.50.sp,
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
                                                                                          // top: 2.sp,
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
                                                                                                            'Receipt Comment',
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
                                                                                            TextAreaWidget(
                                                                                              hint: 'Enter your cpmment here...',
                                                                                              lebel: '',
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
                                                                                        left: 5.sp,
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
                                                                                            'Save',
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
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    DropdownMenuItem(
                                                                      value:
                                                                          "Change Table",
                                                                      child:
                                                                          Row(
                                                                        children: [
                                                                          Text(
                                                                            "Change Table",
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              color: ccNutural550,
                                                                              fontSize: 4.3956.sp,
                                                                              fontWeight: FontWeight.w400,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    DropdownMenuItem(
                                                                      value:
                                                                          "Change Order Type",
                                                                      child:
                                                                          InkWell(
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Text(
                                                                              "Change Order Type",
                                                                              style: GoogleFonts.sen(
                                                                                color: ccNutural550,
                                                                                fontSize: 4.3956.sp,
                                                                                fontWeight: FontWeight.w400,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        onTap:
                                                                            () {
                                                                          model.goToPage(
                                                                              'change_order');
                                                                        },
                                                                      ),
                                                                    ),
                                                                    DropdownMenuItem(
                                                                      value:
                                                                          "Clear Order",
                                                                      child:
                                                                          InkWell(
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Text(
                                                                              "Clear Order",
                                                                              style: GoogleFonts.sen(
                                                                                color: ccNutural550,
                                                                                fontSize: 4.3956.sp,
                                                                                fontWeight: FontWeight.w400,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        onTap:
                                                                            () {
                                                                          Navigator.pop(
                                                                              context);
                                                                          showDialog(
                                                                            context:
                                                                                context,
                                                                            barrierDismissible:
                                                                                false,
                                                                            builder: (_) =>
                                                                                AlertDialog(
                                                                              contentPadding: EdgeInsets.zero,
                                                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2.197.sp))),
                                                                              content: Container(
                                                                                width: 183.076.sp,
                                                                                height: 33.50.sp,
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
                                                                                                          'Enter Admin Password',
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
                                                                                          csvertSpace3,
                                                                                          TextFeildWidget(
                                                                                            hint: 'Enter your password',
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
                                                                                      left: 5.sp,
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
                                                                                          'Confirm',
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
                                                                        },
                                                                      ),
                                                                    ),
                                                                    DropdownMenuItem(
                                                                      value:
                                                                          "Merge Order",
                                                                      child:
                                                                          Row(
                                                                        children: [
                                                                          Text(
                                                                            "Merge Order",
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              color: ccNutural550,
                                                                              fontSize: 4.3956.sp,
                                                                              fontWeight: FontWeight.w400,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                  onChanged:
                                                                      (value) {},
                                                                ),
                                                              ),
                                                              cshorzSpace5,
                                                              Container(
                                                                height:
                                                                    11.648.sp,
                                                                width:
                                                                    22.41758.sp,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          2.1978
                                                                              .sp),
                                                                  border: Border
                                                                      .all(
                                                                    color:
                                                                        ccNutural550,
                                                                  ),
                                                                ),
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                child:
                                                                    Container(
                                                                  color:
                                                                      ccNeutral0,
                                                                  child:
                                                                      FloatingActionButton(
                                                                    onPressed:
                                                                        () {
                                                                      // do your thing here
                                                                    },
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              2.1978.sp),
                                                                    ),
                                                                    backgroundColor:
                                                                        ccNeutral0,
                                                                    child: SvgPicture
                                                                        .asset(
                                                                      "../assets/imges/print.svg",
                                                                      width: 3.73
                                                                          .sp,
                                                                      height:
                                                                          3.73.sp,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            height: 11.648.sp,
                                                            width: 52.527.sp,
                                                            child:
                                                                ElevatedButton(
                                                              style:
                                                                  ElevatedButton
                                                                      .styleFrom(
                                                                backgroundColor:
                                                                    ccDanger300,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
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
                                                                        4.3956
                                                                            .sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      csvertSpace2,
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          color: ccDanger100,
                                          width: 50.w,
                                          height: 100.h - 64,
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 13.sp,
                                                padding:
                                                    EdgeInsets.only(left: 3.sp),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "All Products",
                                                      style: GoogleFonts.sen(
                                                        color: ccNutural550,
                                                        fontSize: 3.7362.sp,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                    Container(
                                                      padding: EdgeInsets.only(
                                                        right: 4.5.sp,
                                                        // bottom: 5.sp,
                                                      ),
                                                      width: 68.131.sp,
                                                      height: 7.47.sp,
                                                      child: TextField(
                                                        textAlign:
                                                            TextAlign.left,
                                                        decoration:
                                                            InputDecoration(
                                                          border:
                                                              OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        1.098
                                                                            .sp),
                                                          ),
                                                          contentPadding:
                                                              EdgeInsets.all(
                                                                  2.197.sp),
                                                          filled: true,
                                                          hintStyle:
                                                              const TextStyle(
                                                            color: ccNutural550,
                                                          ),
                                                          hintText:
                                                              "Type to Search",
                                                          fillColor: ccNeutral0,
                                                          suffixIcon: Container(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    2.sp),
                                                            child: SvgPicture
                                                                .asset(
                                                              "../assets/imges/search.svg",
                                                              width: 3.736.sp,
                                                              height: 3.736.sp,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Wrap(
                                                  spacing: 4.sp,
                                                  runSpacing: 4.sp,
                                                  children: [
                                                    InkWell(
                                                      child: Container(
                                                        width: 31.42857.sp,
                                                        height: 32.967.sp,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      2.2.sp),
                                                          border: Border.all(
                                                            width: 0.5,
                                                            color: ccNutural550,
                                                          ),
                                                        ),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                              width: 42.857.sp,
                                                              height:
                                                                  23.51648.sp,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color:
                                                                    ccNeutral0,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  topRight: Radius
                                                                      .circular(
                                                                          2.2.sp),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          2.2.sp),
                                                                ),
                                                              ),
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              child:
                                                                  Image.asset(
                                                                "../assets/imges/sect.png",
                                                                width:
                                                                    31.42857.sp,
                                                                height:
                                                                    23.51648.sp,
                                                              ),
                                                            ),
                                                            Container(
                                                              height:
                                                                  9.100549.sp,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color:
                                                                    ccNeutral0,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          2.2.sp),
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          2.2.sp),
                                                                ),
                                                              ),
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  cshorzSpace2,
                                                                  Text(
                                                                    "Starters",
                                                                    style:
                                                                        GoogleFonts
                                                                            .sen(
                                                                      color:
                                                                          ccDanger300,
                                                                      fontSize:
                                                                          3.5164
                                                                              .sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      onTap: () {
                                                        model.goToPage(
                                                            'items_of_section');
                                                      },
                                                    ),
                                                    Container(
                                                      width: 31.42857.sp,
                                                      height: 32.967.sp,
                                                      decoration: BoxDecoration(
                                                        // color: ccSuccess800,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    2.2.sp),
                                                        border: Border.all(
                                                          width: 0.5,
                                                          color: ccNutural550,
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            width: 42.857.sp,
                                                            height: 23.51648.sp,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  ccNatural250,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                topRight: Radius
                                                                    .circular(
                                                                        2.2.sp),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        2.2.sp),
                                                              ),
                                                            ),
                                                            child: Center(
                                                              child: Text(
                                                                "SA",
                                                                style:
                                                                    GoogleFonts
                                                                        .sen(
                                                                  color:
                                                                      ccNutural550,
                                                                  fontSize:
                                                                      13.1868
                                                                          .sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            height: 9.100549.sp,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: ccNeutral0,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        2.2.sp),
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        2.2.sp),
                                                              ),
                                                            ),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                cshorzSpace2,
                                                                Text(
                                                                  "Salads",
                                                                  style:
                                                                      GoogleFonts
                                                                          .sen(
                                                                    color:
                                                                        ccDanger300,
                                                                    fontSize:
                                                                        3.5164
                                                                            .sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 31.42857.sp,
                                                      height: 32.967.sp,
                                                      decoration: BoxDecoration(
                                                        // color: ccSuccess800,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    2.2.sp),
                                                        border: Border.all(
                                                          width: 0.5,
                                                          color: ccNutural550,
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            width: 42.857.sp,
                                                            height: 23.51648.sp,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  ccNatural250,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                topRight: Radius
                                                                    .circular(
                                                                        2.2.sp),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        2.2.sp),
                                                              ),
                                                            ),
                                                            child: Center(
                                                              child: Text(
                                                                "MC",
                                                                style:
                                                                    GoogleFonts
                                                                        .sen(
                                                                  color:
                                                                      ccNutural550,
                                                                  fontSize:
                                                                      13.1868
                                                                          .sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            height: 9.100549.sp,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: ccNeutral0,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        2.2.sp),
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        2.2.sp),
                                                              ),
                                                            ),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                cshorzSpace2,
                                                                Text(
                                                                  "Main Course",
                                                                  style:
                                                                      GoogleFonts
                                                                          .sen(
                                                                    color:
                                                                        ccDanger300,
                                                                    fontSize:
                                                                        3.5164
                                                                            .sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 31.42857.sp,
                                                      height: 32.967.sp,
                                                      decoration: BoxDecoration(
                                                        // color: ccSuccess800,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    2.2.sp),
                                                        border: Border.all(
                                                          width: 0.5,
                                                          color: ccNutural550,
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            width: 42.857.sp,
                                                            height: 23.51648.sp,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  ccNatural250,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                topRight: Radius
                                                                    .circular(
                                                                        2.2.sp),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        2.2.sp),
                                                              ),
                                                            ),
                                                            child: Center(
                                                              child: Text(
                                                                "DR",
                                                                style:
                                                                    GoogleFonts
                                                                        .sen(
                                                                  color:
                                                                      ccNutural550,
                                                                  fontSize:
                                                                      13.1868
                                                                          .sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            height: 9.100549.sp,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: ccNeutral0,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        2.2.sp),
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        2.2.sp),
                                                              ),
                                                            ),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                cshorzSpace2,
                                                                Text(
                                                                  "Drinks",
                                                                  style:
                                                                      GoogleFonts
                                                                          .sen(
                                                                    color:
                                                                        ccDanger300,
                                                                    fontSize:
                                                                        3.5164
                                                                            .sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ]),
                                            ],
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
                          child: TopHeaderWidget(),
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
