// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/cupertino.dart' as _i13;
import 'package:flutter/material.dart';
import 'package:pixiehollow/screens/auth/auth_screen_view.dart' as _i3;
import 'package:pixiehollow/screens/coupons/coupons_screen_view.dart' as _i6;
import 'package:pixiehollow/screens/home/home_screen_view.dart' as _i2;
import 'package:pixiehollow/screens/orders/orders_screen_view.dart' as _i5;
import 'package:pixiehollow/screens/payment/payment_screen_view.dart' as _i10;
import 'package:pixiehollow/screens/pixiefamily/pixiefamily_screen_view.dart'
    as _i12;
import 'package:pixiehollow/screens/profile/profile_screen_view.dart' as _i4;
import 'package:pixiehollow/screens/settings/settings_screen_view.dart' as _i8;
import 'package:pixiehollow/screens/support/support_screen_view.dart' as _i9;
import 'package:pixiehollow/screens/wallet/wallet_screen_view.dart' as _i11;
import 'package:pixiehollow/screens/youloved/youloved_screen_view.dart' as _i7;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i14;

class Routes {
  static const homeView = '/';

  static const authView = '/auth-view';

  static const profileView = '/profile-view';

  static const ordersView = '/orders-view';

  static const couponsView = '/coupons-view';

  static const youLovedView = '/you-loved-view';

  static const settingsView = '/settings-view';

  static const supportView = '/support-view';

  static const paymentsView = '/payments-view';

  static const walletView = '/wallet-view';

  static const familyView = '/family-view';

  static const all = <String>{
    homeView,
    authView,
    profileView,
    ordersView,
    couponsView,
    youLovedView,
    settingsView,
    supportView,
    paymentsView,
    walletView,
    familyView,
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
      Routes.profileView,
      page: _i4.ProfileView,
    ),
    _i1.RouteDef(
      Routes.ordersView,
      page: _i5.OrdersView,
    ),
    _i1.RouteDef(
      Routes.couponsView,
      page: _i6.CouponsView,
    ),
    _i1.RouteDef(
      Routes.youLovedView,
      page: _i7.YouLovedView,
    ),
    _i1.RouteDef(
      Routes.settingsView,
      page: _i8.SettingsView,
    ),
    _i1.RouteDef(
      Routes.supportView,
      page: _i9.SupportView,
    ),
    _i1.RouteDef(
      Routes.paymentsView,
      page: _i10.PaymentsView,
    ),
    _i1.RouteDef(
      Routes.walletView,
      page: _i11.WalletView,
    ),
    _i1.RouteDef(
      Routes.familyView,
      page: _i12.FamilyView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.AuthView: (data) {
      return _i13.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i3.AuthView(),
        settings: data,
      );
    },
    _i4.ProfileView: (data) {
      return _i13.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i4.ProfileView(),
        settings: data,
      );
    },
    _i5.OrdersView: (data) {
      return _i13.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i5.OrdersView(),
        settings: data,
      );
    },
    _i6.CouponsView: (data) {
      return _i13.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i6.CouponsView(),
        settings: data,
      );
    },
    _i7.YouLovedView: (data) {
      return _i13.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i7.YouLovedView(),
        settings: data,
      );
    },
    _i8.SettingsView: (data) {
      return _i13.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i8.SettingsView(),
        settings: data,
      );
    },
    _i9.SupportView: (data) {
      return _i13.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i9.SupportView(),
        settings: data,
      );
    },
    _i10.PaymentsView: (data) {
      return _i13.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i10.PaymentsView(),
        settings: data,
      );
    },
    _i11.WalletView: (data) {
      return _i13.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i11.WalletView(),
        settings: data,
      );
    },
    _i12.FamilyView: (data) {
      return _i13.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i12.FamilyView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

extension NavigatorStateExtension on _i14.NavigationService {
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

  Future<dynamic> navigateToAuthView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.authView,
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
}
