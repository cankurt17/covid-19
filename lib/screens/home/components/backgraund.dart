import 'package:covid_19/constants.dart';
import 'package:covid_19/screens/home/components/language_switch.dart';
import 'package:covid_19/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Backgraund extends StatefulWidget {
  @override
  _BackgraundState createState() => _BackgraundState();
}

class _BackgraundState extends State<Backgraund>
    with SingleTickerProviderStateMixin {
  AnimationController animatedController;
  Animation animation;

  Animation animation2;
  @override
  void initState() {
    super.initState();
    animatedController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    );

    animatedController.addListener(() {
      setState(() {});
    });
    animation = ColorTween(begin: kPrimaryColor, end: Colors.white)
        .animate(animatedController);

    animatedController.forward();
    animatedController.addStatusListener((durum) {
      if (durum == AnimationStatus.completed) {
        animatedController.reverse().orCancel;
      } else if (durum == AnimationStatus.dismissed) {
        animatedController.forward().orCancel;
      }
    });
  }

  @override
  void dispose() {
    animatedController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: buildMyClipper(),
      child: Stack(
        children: [
          Container(
            height: getProportionateScreenHeight(300),
            width: double.infinity,
            decoration: BoxDecoration(
              color: animation.value,
              image:
                  DecorationImage(image: AssetImage("assets/images/virus.png")),
            ),
            child: SvgPicture.asset(
              "assets/icons/Drcorona.svg",
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter,
            ),
          ),
          LanguageSwitch()
        ],
      ),
    );
  }

  MyClipper buildMyClipper() => MyClipper();
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
