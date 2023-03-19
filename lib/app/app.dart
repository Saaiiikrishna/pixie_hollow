import 'package:pixiehollow/api/firestore_api.dart';
import 'package:pixiehollow/screens/address/address_selection_view.dart';
import 'package:pixiehollow/screens/auth/auth_screen_view.dart';
import 'package:pixiehollow/screens/coupons/coupons_screen_view.dart';
import 'package:pixiehollow/screens/home/home_screen_view.dart';
import 'package:pixiehollow/screens/orders/orders_screen_view.dart';
import 'package:pixiehollow/screens/payment/payment_screen_view.dart';
import 'package:pixiehollow/screens/pixiefamily/pixiefamily_screen_view.dart';
import 'package:pixiehollow/screens/profile/profile_screen_view.dart';
import 'package:pixiehollow/screens/register/register_screen_view.dart';
import 'package:pixiehollow/screens/settings/settings_screen_view.dart';
import 'package:pixiehollow/screens/support/support_screen_view.dart';
import 'package:pixiehollow/screens/wallet/wallet_screen_view.dart';
import 'package:pixiehollow/screens/youloved/youloved_screen_view.dart';
import 'package:pixiehollow/services/user_service.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView, initial: true),
    CupertinoRoute(page: AuthView),
    CupertinoRoute(page: RegisterAccountView),
    CupertinoRoute(page: ProfileView),
    CupertinoRoute(page: OrdersView),
    CupertinoRoute(page: CouponsView),
    CupertinoRoute(page: YouLovedView),
    CupertinoRoute(page: SettingsView),
    CupertinoRoute(page: SupportView),
    CupertinoRoute(page: PaymentsView),
    CupertinoRoute(page: WalletView),
    CupertinoRoute(page: FamilyView),
    CupertinoRoute(page: AddressSelectionView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: UserService),
    LazySingleton(classType: FirestoreApi),
    Singleton(classType: FirebaseAuthenticationService),
  ],
  logger: StackedLogger(),
)
class AppSetup {}
