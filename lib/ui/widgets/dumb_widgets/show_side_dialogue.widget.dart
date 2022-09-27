import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.colors.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
import 'package:flutter_application_1/ui/theme/text.styles.dart';
import 'package:sizer/sizer.dart';

showSideDialogue({
  required BuildContext context,
  required String title,
  required Widget child,
  required Function saveButtonPressed,
  required String saveButtonText,
  // required String cancelButtonText,
}) {
  return showGeneralDialog(
      context: context,
      // barrierColor: Colors.black12.withOpacity(0.6), // Background color
      barrierDismissible: false,
      // barrierLabel: 'Dialog',
      transitionDuration: Duration(milliseconds: 400),
      pageBuilder: (_, __, ___) {
        return Row(
          children: [
            SizedBox(
              width: 50.w,
              // width: 136.263.sp,
            ),
            Material(
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                  // borderRadius: BorderRadius.only(
                  //   topLeft: Radius.circular(8.sp),
                  //   bottomLeft: Radius.circular(8.sp),
                  // ),
                  ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: ccLightBackground,
                ),
                // width: 136.263.sp,
                width: 50.w,
                child: Stack(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          csvertSpace12,
                          child,
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(2.sp, 2.sp, 4.sp, 2.sp),
                        child: Row(
                          children: [
                            cshorzSpace8,
                            Text(
                              title,
                              style: ctsHeading4.copyWith(
                                color: ccDanger300,
                                fontSize: 5.714.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        padding: EdgeInsets.only(bottom: 3.sp, right: 3.sp),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              padding: EdgeInsets.all(5.sp),
                              child: InkWell(
                                child: Text(
                                  'Cancel',
                                  style: TextStyle(
                                    color: ccDanger300,
                                    fontSize: 4.3956.sp,
                                  ),
                                ),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                            // cshorzSpace8,
                            ElevatedButton(
                              onPressed: () => saveButtonPressed("Great"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: ccDanger300,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(2.1978.sp),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    // height: 18.sp,
                                    height: 11.648.sp,
                                    child: Center(
                                      child: Text(
                                        saveButtonText,
                                        style: TextStyle(
                                            color: ccNeutral0,
                                            fontSize: 4.3956.sp,
                                            fontWeight: FontWeight.w400),
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
              ),
            ),
          ],
        );
      });
}
