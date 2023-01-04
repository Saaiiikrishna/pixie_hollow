import 'package:flutter/material.dart';
import 'package:pixiehollow/screens/profile/profile_screen_viewmodel.dart';
import 'package:stacked/stacked.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Center(child: Text('User Profile Page')),
      ),
      viewModelBuilder: () => ProfileViewModel(),
    );
  }
}
