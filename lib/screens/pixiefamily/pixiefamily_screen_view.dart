import 'package:flutter/material.dart';
import 'package:pixiehollow/screens/pixiefamily/pixiefamily_screen_viewmodel.dart';
import 'package:stacked/stacked.dart';

class FamilyView extends StatelessWidget {
  const FamilyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FamilyViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Center(child: Text('Pixie Family Page')),
      ),
      viewModelBuilder: () => FamilyViewModel(),
    );
  }
}
