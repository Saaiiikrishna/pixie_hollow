import 'package:flutter/material.dart';
import 'package:pixiehollow/app/app.locator.dart';
import 'package:pixiehollow/app/app.router.dart';
import 'package:pixiehollow/services/user_service.dart';
import 'package:pixiehollow/utils/general/colors.dart';
import 'package:stacked_services/stacked_services.dart';

class Navbar extends StatelessWidget {
  final _navigationService = locator<NavigationService>();
  final _userService = locator<UserService>();

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
    final currentUser = _userService.currentUser;
    return SafeArea(
      child: Drawer(
        backgroundColor: textBgColor,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 50),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(right: 27.5),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                    ),
                    child: _userService.hasLoggedInUser
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  _navigationService.navigateToProfileView();
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 15.5),
                                      child: Text(
                                        '${currentUser?.fullName}',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: textColor,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          15.5, 0, 3.0, 0),
                                      child: Text(
                                        '${currentUser?.mobile}',
                                        style: const TextStyle(
                                          fontSize: 10,
                                          color: textColor,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            15.5, 0, 3.0, 0),
                                        child: Text(
                                          '${currentUser?.email}',
                                          style: const TextStyle(
                                            fontSize: 10,
                                            color: textColor,
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: InkWell(
                                  onTap: () {
                                    _navigationService.navigateToProfileView();
                                  },
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        radius: 30,
                                        child: ClipOval(
                                          child: Image.asset(
                                            'assets/images/img1.jpeg',
                                            width: 60,
                                            height: 60,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  _navigationService.navigateToAuthView();
                                },
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 15.5),
                                  child: Text(
                                    'Log In',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: textColor,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: InkWell(
                                  onTap: () {
                                    _navigationService.navigateToAuthView();
                                  },
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: textBgColor,
                                        radius: 30,
                                        child: ClipOval(
                                          child: IconButton(
                                            iconSize: 45,
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.person_rounded,
                                              color: Colors.white,
                                            ),
                                          ),
                                          // Image.asset(
                                          //   'assets/images/img1.jpeg',
                                          //   width: 60,
                                          //   height: 60,
                                          //   fit: BoxFit.cover,
                                          // ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                  ),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 27.5, bottom: 8),
              child: ListTile(
                title: const Text(
                  'Orders',
                  style: TextStyle(
                      color: textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  _navigationService.navigateToOrdersView();
                },
                tileColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                leading: const Icon(
                  Icons.shopping_cart,
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
              padding: const EdgeInsets.only(right: 27.5, bottom: 8),
              child: ListTile(
                title: const Text(
                  'You Loved',
                  style: TextStyle(
                      color: textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  _navigationService.navigateToYouLovedView();
                },
                tileColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                leading: const Icon(
                  Icons.favorite_rounded,
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
              padding: const EdgeInsets.only(right: 27.5, bottom: 8),
              child: ListTile(
                title: const Text(
                  'Wallet',
                  style: TextStyle(
                      color: textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  _navigationService.navigateToWalletView();
                },
                tileColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                leading: const Icon(
                  Icons.account_balance_wallet_rounded,
                  // Icons.wallet,
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
              padding: const EdgeInsets.only(right: 27.5, bottom: 8),
              child: ListTile(
                title: const Text(
                  'My Coupons',
                  style: TextStyle(
                      color: textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  _navigationService.navigateToCouponsView();
                },
                tileColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                leading: const Icon(
                  Icons.local_offer,
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
              padding: const EdgeInsets.only(right: 27.5, bottom: 8),
              child: ListTile(
                title: const Text(
                  'Pixie Hollow Family',
                  style: TextStyle(
                      color: textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  _navigationService.navigateToFamilyView();
                },
                tileColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                leading: const Icon(
                  Icons.groups,
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
              padding: const EdgeInsets.only(right: 27.5, bottom: 8),
              child: ListTile(
                title: const Text(
                  'Payment Methods',
                  style: TextStyle(
                      color: textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  _navigationService.navigateToPaymentsView();
                },
                tileColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                leading: const Icon(
                  Icons.credit_card,
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
              padding: const EdgeInsets.only(right: 27.5, bottom: 8),
              child: ListTile(
                title: const Text(
                  'Settings',
                  style: TextStyle(
                      color: textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  _navigationService.navigateToSettingsView();
                },
                tileColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                leading: const Icon(
                  Icons.settings,
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
              padding: const EdgeInsets.only(right: 27.5, bottom: 8),
              child: ListTile(
                title: const Text(
                  'Help & Support',
                  style: TextStyle(
                      color: textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  _navigationService.navigateToSupportView();
                },
                tileColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                leading: const Icon(
                  Icons.help_rounded,
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
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    const Color.fromRGBO(255, 183, 197, 1),
                  ),
                  elevation: MaterialStateProperty.all(0),
                ),
                onPressed: () {},
                icon: const Icon(
                  Icons.logout,
                  size: 24.0,
                ),
                label: const Text('Logout'),
              ),
            ),
            const Center(
              child: Text(
                'V 1.0.0',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 8,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
