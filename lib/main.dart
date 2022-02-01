import 'package:flutter/material.dart';
import 'package:friendlyeat/Pages/HomePage.dart';
import 'package:friendlyeat/Pages/WebPage.dart';
import 'package:friendlyeat/Pages/directPage.dart';import 'package:flutter/services.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  DirectPage(),
      routes:
    {
      HomePage.id
    :(context)=>HomePage(),
      WebPage.id:(context)=>WebPage(),


        // PinPutState.id:(context)=>PinPutState(),
      },
    );
  }
}
