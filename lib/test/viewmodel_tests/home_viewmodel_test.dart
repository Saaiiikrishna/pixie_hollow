// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_test/flutter_test.dart';
import 'package:pixiehollow/app/app.router.dart';
import 'package:pixiehollow/screens/home/home_screen_viewmodel.dart';
import 'package:pixiehollow/test/helpers/test_helpers.dart';
import 'package:mockito/mockito.dart';

HomeViewModel _getModel() => HomeViewModel();

void main() {
  group('HomeViewModelTest -', () {
    setUp(() => registerServices());
    tearDown(() => unregisterServices());

    group('runHomeLogic -', () {
      test('Checking if we have a user logged in on UserService', () async {
        final userService = getAndRegisterUserService();
        final model = _getModel();
        await model.runHomeLogic();
        verify(userService.hasLoggedInUser);
      });

      test('When we found no user, navigate to login view', () async {
        final navigationService = getAndRegisterNavigationService();
        final model = _getModel();
        await model.runHomeLogic();
        verify(navigationService.replaceWith(Routes.authView));
      });

      test('When user is found on local disk, sync user profile', () async {
        final userService = getAndRegisterUserService(hasLoggedInUser: true);
        final model = _getModel();
        await model.runHomeLogic();
        verify(userService.syncUserAccount());
      });

      test('When user is found on local disk, get user profile', () async {
        final userService = getAndRegisterUserService(hasLoggedInUser: true);
        final model = _getModel();
        await model.runHomeLogic();
        verify(userService.currentUser);
      });

      test(
          'User does not have a default address, navigate to address selection view',
          () async {
        final navigationService = getAndRegisterNavigationService();
        getAndRegisterUserService(hasLoggedInUser: true);
        final model = _getModel();
        await model.runHomeLogic();
        verify(navigationService.navigateTo(Routes.profileView));
      });
    });
  });
}
