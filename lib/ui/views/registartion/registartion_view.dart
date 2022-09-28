import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.colors.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/footer.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/question_textfeild.widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked/stacked.dart';

import './registartion_view_model.dart';

class RegistartionView extends StatelessWidget {
  const RegistartionView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RegistartionViewModel>.reactive(
      viewModelBuilder: () => RegistartionViewModel(),
      onModelReady: (RegistartionViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        RegistartionViewModel model,
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
                                  Text(
                                    "Chef N Stuff",
                                    style: GoogleFonts.sen(
                                      color: ccDanger300,
                                      fontSize: 5.7142.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  csvertSpace2,
                                  Text(
                                    "Register in “Chef n Stuff” ",
                                    style: GoogleFonts.sen(
                                      color: ccNutural550,
                                      fontSize: 5.7142.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 100.h - 32.sp,
                              // color: Colors.amber,
                              width: 100.w,
                              child: Center(
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      // csvertSpace8,
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                              height: 5.7142.sp,
                                              width: 5.7142.sp,
                                              decoration: BoxDecoration(
                                                color: ccNeutral270,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        3.296.sp),
                                              )),
                                          cshorzSpace4,
                                          Container(
                                              height: 5.7142.sp,
                                              width: 5.7142.sp,
                                              decoration: BoxDecoration(
                                                color: ccNeutral270,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        3.296.sp),
                                              )),
                                          cshorzSpace4,
                                          Container(
                                              height: 5.7142.sp,
                                              width: 5.7142.sp,
                                              decoration: BoxDecoration(
                                                color: ccNeutral270,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        3.296.sp),
                                              )),
                                          cshorzSpace4,
                                          Container(
                                              height: 5.7142.sp,
                                              width: 5.7142.sp,
                                              decoration: BoxDecoration(
                                                color: ccNeutral270,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        3.296.sp),
                                              )),
                                        ],
                                      ),
                                      csvertSpace8,
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
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: ccNeutral0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                    side: BorderSide(
                                                      color: ccPrimary300,
                                                      width: 1,
                                                    ),
                                                  ),
                                                ),
                                                onPressed: () {},
                                                child: Text(
                                                  '1',
                                                  style: TextStyle(
                                                      fontSize: 5.05.sp,
                                                      color: ccNutural550,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              )),
                                          cshorzSpace4,
                                          SizedBox(
                                              height: 19.560.sp,
                                              width: 19.560.sp,
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: ccNeutral0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                    side: BorderSide(
                                                      color: ccPrimary300,
                                                      width: 1,
                                                    ),
                                                  ),
                                                ),
                                                onPressed: () {},
                                                child: Text(
                                                  '2',
                                                  style: TextStyle(
                                                      fontSize: 5.05.sp,
                                                      color: ccNutural550,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              )),
                                          cshorzSpace4,
                                          SizedBox(
                                              height: 19.560.sp,
                                              width: 19.560.sp,
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: ccNeutral0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                    side: BorderSide(
                                                      color: ccPrimary300,
                                                      width: 1,
                                                    ),
                                                  ),
                                                ),
                                                onPressed: () {},
                                                child: Text(
                                                  '3',
                                                  style: TextStyle(
                                                      color: ccNutural550,
                                                      fontSize: 5.05.sp,
                                                      fontWeight:
                                                          FontWeight.bold),
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
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: ccNeutral0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                    side: BorderSide(
                                                      color: ccPrimary300,
                                                      width: 1,
                                                    ),
                                                  ),
                                                ),
                                                onPressed: () {},
                                                child: Text(
                                                  '4',
                                                  style: TextStyle(
                                                      color: ccNutural550,
                                                      fontSize: 5.05.sp,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              )),
                                          cshorzSpace4,
                                          SizedBox(
                                              height: 19.560.sp,
                                              width: 19.560.sp,
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: ccNeutral0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                    side: BorderSide(
                                                      color: ccPrimary300,
                                                      width: 1,
                                                    ),
                                                  ),
                                                ),
                                                onPressed: () {},
                                                child: Text(
                                                  '5',
                                                  style: TextStyle(
                                                      color: ccNutural550,
                                                      fontSize: 5.05.sp,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              )),
                                          cshorzSpace4,
                                          SizedBox(
                                              height: 19.560.sp,
                                              width: 19.560.sp,
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: ccNeutral0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                    side: BorderSide(
                                                      color: ccPrimary300,
                                                      width: 1,
                                                    ),
                                                  ),
                                                ),
                                                onPressed: () {},
                                                child: Text(
                                                  '6',
                                                  style: TextStyle(
                                                      color: ccNutural550,
                                                      fontSize: 5.05.sp,
                                                      fontWeight:
                                                          FontWeight.bold),
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
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: ccNeutral0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                    side: BorderSide(
                                                      color: ccPrimary300,
                                                      width: 1,
                                                    ),
                                                  ),
                                                ),
                                                onPressed: () {},
                                                child: Text(
                                                  '7',
                                                  style: TextStyle(
                                                      color: ccNutural550,
                                                      fontSize: 5.05.sp,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              )),
                                          cshorzSpace4,
                                          SizedBox(
                                              height: 19.560.sp,
                                              width: 19.560.sp,
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: ccNeutral0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                    side: BorderSide(
                                                      color: ccPrimary300,
                                                      width: 1,
                                                    ),
                                                  ),
                                                ),
                                                onPressed: () {},
                                                child: Text(
                                                  '8',
                                                  style: TextStyle(
                                                      color: ccNutural550,
                                                      fontSize: 5.05.sp,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              )),
                                          cshorzSpace4,
                                          SizedBox(
                                              height: 19.560.sp,
                                              width: 19.560.sp,
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: ccNeutral0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                    side: BorderSide(
                                                      color: ccPrimary300,
                                                      width: 1,
                                                    ),
                                                  ),
                                                ),
                                                onPressed: () {},
                                                child: Text(
                                                  '9',
                                                  style: TextStyle(
                                                      color: ccNutural550,
                                                      fontSize: 5.05.sp,
                                                      fontWeight:
                                                          FontWeight.bold),
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
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: ccNeutral0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                    side: BorderSide(
                                                      color: ccPrimary300,
                                                      width: 1,
                                                    ),
                                                  ),
                                                ),
                                                onPressed: () => showDialog(
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
                                                      height: 58.20.sp,
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
                                                                                'Start cash Shift',
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
                                                                            'To better manage your cash flows, please count of cash in the cashbox and open ',
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              color: ccNutural550,
                                                                              fontSize: 4.3956.sp,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            'the cash shift.',
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
                                                                csvertSpace3,
                                                                SizedBox(
                                                                  width: 100.w,
                                                                  child:
                                                                      TextFeildWidget(
                                                                    hint:
                                                                        'Balance',
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
                                                            left: 5.sp,
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
                                                                model
                                                                    .goToDashboard();
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
                                                                'Open',
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
                                                ),
                                                child: Text(
                                                  'Clear',
                                                  style: TextStyle(
                                                      color: ccNutural550,
                                                      fontSize: 4.3956.sp,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              )),
                                          cshorzSpace4,
                                          SizedBox(
                                              height: 19.560.sp,
                                              width: 19.560.sp,
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: ccNeutral0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                    side: BorderSide(
                                                      color: ccPrimary300,
                                                      width: 1,
                                                    ),
                                                  ),
                                                ),
                                                onPressed: () {},
                                                child: Text(
                                                  '0',
                                                  style: TextStyle(
                                                      color: ccNutural550,
                                                      fontSize: 5.05.sp,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              )),
                                          cshorzSpace4,
                                          SizedBox(
                                              height: 19.560.sp,
                                              width: 19.560.sp,
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: ccNeutral0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                    side: BorderSide(
                                                      color: ccPrimary300,
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
                                      csvertSpace8,
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Please enter correct PIN",
                                            style: GoogleFonts.sen(
                                              color: ccDanger300,
                                              fontSize: 5.7142.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ]),
                    ),
                    // Align(
                    //   alignment: Alignment.topCenter,
                    //   child: TopHeaderWidget(),
                    // ),
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
