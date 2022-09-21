import 'package:flutter_application_1/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class RegistartionViewModel extends BaseViewModel {
  final NavigationService _nav = locator<NavigationService>();
  Future<void> init() async {}

  goToDashboard() {
    _nav.navigateTo(Routes.tablesView);
  }
}
