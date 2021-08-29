import 'package:covid_19/screens/home/components/body.dart';
import 'package:covid_19/size_config.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(resizeToAvoidBottomInset: false, body: HomeBody());
  }
}
