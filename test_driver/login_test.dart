import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import 'pages/login_page.dart';

void main() {
   group('Login tests', () {
 late FlutterDriver driver;
   late LoginPage loginPage;

  setUp(() async {
     driver = await FlutterDriver.connect();
      loginPage = LoginPage(driver); // create an instance of the LoginPage class
  });

 
      tearDownAll(() async {
      if (driver != null) {
        await driver.close();
      }
    });

  test('Editor', () async {
      await loginPage.signinoption();
      await loginPage.enterEmail('user@example.com');
      await loginPage.enterPassword('solution');
      await loginPage.tapLoginButton();

    // Add assertions to verify that the login was successful
  }, timeout: const Timeout(Duration(seconds: 60)));
    });
}
