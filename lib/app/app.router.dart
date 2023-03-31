// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/cupertino.dart' as _i16;
import 'package:flutter/material.dart' as _i15;
import 'package:flutter/material.dart';
import 'package:pixiehollow/screens/address/address_selection_view.dart'
    as _i14;
import 'package:pixiehollow/screens/auth/auth_screen_view.dart' as _i3;
import 'package:pixiehollow/screens/coupons/coupons_screen_view.dart' as _i7;
import 'package:pixiehollow/screens/home/home_screen_view.dart' as _i2;
import 'package:pixiehollow/screens/orders/orders_screen_view.dart' as _i6;
import 'package:pixiehollow/screens/payment/payment_screen_view.dart' as _i11;
import 'package:pixiehollow/screens/pixiefamily/pixiefamily_screen_view.dart'
    as _i13;
import 'package:pixiehollow/screens/profile/profile_screen_view.dart' as _i5;
import 'package:pixiehollow/screens/register/register_screen_view.dart' as _i4;
import 'package:pixiehollow/screens/settings/settings_screen_view.dart' as _i9;
import 'package:pixiehollow/screens/support/support_screen_view.dart' as _i10;
import 'package:pixiehollow/screens/wallet/wallet_screen_view.dart' as _i12;
import 'package:pixiehollow/screens/youloved/youloved_screen_view.dart' as _i8;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i17;

class Routes {
  static const homeView = '/';

  static const authView = '/auth-view';

  static const registerAccountView = '/register-account-view';

  static const profileView = '/profile-view';

  static const ordersView = '/orders-view';

  static const couponsView = '/coupons-view';

  static const youLovedView = '/you-loved-view';

  static const settingsView = '/settings-view';

  static const supportView = '/support-view';

  static const paymentsView = '/payments-view';

  static const walletView = '/wallet-view';

  static const familyView = '/family-view';

  static const addressSelectionView = '/address-selection-view';

  static const all = <String>{
    homeView,
    authView,
    registerAccountView,
    profileView,
    ordersView,
    couponsView,
    youLovedView,
    settingsView,
    supportView,
    paymentsView,
    walletView,
    familyView,
    addressSelectionView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.homeView,
      page: _i2.HomeView,
    ),
    _i1.RouteDef(
      Routes.authView,
      page: _i3.AuthView,
    ),
    _i1.RouteDef(
      Routes.registerAccountView,
      page: _i4.RegisterAccountView,
    ),
    _i1.RouteDef(
      Routes.profileView,
      page: _i5.ProfileView,
    ),
    _i1.RouteDef(
      Routes.ordersView,
      page: _i6.OrdersView,
    ),
    _i1.RouteDef(
      Routes.couponsView,
      page: _i7.CouponsView,
    ),
    _i1.RouteDef(
      Routes.youLovedView,
      page: _i8.YouLovedView,
    ),
    _i1.RouteDef(
      Routes.settingsView,
      page: _i9.SettingsView,
    ),
    _i1.RouteDef(
      Routes.supportView,
      page: _i10.SupportView,
    ),
    _i1.RouteDef(
      Routes.paymentsView,
      page: _i11.PaymentsView,
    ),
    _i1.RouteDef(
      Routes.walletView,
      page: _i12.WalletView,
    ),
    _i1.RouteDef(
      Routes.familyView,
      page: _i13.FamilyView,
    ),
    _i1.RouteDef(
      Routes.addressSelectionView,
      page: _i14.AddressSelectionView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
        maintainState: false,
      );
    },
    _i3.AuthView: (data) {
      final args = data.getArgs<AuthViewArguments>(
        orElse: () => const AuthViewArguments(),
      );
      return _i16.CupertinoPageRoute<dynamic>(
        builder: (context) => _i3.AuthView(key: args.key),
        settings: data,
        maintainState: false,
      );
    },
    _i4.RegisterAccountView: (data) {
      final args = data.getArgs<RegisterAccountViewArguments>(
        orElse: () => const RegisterAccountViewArguments(),
      );
      return _i16.CupertinoPageRoute<dynamic>(
        builder: (context) => _i4.RegisterAccountView(key: args.key),
        settings: data,
        maintainState: false,
      );
    },
    _i5.ProfileView: (data) {
      return _i16.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i5.ProfileView(),
        settings: data,
        maintainState: false,
      );
    },
    _i6.OrdersView: (data) {
      return _i16.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i6.OrdersView(),
        settings: data,
        maintainState: false,
      );
    },
    _i7.CouponsView: (data) {
      return _i16.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i7.CouponsView(),
        settings: data,
        maintainState: false,
      );
    },
    _i8.YouLovedView: (data) {
      return _i16.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i8.YouLovedView(),
        settings: data,
        maintainState: false,
      );
    },
    _i9.SettingsView: (data) {
      return _i16.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i9.SettingsView(),
        settings: data,
        maintainState: false,
      );
    },
    _i10.SupportView: (data) {
      return _i16.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i10.SupportView(),
        settings: data,
        maintainState: false,
      );
    },
    _i11.PaymentsView: (data) {
      return _i16.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i11.PaymentsView(),
        settings: data,
        maintainState: false,
      );
    },
    _i12.WalletView: (data) {
      return _i16.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i12.WalletView(),
        settings: data,
        maintainState: false,
      );
    },
    _i13.FamilyView: (data) {
      return _i16.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i13.FamilyView(),
        settings: data,
        maintainState: false,
      );
    },
    _i14.AddressSelectionView: (data) {
      return _i16.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i14.AddressSelectionView(),
        settings: data,
        maintainState: false,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class AuthViewArguments {
  const AuthViewArguments({this.key});

  final _i16.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }
}

class RegisterAccountViewArguments {
  const RegisterAccountViewArguments({this.key});

  final _i16.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }
}

extension NavigatorStateExtension on _i17.NavigationService {
  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAuthView({
    _i16.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.authView,
        arguments: AuthViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToRegisterAccountView({
    _i16.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.registerAccountView,
        arguments: RegisterAccountViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.profileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToOrdersView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.ordersView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCouponsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.couponsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToYouLovedView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.youLovedView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSettingsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.settingsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSupportView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.supportView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPaymentsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.paymentsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToWalletView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.walletView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToFamilyView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.familyView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAddressSelectionView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.addressSelectionView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAuthView({
    _i16.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.authView,
        arguments: AuthViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithRegisterAccountView({
    _i16.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.registerAccountView,
        arguments: RegisterAccountViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.profileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithOrdersView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.ordersView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCouponsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.couponsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithYouLovedView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.youLovedView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSettingsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.settingsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSupportView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.supportView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPaymentsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.paymentsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithWalletView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.walletView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithFamilyView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.familyView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAddressSelectionView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.addressSelectionView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
