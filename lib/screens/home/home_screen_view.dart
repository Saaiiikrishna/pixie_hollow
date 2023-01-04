import 'package:flutter/material.dart';
import 'package:pixiehollow/screens/home/home_screen_viewmodel.dart';
import 'package:pixiehollow/utils/widgets/navbar.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        drawer: Navbar(
          ordersTapped: model.drawerOrders,
          youLovedTapped: model.drawerYouLoved,
          walletTapped: model.drawerWallet,
          myCouponsTappped: model.drawerMyCoupons,
          familyTapped: model.drawerPixieHollowFamily,
          paymentTapped: model.drawerPaymentMethods,
          settingsTapped: model.drawerSettings,
          supportTapped: model.drawerSupport,
          logoutTapped: model.drawerLogout,
          profileTapped: model.drawerProfile,
        ),
        appBar: AppBar(
          title: Text('Pixiehollow'),
        ),
        body: Center(
          child: Text('Home Page'),
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
