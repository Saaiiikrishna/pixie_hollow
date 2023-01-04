import 'package:flutter/material.dart';
import 'package:pixiehollow/screens/settings/settings_screen_viewmodel.dart';
import 'package:stacked/stacked.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SettingsViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Center(child: Text('Settings Page')),
      ),
      viewModelBuilder: () => SettingsViewModel(),
    );
  }
}
