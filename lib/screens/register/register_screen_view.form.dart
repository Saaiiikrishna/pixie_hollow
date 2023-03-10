// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String FullNameValueKey = 'fullName';
const String EmailValueKey = 'email';
const String PasswordValueKey = 'password';

final Map<String, TextEditingController>
    _RegisterAccountViewTextEditingControllers = {};

final Map<String, FocusNode> _RegisterAccountViewFocusNodes = {};

final Map<String, String? Function(String?)?>
    _RegisterAccountViewTextValidations = {
  FullNameValueKey: null,
  EmailValueKey: null,
  PasswordValueKey: null,
};

mixin $RegisterAccountView on StatelessWidget {
  TextEditingController get fullNameController =>
      _getFormTextEditingController(FullNameValueKey);
  TextEditingController get emailController =>
      _getFormTextEditingController(EmailValueKey);
  TextEditingController get passwordController =>
      _getFormTextEditingController(PasswordValueKey);
  FocusNode get fullNameFocusNode => _getFormFocusNode(FullNameValueKey);
  FocusNode get emailFocusNode => _getFormFocusNode(EmailValueKey);
  FocusNode get passwordFocusNode => _getFormFocusNode(PasswordValueKey);

  TextEditingController _getFormTextEditingController(String key,
      {String? initialValue}) {
    if (_RegisterAccountViewTextEditingControllers.containsKey(key)) {
      return _RegisterAccountViewTextEditingControllers[key]!;
    }
    _RegisterAccountViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _RegisterAccountViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_RegisterAccountViewFocusNodes.containsKey(key)) {
      return _RegisterAccountViewFocusNodes[key]!;
    }
    _RegisterAccountViewFocusNodes[key] = FocusNode();
    return _RegisterAccountViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormViewModel model) {
    fullNameController.addListener(() => _updateFormData(model));
    emailController.addListener(() => _updateFormData(model));
    passwordController.addListener(() => _updateFormData(model));
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated('Use syncFormWithViewModel instead.'
      'This feature was deprecated after 3.1.0.')
  void listenToFormUpdated(FormViewModel model) {
    fullNameController.addListener(() => _updateFormData(model));
    emailController.addListener(() => _updateFormData(model));
    passwordController.addListener(() => _updateFormData(model));
  }

  final bool _autoTextFieldValidation = true;
  bool validateFormFields(FormViewModel model) {
    _updateFormData(model, forceValidate: true);
    return model.isFormValid;
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormViewModel model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          FullNameValueKey: fullNameController.text,
          EmailValueKey: emailController.text,
          PasswordValueKey: passwordController.text,
        }),
    );
    if (_autoTextFieldValidation || forceValidate) {
      _updateValidationData(model);
    }
  }

  /// Updates the fieldsValidationMessages on the FormViewModel
  void _updateValidationData(FormViewModel model) =>
      model.setValidationMessages({
        FullNameValueKey: _getValidationMessage(FullNameValueKey),
        EmailValueKey: _getValidationMessage(EmailValueKey),
        PasswordValueKey: _getValidationMessage(PasswordValueKey),
      });

  /// Returns the validation message for the given key
  String? _getValidationMessage(String key) {
    final validatorForKey = _RegisterAccountViewTextValidations[key];
    if (validatorForKey == null) return null;
    String? validationMessageForKey =
        validatorForKey(_RegisterAccountViewTextEditingControllers[key]!.text);
    return validationMessageForKey;
  }

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    for (var controller in _RegisterAccountViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _RegisterAccountViewFocusNodes.values) {
      focusNode.dispose();
    }

    _RegisterAccountViewTextEditingControllers.clear();
    _RegisterAccountViewFocusNodes.clear();
  }
}

extension ValueProperties on FormViewModel {
  bool get isFormValid =>
      this.fieldsValidationMessages.values.every((element) => element == null);
  String? get fullNameValue => this.formValueMap[FullNameValueKey] as String?;
  String? get emailValue => this.formValueMap[EmailValueKey] as String?;
  String? get passwordValue => this.formValueMap[PasswordValueKey] as String?;

  set fullNameValue(String? value) {
    this.setData(
      this.formValueMap
        ..addAll({
          FullNameValueKey: value,
        }),
    );

    if (_RegisterAccountViewTextEditingControllers.containsKey(
        FullNameValueKey)) {
      _RegisterAccountViewTextEditingControllers[FullNameValueKey]?.text =
          value ?? '';
    }
  }

  set emailValue(String? value) {
    this.setData(
      this.formValueMap
        ..addAll({
          EmailValueKey: value,
        }),
    );

    if (_RegisterAccountViewTextEditingControllers.containsKey(EmailValueKey)) {
      _RegisterAccountViewTextEditingControllers[EmailValueKey]?.text =
          value ?? '';
    }
  }

  set passwordValue(String? value) {
    this.setData(
      this.formValueMap
        ..addAll({
          PasswordValueKey: value,
        }),
    );

    if (_RegisterAccountViewTextEditingControllers.containsKey(
        PasswordValueKey)) {
      _RegisterAccountViewTextEditingControllers[PasswordValueKey]?.text =
          value ?? '';
    }
  }

  bool get hasFullName =>
      this.formValueMap.containsKey(FullNameValueKey) &&
      (fullNameValue?.isNotEmpty ?? false);
  bool get hasEmail =>
      this.formValueMap.containsKey(EmailValueKey) &&
      (emailValue?.isNotEmpty ?? false);
  bool get hasPassword =>
      this.formValueMap.containsKey(PasswordValueKey) &&
      (passwordValue?.isNotEmpty ?? false);

  bool get hasFullNameValidationMessage =>
      this.fieldsValidationMessages[FullNameValueKey]?.isNotEmpty ?? false;
  bool get hasEmailValidationMessage =>
      this.fieldsValidationMessages[EmailValueKey]?.isNotEmpty ?? false;
  bool get hasPasswordValidationMessage =>
      this.fieldsValidationMessages[PasswordValueKey]?.isNotEmpty ?? false;

  String? get fullNameValidationMessage =>
      this.fieldsValidationMessages[FullNameValueKey];
  String? get emailValidationMessage =>
      this.fieldsValidationMessages[EmailValueKey];
  String? get passwordValidationMessage =>
      this.fieldsValidationMessages[PasswordValueKey];
  void clearForm() {
    fullNameValue = '';
    emailValue = '';
    passwordValue = '';
  }
}

extension Methods on FormViewModel {
  setFullNameValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[FullNameValueKey] = validationMessage;
  setEmailValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[EmailValueKey] = validationMessage;
  setPasswordValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[PasswordValueKey] = validationMessage;
}
