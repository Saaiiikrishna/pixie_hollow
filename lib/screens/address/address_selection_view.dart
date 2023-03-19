import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pixiehollow/screens/address/address_selection_viewmodel.dart';
import 'package:pixiehollow/screens/home/home_screen_view.dart';
import 'package:pixiehollow/utils/widgets/navbar.dart';
import 'package:stacked/stacked.dart';

class AddressSelectionView extends StatelessWidget {
  const AddressSelectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AddressSelectionViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        drawer: const Navbar(),
        appBar: AppBar(
          title: const Text('Add Address'),
        ),
        body: Column(
          children: [
            InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(CupertinoPageRoute(
                      builder: (context) => const HomeView()));
                },
                child: const SizedBox(
                    height: 50, child: Text('Click me for Home'))),
          ],
        ),
      ),
      viewModelBuilder: () => AddressSelectionViewModel(),
    );
  }
}
