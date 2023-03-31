import 'package:pixiehollow/app/app.locator.dart';
import 'package:pixiehollow/app/app.logger.dart';
import 'package:pixiehollow/exceptions/firestore_api_exception.dart';
import 'package:pixiehollow/models/user_model.dart';
import 'package:pixiehollow/screens/register/register_screen_view.form.dart';
import 'package:pixiehollow/services/user_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';
import 'package:stacked_services/stacked_services.dart';

abstract class FormLayoutViewModel extends FormViewModel {
  final log = getLogger('LoginViewModel');
  final userService = locator<UserService>();
  final navigationService = locator<NavigationService>();

  final firebaseAuthenticationService =
      locator<FirebaseAuthenticationService>();

  final String successRoute;
  FormLayoutViewModel({required this.successRoute});

  @override
  void setFormStatus() {}

  Future<FirebaseAuthenticationResult> runAuthentication();

  Future saveData() async {
    log.i('valued:$formValueMap');

    try {
      final result =
          await runBusyFuture(runAuthentication(), throwException: true);

      await _handleAuthenticationResponse(result);
    } on FirestoreApiException catch (e) {
      log.e(e.toString());
      setValidationMessage(e.toString());
    }
  }

  Future<void> useGoogleAuthentication() async {
    final result = await firebaseAuthenticationService.signInWithGoogle();
    await _handleAuthenticationResponse(result);
  }

  Future<void> useAppleAuthentication() async {
    final result = await firebaseAuthenticationService.signInWithApple(
      appleClientId: '',
      appleRedirectUri: 'https://pixiehollow.firebaseapp.com/__/auth/handler',
    );
    await _handleAuthenticationResponse(result);
  }

  // Checks if the result has an error. If it doesn't we navigate to the success view
  // else we show the friendly validation message.

  Future<void> _handleAuthenticationResponse(
      FirebaseAuthenticationResult authResult) async {
    log.v('authResult.hasError:${authResult.hasError}');

    if (!authResult.hasError && authResult.user != null) {
      final user = authResult.user!;
      // String fullName;
      // switch (user.providerData[0].providerId) {
      //   case 'google.com':
      //     fullName = user.displayName!;
      //     break;
      //   case 'apple.com':
      //     fullName = user.;
      //     break;
      //   default:
      //     fullName = fullNameValue!;
      // }

      await userService.syncOrCreateUserAccount(
        user: UserModel(
            id: user.uid,
            email: user.email,
            fullName: fullNameValue ?? user.displayName),
      );

      // navigate to success route
      navigationService.replaceWith(successRoute);
    } else {
      if (!authResult.hasError && authResult.user == null) {
        log.wtf(
            'We have no error but the user is null. This should not be happening');
      }

      log.w('Authentication Failed: ${authResult.errorMessage}');

      setValidationMessage(authResult.errorMessage);
      notifyListeners();
    }
  }
}
