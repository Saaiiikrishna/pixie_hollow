import 'package:flutter/material.dart';
import 'package:pixiehollow/screens/youloved/youloved_screen_viewmodel.dart';
import 'package:pixiehollow/utils/widgets/navbar.dart';
import 'package:stacked/stacked.dart';

class YouLovedView extends StatelessWidget {
  const YouLovedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<YouLovedViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        drawer: const Navbar(),
        appBar: AppBar(
          title: const Text('You Loved'),
        ),
      ),
      viewModelBuilder: () => YouLovedViewModel(),
    );
  }
}
