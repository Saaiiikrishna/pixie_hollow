import 'package:flutter/material.dart';
import 'package:pixiehollow/screens/register/register_screen_view.form.dart';
import 'package:pixiehollow/screens/register/register_screen_viewmodel.dart';
import 'package:pixiehollow/utils/base/form_layout_view.dart';
import 'package:pixiehollow/utils/widgets/navbar.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

@FormView(fields: [
  FormTextField(name: 'fullName'),
  FormTextField(name: 'email'),
  FormTextField(name: 'password'),
])
class RegisterAccountView extends StatelessWidget with $RegisterAccountView {
  RegisterAccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RegisterAccountViewModel>.reactive(
      onViewModelReady: (model) => syncFormWithViewModel(model),
      builder: (context, model, child) => Scaffold(
        drawer: const Navbar(),
        appBar: AppBar(
          title: const Text('Create Account'),
        ),
        body: AuthLayout(
          busy: model.isBusy,
          onMainButtonTapped: model.saveData,
          validationMessage: model.validationMessage,
          onSignInWithGoogle: model.useGoogleAuthentication,
          onSignInWithApple: model.useAppleAuthentication,
          mainButtonTitle: 'Register',
          subtitle: 'Fill in your details to join us.',
          googleLogIn: 'Log in with Google',
          appleLogin: 'Log In with Apple',
          form: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
                child: Text(
                  'Create account',
                  style: TextStyle(color: Colors.white60),
                ),
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Full Name',
                  labelStyle: TextStyle(color: Colors.white30),
                ),
                controller: fullNameController,
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
          showTermsText: true,
        ),
      ),
      viewModelBuilder: () => RegisterAccountViewModel(),
    );
  }
}
