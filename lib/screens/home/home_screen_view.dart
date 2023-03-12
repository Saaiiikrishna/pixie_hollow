import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:pixiehollow/screens/home/home_screen_viewmodel.dart';
import 'package:pixiehollow/utils/widgets/navbar.dart';
import 'package:pixiehollow/utils/widgets/story.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      onViewModelReady: (model) =>
          SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
        model.runHomeLogic();
      }),
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
          homeTapped: model.drawerHome,
        ),
        appBar: AppBar(
          title: const Text('Pixiehollow'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_none_rounded),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_bag_outlined),
            ),
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 50,
              child: ListView.builder(
                itemCount: 7, // Adjust this label.length to make it dynamic.
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const Story();
                },
              ),
            ),
          ],
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
