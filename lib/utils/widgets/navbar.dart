import 'package:flutter/material.dart';

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

  const Navbar(
      {super.key,
      this.ordersTapped,
      this.youLovedTapped,
      this.walletTapped,
      this.myCouponsTappped,
      this.familyTapped,
      this.paymentTapped,
      this.settingsTapped,
      this.supportTapped,
      this.logoutTapped,
      this.profileTapped});

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
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/img2.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            'Sravani',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text('8474857587'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text('sravani@gmail.com'),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 40,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/img1.jpeg',
                              width: 90,
                              height: 90,
                              fit: BoxFit.cover,
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
            title: Text('Orders'),
            onTap: ordersTapped,
          ),
          ListTile(
            title: Text('You Loved'),
            onTap: youLovedTapped,
          ),
          ListTile(
            title: Text('Wallet'),
            onTap: walletTapped,
          ),
          ListTile(
            title: Text('My Coupons'),
            onTap: myCouponsTappped,
          ),
          ListTile(
            title: Text('Pixie Hollow Family'),
            onTap: familyTapped,
          ),
          ListTile(
            title: Text('Payment Methods'),
            onTap: paymentTapped,
          ),
          ListTile(
            title: Text('Settings'),
            onTap: settingsTapped,
          ),
          ListTile(
            title: Text('Help & Support'),
            onTap: supportTapped,
          ),
          Divider(),
          ListTile(
            title: Text('Logout'),
            onTap: logoutTapped,
          ),
        ],
      ),
    );
  }
}
