import 'package:flutter/material.dart';
import 'package:pixiehollow/screens/support/support_screen_viewmodel.dart';
import 'package:stacked/stacked.dart';

class SupportView extends StatelessWidget {
  const SupportView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SupportViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Center(child: Text('Support Page')),
      ),
      viewModelBuilder: () => SupportViewModel(),
    );
  }
}
