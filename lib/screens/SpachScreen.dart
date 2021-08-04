import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'home_screen.dart';


class SS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreen(
        image: Image.asset("images/logo.jpg"),
        backgroundColor: Colors.white,
        seconds: 4,
        navigateAfterSeconds: HomeScreen(),
        photoSize: 150,
        loaderColor: Colors.blue,
        title: Text("مرحبا بكم في متجرنا للجمله",style: TextStyle(fontSize: 26,color: Colors.green),),
      ),
    );
  }
}


