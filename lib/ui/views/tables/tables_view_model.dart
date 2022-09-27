import 'package:flutter_application_1/app/app.locator.dart';
import 'package:flutter_application_1/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class TablesViewModel extends BaseViewModel {
  final NavigationService _nav = locator<NavigationService>();
  Future<void> init() async {}

  goToPage(String pageName) {
    switch (pageName) {
      case 'orders_details':
        return _nav.navigateTo(Routes.ordersDetailsView);
      case 'orders':
        return _nav.navigateTo(Routes.ordersView);
      default:
        return;
    }
  }
}
