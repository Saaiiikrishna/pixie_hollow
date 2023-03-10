import 'package:pixiehollow/app/app.locator.dart';
import 'package:pixiehollow/app/app.logger.dart';
import 'package:pixiehollow/app/app.router.dart';
import 'package:pixiehollow/services/user_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final log = getLogger('HomeViewModel');
  final _userService = locator<UserService>();
  // final _placesService = locator<PlacesService>();

  void drawerProfile() => _navigationService.navigateTo(Routes.profileView);

  void drawerOrders() => _navigationService.navigateTo(Routes.ordersView);

  void drawerYouLoved() => _navigationService.navigateTo(Routes.youLovedView);

  void drawerWallet() => _navigationService.navigateTo(Routes.walletView);

  void drawerMyCoupons() => _navigationService.navigateTo(Routes.couponsView);

  void drawerPixieHollowFamily() =>
      _navigationService.navigateTo(Routes.familyView);

  void drawerPaymentMethods() =>
      _navigationService.navigateTo(Routes.paymentsView);

  void drawerSettings() => _navigationService.navigateTo(Routes.settingsView);

  void drawerSupport() => _navigationService.navigateTo(Routes.supportView);

  void drawerLogout() => _navigationService.navigateTo(Routes.authView);

  void drawerHome() => _navigationService.navigateTo(Routes.homeView);

  Future<void> runHomeLogic() async {
    // _placesService.initialize(apiKey: 'AIzaSyCv40wPtraO_z6vLGS_Hc8ar8PlZ7JvX2E');
    if (_userService.hasLoggedInUser) {
      // log.v(
      //     'We found a user on the device, synchronizing the user profile ...');
      // await _userService.syncUserAccount();

      // final currentUser = _userService.currentUser;
      // log.v('User synchronization complete. User profile: $currentUser');

      // if (!currentUser.hasAddress) {
      //   _navigationService.navigateTo(Routes.addressSelectionView);
      // }
    } else {
      // log.v('No user found on device, navigating to On-Boarding Screen');
      // _navigationService.replaceWith(Routes.homeView);
    }
  }
}
