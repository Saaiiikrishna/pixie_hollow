import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pixiehollow/screens/auth/auth_screen_view.dart';
import 'package:pixiehollow/screens/coupons/coupons_screen_view.dart';
import 'package:pixiehollow/screens/orders/orders_screen_view.dart';
import 'package:pixiehollow/screens/payment/payment_screen_view.dart';
import 'package:pixiehollow/screens/pixiefamily/pixiefamily_screen_view.dart';
import 'package:pixiehollow/screens/profile/profile_screen_view.dart';
import 'package:pixiehollow/screens/settings/settings_screen_view.dart';
import 'package:pixiehollow/screens/support/support_screen_view.dart';
import 'package:pixiehollow/screens/wallet/wallet_screen_view.dart';
import 'package:pixiehollow/screens/youloved/youloved_screen_view.dart';

class Navbar extends StatelessWidget {
  final void Function()? ordersTapped;
  final void Function()? youLovedTapped;
  final void Function()? walletTapped;
  final void Function()? myCouponsTappped;
  final void Function()? familyTapped;
  final void Function()? paymentTapped;
  final void Function()? settingsTapped;
  final void Function()? supportTapped;
  final void Function()? logoutTapped;
  final void Function()? profileTapped;
  final void Function()? homeTapped;

  const Navbar({
    super.key,
    this.ordersTapped,
    this.youLovedTapped,
    this.walletTapped,
    this.myCouponsTappped,
    this.familyTapped,
    this.paymentTapped,
    this.settingsTapped,
    this.supportTapped,
    this.logoutTapped,
    this.profileTapped,
    this.homeTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 160,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/img2.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.of(context).push(CupertinoPageRoute(
                            builder: (context) => const ProfileView()));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(3.0),
                            child: Text(
                              'Sravani',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(3.0),
                            child: Text('8474857587'),
                          ),
                          Padding(
                            padding: EdgeInsets.all(3.0),
                            child: Text('sravani@gmail.com'),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                            Navigator.of(context).push(CupertinoPageRoute(
                                builder: (context) => const ProfileView()));
                          },
                          child: CircleAvatar(
                            radius: 40,
                            child: ClipOval(
                              child: Image.asset(
                                'assets/images/img1.jpeg',
                                width: 90,
                                height: 90,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text('Orders'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(
                  CupertinoPageRoute(builder: (context) => const OrdersView()));
            },
          ),
          ListTile(
            title: const Text('You Loved'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(CupertinoPageRoute(
                  builder: (context) => const YouLovedView()));
            },
          ),
          ListTile(
            title: const Text('Wallet'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(
                  CupertinoPageRoute(builder: (context) => const WalletView()));
            },
          ),
          ListTile(
            title: const Text('My Coupons'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(CupertinoPageRoute(
                  builder: (context) => const CouponsView()));
            },
          ),
          ListTile(
            title: const Text('Pixie Hollow Family'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(
                  CupertinoPageRoute(builder: (context) => const FamilyView()));
            },
          ),
          ListTile(
            title: const Text('Payment Methods'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(CupertinoPageRoute(
                  builder: (context) => const PaymentsView()));
            },
          ),
          ListTile(
            title: const Text('Settings'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(CupertinoPageRoute(
                  builder: (context) => const SettingsView()));
            },
          ),
          ListTile(
            title: const Text('Help & Support'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(CupertinoPageRoute(
                  builder: (context) => const SupportView()));
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Logout'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context)
                  .push(CupertinoPageRoute(builder: (context) => AuthView()));
            },
          ),
        ],
      ),
    );
  }
}
