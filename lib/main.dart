import 'package:flutter/material.dart';
import 'package:google_clone/resposive/mobile_screen_layout.dart';
import 'package:google_clone/resposive/responsive_layout_screen.dart';
import 'package:google_clone/resposive/web_screen_layout.dart';
import 'package:google_clone/utils/colours.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Google Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor
      ),
 
      home: const ResponsiveLayoutScreen(
          mobileScreenLayout: MobileScreenLayout(),
          webScreenLayout: WebScreenLayout()),
    );
  }
}
