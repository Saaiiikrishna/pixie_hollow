import 'package:flutter/material.dart';
import 'package:pixiehollow/screens/auth/auth_screen_viewmodel.dart';
import 'package:stacked/stacked.dart';

class AuthView extends StatelessWidget {
  const AuthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AuthViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Center(child: Text('Authentication Page')),
      ),
      viewModelBuilder: () => AuthViewModel(),
    );
  }
}
