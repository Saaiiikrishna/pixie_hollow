import 'package:pixiehollow/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';
import 'package:stacked_services/stacked_services.dart';

abstract class FormLayoutViewModel extends FormViewModel {
  // final log = getLogger('LoginViewModel');

  // final userService = locator<UserService>();
  final navigationService = locator<NavigationService>();

  final firebaseAuthenticationService =
      locator<FirebaseAuthenticationService>();

  final String successRoute;
  FormLayoutViewModel({required this.successRoute});

  @override
  void setFormStatus() {}

  Future<FirebaseAuthenticationResult> runAuthentication();

  Future saveData() async {
    // log.i('valued:$formValueMap');

    // try {
    final result =
        await runBusyFuture(runAuthentication(), throwException: true);

    if (!result.hasError) {
      navigationService.replaceWith(successRoute);
    } else {
      setValidationMessage(result.errorMessage);
    }

    // await _handleAuthenticationResponse(result);
    // } on FirestoreApiException catch (e) {
    // log.e(e.toString());
    // setValidationMessage(e.toString());
    // }
  }

  Future<void> useGoogleAuthentication() async {
    final result = await firebaseAuthenticationService.signInWithGoogle();
    await _handleAuthenticationResponse(result);
  }

  Future<void> useAppleAuthentication() async {
    final result = await firebaseAuthenticationService.signInWithApple(
      appleClientId: '',
      appleRedirectUri: '',
    );
    await _handleAuthenticationResponse(result);
  }

  // Checks if the result has an error. If it doesn't we navigate to the success view
  // else we show the friendly validation message.

  Future<void> _handleAuthenticationResponse(
      FirebaseAuthenticationResult authResult) async {
    //   log.v('authResult.hasError:${authResult.hasError}');

    if (!authResult.hasError && authResult.user != null) {
      //     final user = authResult.user!;

      //     await userService.syncOrCreateUserAccount(
      //       user: User(
      //         id: user.uid,
      //         email: user.email,
      //       ),
      //     );

      // navigate to success route
      navigationService.replaceWith(successRoute);
    } else {
      //     if (!authResult.hasError && authResult.user == null) {
      //       log.wtf(
      //           'We have no error but the user is null. This should not be happening');
      //     }

      //     log.w('Authentication Failed: ${authResult.errorMessage}');

      setValidationMessage(authResult.errorMessage);
      // notifyListeners();
    }
  }
}
