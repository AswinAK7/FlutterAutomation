// ignore_for_file: inference_failure_on_instance_creation, duplicate_ignore

import 'package:flutter_driver/flutter_driver.dart';


class LoginPage {
  final http = find.text('Sign in with HTTP');
  final emailField = find.text('Email');
  final passwordField = find.text('Password');
  final loginButton = find.text('Sign in');

  late FlutterDriver driver;

  LoginPage (FlutterDriver driver) {
    this.driver = driver;
  }

   Future<void> signinoption() async {
    await driver.tap(http);
  }

  Future<void> enterEmail(String email) async {
    await driver.tap(emailField);
    await Future.delayed(const Duration(seconds: 5));
    await driver.enterText(email);
    await Future.delayed(const Duration(seconds: 5));

  }

  Future<void> enterPassword(String password) async {
    await driver.waitFor(passwordField);
      
     await Future.delayed(const Duration(seconds: 5));
  // ignore: prefer_const_constructors
  await driver.tap(passwordField, timeout: Duration(seconds: 30));
    await driver.enterText(password);
      await Future.delayed(const Duration(seconds: 5));
  }

  // ignore: duplicate_ignore
  Future<void> tapLoginButton() async {
    await driver.tap(loginButton);
      // ignore: inference_failure_on_instance_creation
      await Future.delayed(const Duration(seconds: 5));
  }



}
