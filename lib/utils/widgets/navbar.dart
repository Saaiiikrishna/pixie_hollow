import 'package:flutter/material.dart';
import 'package:pixiehollow/app/app.locator.dart';
import 'package:pixiehollow/app/app.router.dart';
import 'package:pixiehollow/utils/widgets/label.dart';
import 'package:stacked_services/stacked_services.dart';

class Navbar extends StatelessWidget {
  final _navigationService = locator<NavigationService>();

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

  Navbar({
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
                    height: 80,
                    padding: 8,
                    radius: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            _navigationService.navigateToProfileView();
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
                                    color: Color.fromRGBO(
                                      128,
                                      130,
                                      133,
                                      1,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(15.5, 0, 3.0, 0),
                                child: Text(
                                  '8474857587',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color.fromRGBO(
                                      128,
                                      130,
                                      133,
                                      1,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(15.5, 0, 3.0, 0),
                                child: Text(
                                  'sravani@gmail.com',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color.fromRGBO(
                                      128,
                                      130,
                                      133,
                                      1,
                                    ),
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
                                  _navigationService.navigateToProfileView();
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
                  style: TextStyle(
                      color: Color.fromRGBO(
                        128,
                        130,
                        133,
                        1,
                      ),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  _navigationService.navigateToOrdersView();
                },
              ),
            ),
            Label(
              height: 50,
              padding: 27.5,
              radius: 25,
              child: ListTile(
                title: const Text(
                  'You Loved',
                  style: TextStyle(
                      color: Color.fromRGBO(
                        128,
                        130,
                        133,
                        1,
                      ),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  _navigationService.navigateToYouLovedView();
                },
              ),
            ),
            Label(
              height: 50,
              padding: 27.5,
              radius: 25,
              child: ListTile(
                title: const Text(
                  'Wallet',
                  style: TextStyle(
                      color: Color.fromRGBO(
                        128,
                        130,
                        133,
                        1,
                      ),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  _navigationService.navigateToWalletView();
                },
              ),
            ),
            Label(
              height: 50,
              padding: 27.5,
              radius: 25,
              child: ListTile(
                title: const Text(
                  'My Coupons',
                  style: TextStyle(
                      color: Color.fromRGBO(
                        128,
                        130,
                        133,
                        1,
                      ),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  _navigationService.navigateToCouponsView();
                },
              ),
            ),
            Label(
              height: 50,
              padding: 27.5,
              radius: 25,
              child: ListTile(
                title: const Text(
                  'Pixie Hollow Family',
                  style: TextStyle(
                      color: Color.fromRGBO(
                        128,
                        130,
                        133,
                        1,
                      ),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  _navigationService.navigateToFamilyView();
                },
              ),
            ),
            Label(
              height: 50,
              padding: 27.5,
              radius: 25,
              child: ListTile(
                title: const Text(
                  'Payment Methods',
                  style: TextStyle(
                      color: Color.fromRGBO(
                        128,
                        130,
                        133,
                        1,
                      ),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  _navigationService.navigateToPaymentsView();
                },
              ),
            ),
            Label(
              height: 50,
              padding: 27.5,
              radius: 25,
              child: ListTile(
                title: const Text(
                  'Settings',
                  style: TextStyle(
                      color: Color.fromRGBO(
                        128,
                        130,
                        133,
                        1,
                      ),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  _navigationService.navigateToSettingsView();
                },
              ),
            ),
            Label(
              height: 50,
              padding: 27.5,
              radius: 25,
              child: ListTile(
                title: const Text(
                  'Help & Support',
                  style: TextStyle(
                      color: Color.fromRGBO(
                        128,
                        130,
                        133,
                        1,
                      ),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  _navigationService.navigateToSupportView();
                },
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text('Logout'),
              onTap: () {
                _navigationService.navigateToHomeView();
              },
            ),
          ],
        ),
      ),
    );
  }
}
