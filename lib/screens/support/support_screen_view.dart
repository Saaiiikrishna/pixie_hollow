import 'package:flutter/material.dart';
import 'package:pixiehollow/screens/support/support_screen_viewmodel.dart';
import 'package:stacked/stacked.dart';

import '../../utils/widgets/navbar.dart';

class SupportView extends StatelessWidget {
  const SupportView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SupportViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        drawer: Navbar(),
        appBar: AppBar(
          title: const Text('Help & Support'),
        ),
      ),
      viewModelBuilder: () => SupportViewModel(),
    );
  }
}
