// ignore_for_file: depend_on_referenced_packages

import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:pixiehollow/app/app.locator.dart';
import 'package:pixiehollow/models/user_model.dart';
import 'package:pixiehollow/services/user_service.dart';
import 'package:pixiehollow/test/helpers/test_helpers.mocks.dart';
import 'package:stacked_services/stacked_services.dart';

@GenerateMocks([], customMocks: [
  MockSpec<UserService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<NavigationService>(onMissingStub: OnMissingStub.returnDefault),
])
UserService getAndRegisterUserService({
  bool hasLoggedInUser = false,
  UserModel? currentUser,
}) {
  _removeRegistrationIfExists<UserService>();
  final service = MockUserService();
  when(service.hasLoggedInUser).thenReturn(hasLoggedInUser);
  when(service.currentUser)
      .thenReturn(currentUser ?? UserModel(id: "default_user"));
  locator.registerSingleton<UserService>(service);
  return service;
}

NavigationService getAndRegisterNavigationService() {
  _removeRegistrationIfExists<NavigationService>();
  final service = MockNavigationService();
  locator.registerSingleton<NavigationService>(service);
  return service;
}

void registerServices() {
  getAndRegisterUserService();
  getAndRegisterNavigationService();
}

void unregisterServices() {
  locator.unregister<UserService>();
  locator.unregister<NavigationService>();
}

void _removeRegistrationIfExists<T extends Object>() {
  if (locator.isRegistered<T>()) {
    locator.unregister<T>();
  }
}
