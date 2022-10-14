import 'package:flutter_application_1/app/app.locator.dart';
import 'package:flutter_application_1/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ChangeOrderViewModel extends BaseViewModel {
  final NavigationService _nav = locator<NavigationService>();
  Future<void> init() async {}

  goToPage(String pageName) {
    switch (pageName) {
      case 'order':
        return _nav.navigateTo(Routes.ordersView);
      case 'select_table':
        return _nav.navigateTo(Routes.selectTableView);
      case 'orders':
        return _nav.navigateTo(Routes.ordersView);
      case 'pay':
        return _nav.navigateTo(Routes.payView);
      default:
        return;
    }
  }
}
