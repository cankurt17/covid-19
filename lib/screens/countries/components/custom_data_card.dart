import 'package:covid_19/constants.dart';
import 'package:covid_19/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DataCard extends StatelessWidget {
  final Color color;
  final String data;
  final String newData;
  final String svgUrl;
  final String text;

  const DataCard({
    Key key,
    this.color: Colors.black,
    this.data: "123456",
    this.newData: "",
    @required this.svgUrl,
    this.text: "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildSvgPicture(),
        Stack(
          children: [
            builTotalDataContainer(),
            buildNewDataText(),
          ],
        ),
        SizedBox(height: 10),
        Text(
          text,
          style: TextStyle(
            color: kTextLightColor,
            fontSize: getProportionateScreenWidth(18),
          ),
        ),
      ],
    );
  }

  Positioned buildNewDataText() {
    return Positioned(
      top: 1,
      right: 1,
      child: Text(
        newData,
        style: TextStyle(fontWeight: FontWeight.bold, color: color),
      ),
    );
  }

  Container builTotalDataContainer() {
    return Container(
      padding: newData == ""
          ? EdgeInsets.only(top: 20)
          : EdgeInsets.only(top: 20, right: 20),
      alignment: newData == "" ? Alignment.center : Alignment.bottomLeft,
      child: Text(
        data,
        style:
            TextStyle(fontSize: getProportionateScreenWidth(16), color: color),
      ),
    );
  }

  SvgPicture buildSvgPicture() {
    return SvgPicture.asset(
      svgUrl,
      width: getProportionateScreenWidth(50),
    );
  }
}
