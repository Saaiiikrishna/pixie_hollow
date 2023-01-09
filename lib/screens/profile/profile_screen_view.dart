import 'package:flutter/material.dart';
import 'package:pixiehollow/screens/profile/profile_screen_viewmodel.dart';
import 'package:pixiehollow/utils/widgets/navbar.dart';
import 'package:stacked/stacked.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        drawer: const Navbar(),
        appBar: AppBar(
          title: const Text('Account'),
        ),
      ),
      viewModelBuilder: () => ProfileViewModel(),
    );
  }
}
