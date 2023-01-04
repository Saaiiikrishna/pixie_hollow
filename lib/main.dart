import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pixiehollow/app/app.locator.dart';
import 'package:pixiehollow/app/app.router.dart';
import 'package:pixiehollow/responsive/mobile_screen_layout.dart';
import 'package:pixiehollow/responsive/responsive_layout_screen.dart';
import 'package:pixiehollow/responsive/web_screen_layout.dart';
import 'package:pixiehollow/utils/colors.dart';
import 'package:stacked_services/stacked_services.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyDtcKMuYBrlMRiTslOLpGHnQUb2prD1Yvk",
        appId: "1:976557541278:web:0b37b439389067fbc0b88f",
        messagingSenderId: "976557541278",
        projectId: "pixiehollow",
        storageBucket: "pixiehollow.appspot.com",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pixie Hollow',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      // home: const ResponsiveLayout(
      //  webScreenLayout: WebScreenLayout(),
      //  mobileScreenLayout: MobileScreenLayout(),
      // ),
    );
  }
}
