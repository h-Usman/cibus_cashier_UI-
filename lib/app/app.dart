import 'package:flutter_application_1/ui/views/change_order/change_order_view.dart';
import 'package:flutter_application_1/ui/views/items_of_section/items_of_section_view.dart';
import 'package:flutter_application_1/ui/views/login/login_view.dart';
import 'package:flutter_application_1/ui/views/orders/orders_view.dart';
import 'package:flutter_application_1/ui/views/orders_details/orders_details_view.dart';
import 'package:flutter_application_1/ui/views/pay/pay_view.dart';
import 'package:flutter_application_1/ui/views/registartion/registartion_view.dart';
import 'package:flutter_application_1/ui/views/select_table/select_table_view.dart';
import 'package:flutter_application_1/ui/views/tables/tables_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    // uses pages
    MaterialRoute(page: PayView),
    MaterialRoute(page: SelectTableView),
    MaterialRoute(page: OrdersDetailsView),
    MaterialRoute(page: ChangeOrderView),
    MaterialRoute(page: ItemsOfSectionView),
    MaterialRoute(page: OrdersView),
    MaterialRoute(page: TablesView),
    MaterialRoute(page: RegistartionView),
    MaterialRoute(page: LoginView, initial: true),
  ],
  dependencies: [Singleton(classType: NavigationService)],
  logger: StackedLogger(),
)
class App {}
