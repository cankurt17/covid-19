import 'package:covid_19/constants.dart';
import 'package:covid_19/size_config.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function press;

  const CustomButton({Key key, this.icon, this.text, this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        height: getProportionateScreenHeight(50),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: kPrimaryColor)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              icon,
              color: kBodyTextColor,
            ),
            Expanded(child: TextButton(onPressed: press, child: Text(text))),
            Icon(
              Icons.arrow_forward_ios_outlined,
              color: kBodyTextColor,
            ),
          ],
        ),
      ),
    );
  }
}
