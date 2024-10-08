import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/color.dart';
import 'package:whatsapp/firebase_options.dart';
import 'package:whatsapp/responsive/responsive_layout.dart';
import 'package:whatsapp/screen/mobileScreenLayout.dart';
import 'package:whatsapp/screen/webScreenLayout.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
      home: const ResponsiveLayout(
        mobileScreenLayout: Mobilescreenlayout(),
        webScreenLayout: Webscreenlayout(),
      ),
    );
  }
}
