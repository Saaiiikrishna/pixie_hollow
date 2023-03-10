// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_test/flutter_test.dart';
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
    });
  });
}
