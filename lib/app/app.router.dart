// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, unused_import, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../ui/views/change_order/change_order_view.dart';
import '../ui/views/items_of_section/items_of_section_view.dart';
import '../ui/views/login/login_view.dart';
import '../ui/views/orders/orders_view.dart';
import '../ui/views/orders_details/orders_details_view.dart';
import '../ui/views/pay/pay_view.dart';
import '../ui/views/registartion/registartion_view.dart';
import '../ui/views/select_table/select_table_view.dart';
import '../ui/views/tables/tables_view.dart';

class Routes {
  static const String payView = '/pay-view';
  static const String selectTableView = '/select-table-view';
  static const String ordersDetailsView = '/orders-details-view';
  static const String changeOrderView = '/change-order-view';
  static const String itemsOfSectionView = '/items-of-section-view';
  static const String ordersView = '/orders-view';
  static const String tablesView = '/tables-view';
  static const String registartionView = '/registartion-view';
  static const String loginView = '/';
  static const all = <String>{
    payView,
    selectTableView,
    ordersDetailsView,
    changeOrderView,
    itemsOfSectionView,
    ordersView,
    tablesView,
    registartionView,
    loginView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.payView, page: PayView),
    RouteDef(Routes.selectTableView, page: SelectTableView),
    RouteDef(Routes.ordersDetailsView, page: OrdersDetailsView),
    RouteDef(Routes.changeOrderView, page: ChangeOrderView),
    RouteDef(Routes.itemsOfSectionView, page: ItemsOfSectionView),
    RouteDef(Routes.ordersView, page: OrdersView),
    RouteDef(Routes.tablesView, page: TablesView),
    RouteDef(Routes.registartionView, page: RegistartionView),
    RouteDef(Routes.loginView, page: LoginView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    PayView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const PayView(),
        settings: data,
      );
    },
    SelectTableView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const SelectTableView(),
        settings: data,
      );
    },
    OrdersDetailsView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const OrdersDetailsView(),
        settings: data,
      );
    },
    ChangeOrderView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const ChangeOrderView(),
        settings: data,
      );
    },
    ItemsOfSectionView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const ItemsOfSectionView(),
        settings: data,
      );
    },
    OrdersView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const OrdersView(),
        settings: data,
      );
    },
    TablesView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const TablesView(),
        settings: data,
      );
    },
    RegistartionView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const RegistartionView(),
        settings: data,
      );
    },
    LoginView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const LoginView(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Extension for strongly typed navigation
/// *************************************************************************

extension NavigatorStateExtension on NavigationService {
  Future<dynamic> navigateToPayView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.payView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToSelectTableView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.selectTableView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToOrdersDetailsView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.ordersDetailsView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToChangeOrderView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.changeOrderView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToItemsOfSectionView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.itemsOfSectionView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToOrdersView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.ordersView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToTablesView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.tablesView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToRegistartionView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.registartionView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToLoginView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.loginView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }
}
