import 'package:flutter/material.dart';
import 'package:pixiehollow/screens/orders/orders_screen_viewmodel.dart';
import 'package:stacked/stacked.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OrdersViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Center(child: Text('Orders Page')),
      ),
      viewModelBuilder: () => OrdersViewModel(),
    );
  }
}
