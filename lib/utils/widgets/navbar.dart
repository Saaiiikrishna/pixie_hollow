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
import 'package:pixiehollow/utils/widgets/label.dart';

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
    return SafeArea(
      child: Drawer(
        backgroundColor: const Color.fromRGBO(255, 183, 197, 1),
        child: ListView(
          children: [
            const SizedBox(
              height: 50.0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 12.0, 0),
              child: Column(
                children: [
                  Label(
                    height: 81,
                    padding: 8,
                    radius: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                padding: EdgeInsets.only(left: 15.5),
                                child: Text(
                                  'Sai Charan Chatla',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(15.5, 0, 3.0, 0),
                                child: Text(
                                  '8474857587',
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(15.5, 0, 3.0, 0),
                                child: Text(
                                  'sravani@gmail.com',
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                  Navigator.of(context).push(CupertinoPageRoute(
                                      builder: (context) =>
                                          const ProfileView()));
                                },
                                child: CircleAvatar(
                                  radius: 30,
                                  child: ClipOval(
                                    child: Image.asset(
                                      'assets/images/img1.jpeg',
                                      width: 55,
                                      height: 55,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                ],
              ),
            ),
            Label(
              radius: 25.0,
              height: 50,
              padding: 27.5,
              child: ListTile(
                title: const Text(
                  'Orders',
                  style: TextStyle(color: Color.fromRGBO(128, 130, 133, 1)),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(CupertinoPageRoute(
                      builder: (context) => const OrdersView()));
                },
              ),
            ),
            Label(
              height: 50,
              padding: 27.5,
              radius: 25,
              child: ListTile(
                title: const Text('You Loved'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(CupertinoPageRoute(
                      builder: (context) => const YouLovedView()));
                },
              ),
            ),
            Label(
              height: 50,
              padding: 27.5,
              radius: 25,
              child: ListTile(
                title: const Text('Wallet'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(CupertinoPageRoute(
                      builder: (context) => const WalletView()));
                },
              ),
            ),
            Label(
              height: 50,
              padding: 27.5,
              radius: 25,
              child: ListTile(
                title: const Text('My Coupons'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(CupertinoPageRoute(
                      builder: (context) => const CouponsView()));
                },
              ),
            ),
            Label(
              height: 50,
              padding: 27.5,
              radius: 25,
              child: ListTile(
                title: const Text('Pixie Hollow Family'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(CupertinoPageRoute(
                      builder: (context) => const FamilyView()));
                },
              ),
            ),
            Label(
              height: 50,
              padding: 27.5,
              radius: 25,
              child: ListTile(
                title: const Text('Payment Methods'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(CupertinoPageRoute(
                      builder: (context) => const PaymentsView()));
                },
              ),
            ),
            Label(
              height: 50,
              padding: 27.5,
              radius: 25,
              child: ListTile(
                title: const Text('Settings'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(CupertinoPageRoute(
                      builder: (context) => const SettingsView()));
                },
              ),
            ),
            Label(
              height: 50,
              padding: 27.5,
              radius: 25,
              child: ListTile(
                title: const Text('Help & Support'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(CupertinoPageRoute(
                      builder: (context) => const SupportView()));
                },
              ),
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
      ),
    );
  }
}
