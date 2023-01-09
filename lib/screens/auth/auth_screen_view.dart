import 'package:flutter/material.dart';
import 'package:pixiehollow/screens/auth/auth_screen_viewmodel.dart';
import 'package:pixiehollow/utils/widgets/navbar.dart';
import 'package:stacked/stacked.dart';

class AuthView extends StatelessWidget {
  const AuthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AuthViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        drawer: const Navbar(),
        appBar: AppBar(
          title: const Text('Pixiehollow'),
        ),
      ),
      viewModelBuilder: () => AuthViewModel(),
    );
  }
}
