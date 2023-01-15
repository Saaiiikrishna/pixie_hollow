import 'package:pixiehollow/app/app.locator.dart';
import 'package:pixiehollow/app/app.router.dart';
import 'package:pixiehollow/utils/base/form_layout_viewmodel.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';
import 'package:pixiehollow/screens/register/register_screen_view.form.dart';

class RegisterAccountViewModel extends FormLayoutViewModel {
  final _firebaseAuthenticationService =
      locator<FirebaseAuthenticationService>();

  RegisterAccountViewModel() : super(successRoute: Routes.homeView);

  @override
  Future<FirebaseAuthenticationResult> runAuthentication() =>
      _firebaseAuthenticationService.createAccountWithEmail(
        email: emailValue!,
        password: passwordValue!,
      );

  void navigateBack() => navigationService.back();
}
