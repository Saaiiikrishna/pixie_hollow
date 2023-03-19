import 'package:flutter/material.dart';
import 'package:pixiehollow/screens/wallet/wallet_screen_viewmodel.dart';
import 'package:pixiehollow/utils/widgets/navbar.dart';
import 'package:stacked/stacked.dart';

class WalletView extends StatelessWidget {
  const WalletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WalletViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        drawer: Navbar(),
        appBar: AppBar(
          title: const Text('Pixiehollow'),
        ),
      ),
      viewModelBuilder: () => WalletViewModel(),
    );
  }
}
