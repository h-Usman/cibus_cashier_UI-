import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.colors.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/TableTopHeader.widhet.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/footer.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/table_list.widget.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked/stacked.dart';

import './tables_view_model.dart';

class TablesView extends StatelessWidget {
  const TablesView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TablesViewModel>.reactive(
      viewModelBuilder: () => TablesViewModel(),
      onModelReady: (TablesViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        TablesViewModel model,
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
                                      TableListWidget(
                                        tName: 'Garden Table 2',
                                        status: false,
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
                      child: TableHeaderWidget(),
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
