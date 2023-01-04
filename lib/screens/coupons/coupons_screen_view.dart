import 'package:flutter/material.dart';
import 'package:pixiehollow/screens/coupons/coupons_screen_viewmodel.dart';
import 'package:stacked/stacked.dart';

class CouponsView extends StatelessWidget {
  const CouponsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CouponsViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Center(child: Text('Coupons Page')),
      ),
      viewModelBuilder: () => CouponsViewModel(),
    );
  }
}
