import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../app/app.router.dart';

class OrdersDetailsViewModel extends BaseViewModel {
  final NavigationService _nav = locator<NavigationService>();
  Future<void> init() async {}

  goToPage(String pageName) {
    switch (pageName) {
      case 'orders_details':
        return _nav.navigateTo(Routes.ordersDetailsView);
      case 'orders':
        return _nav.navigateTo(Routes.ordersView);
      case 'table':
        return _nav.navigateTo(Routes.tablesView);
      case 'select_table':
        return _nav.navigateTo(Routes.selectTableView);
      default:
        return;
    }
  }
}
