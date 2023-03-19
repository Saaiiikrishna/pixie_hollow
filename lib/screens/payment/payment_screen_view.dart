import 'package:flutter/material.dart';
import 'package:pixiehollow/screens/payment/payment_screen_viewmodel.dart';
import 'package:pixiehollow/utils/widgets/navbar.dart';
import 'package:stacked/stacked.dart';

class PaymentsView extends StatelessWidget {
  const PaymentsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PaymentsViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        drawer: Navbar(),
        appBar: AppBar(
          title: const Text('Payment Methods'),
        ),
      ),
      viewModelBuilder: () => PaymentsViewModel(),
    );
  }
}
