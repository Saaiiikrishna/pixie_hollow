import 'package:flutter/material.dart';
import 'package:pixiehollow/screens/auth/auth_screen_view.form.dart';
import 'package:pixiehollow/screens/auth/auth_screen_viewmodel.dart';
import 'package:pixiehollow/utils/base/form_layout_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

@FormView(fields: [
  FormTextField(name: 'email'),
  FormTextField(name: 'password'),
])
class AuthView extends StatelessWidget with $AuthView {
  AuthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AuthViewModel>.reactive(
      onViewModelReady: (model) => syncFormWithViewModel(model),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: const Text('Pixiehollow'),
        ),
        body: AuthLayout(
          busy: model.isBusy,
          onMainButtonTapped: model.saveData,
          onCreateAccountTapped: model.navigateToCreateAccount,
          validationMessage: model.validationMessage,
          onSignInWithGoogle: model.useGoogleAuthentication,
          onSignInWithApple: model.useAppleAuthentication,
          mainButtonTitle: 'LOGIN',
          subtitle: 'fddslgjh',
          googleLogIn: 'Log in with Google',
          appleLogin: 'Log In with Apple',
          form: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
                child: Text(
                  'Enter email and password to login',
                  style: TextStyle(color: Colors.white60),
                ),
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.white30),
                ),
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
              ),
              TextField(
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.white30),
                ),
                controller: passwordController,
              ),
            ],
          ),
          onForgotPassword: () {},
        ),
      ),
      viewModelBuilder: () => AuthViewModel(),
    );
  }
}
