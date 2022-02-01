import 'package:flutter/material.dart';
import 'package:friendlyeat/Pages/HomePage.dart';
import 'package:friendlyeat/Pages/WebPage.dart';
class DirectPage extends StatefulWidget {
  const DirectPage({Key? key}) : super(key: key);

  @override
  _DirectPageState createState() => _DirectPageState();
}

class _DirectPageState extends State<DirectPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.shortestSide;
    if(size<600){
      return HomePage();
    }else{
      return WebPage();
    }
  }
}
