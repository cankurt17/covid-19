import 'package:covid_19/constants.dart';
import 'package:covid_19/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CasesMap extends StatelessWidget {
  const CasesMap({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "vaka_haritası".tr,
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(16),
                  fontWeight: FontWeight.bold),
            ),
            Container(
              width: double.infinity,
              height: 2,
              color: kTextLightColor.withOpacity(0.5),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: kDefaultPadding / 2),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 5),
                      color: kPrimaryColor,
                      blurRadius: 10,
                    )
                  ],
                ),
                child: Image.asset(
                  "assets/images/casesMap.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
