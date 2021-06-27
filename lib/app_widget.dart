import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payflow/modules/barcode_scanner/barcode_sacnner_page.dart';
import 'modules/home/home_page.dart';
import 'modules/login/login_page.dart';
import 'modules/splash/splash_page.dart';
import 'shared/themes/app_colors.dart';

class AppWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 
        'PayFlow',
      theme: 
        ThemeData(
          primaryColor: AppColors.primary,
          primarySwatch: Colors.orange,
        ),
      initialRoute: 
        "/splash",
      routes: {
        "/splash" : (context) => SplashPage(),
        "/home" : (context) => HomePage(),
        "/login" : (context) => LoginPage(),
        "/barcode_scanner": (context) => BarcodeScannerPage(),
      
      },

    );
  }
}