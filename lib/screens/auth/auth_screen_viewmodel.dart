import 'package:pixiehollow/app/app.locator.dart';
import 'package:pixiehollow/app/app.router.dart';
import 'package:pixiehollow/utils/base/form_layout_viewmodel.dart';
import 'package:pixiehollow/screens/auth/auth_screen_view.form.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';

class AuthViewModel extends FormLayoutViewModel {
  final _firebaseAuthenticationService =
      locator<FirebaseAuthenticationService>();

  AuthViewModel() : super(successRoute: Routes.homeView);

  @override
  Future<FirebaseAuthenticationResult> runAuthentication() =>
      _firebaseAuthenticationService.loginWithEmail(
        email: emailValue!,
        password: passwordValue!,
      );

  void navigateToCreateAccount() =>
      navigationService.navigateTo(Routes.registerAccountView);
}
