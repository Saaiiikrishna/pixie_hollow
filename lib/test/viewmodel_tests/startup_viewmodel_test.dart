import 'package:flutter_test/flutter_test.dart';
import 'package:pixiehollow/screens/home/home_screen_viewmodel.dart';
import 'package:pixiehollow/test/helpers/test_helpers.dart';

void main() {
  group('StartupViewmodelTest -', () {
    setUp(() => registerServices());
    tearDown(() => unregisterServices());
  });

  group('runStartupLogic -', () {
    test('Checking if we have a user logged in on UserService', () async {
      final userService = getAndRegisterUserService();
      final model = HomeViewModel();
      await model.runStartupLogic();
      verify(userService.hasLoggedInUser);
    });
  });
}
