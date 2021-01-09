import 'package:MyPortfolio/Strings/textstyles.dart';
import 'package:flutter/material.dart';

class Introduction extends StatefulWidget {
  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                    child: Column(
                  children: [
                    Text.rich(
                      TextSpan(
                        text: "Hey I'm",
                        style: CustomTextStyles.customText(
                            isBold: true, size: FontSizes.heading),
                        children: <TextSpan>[
                          TextSpan(
                              text: ' Rhowel Parayno! ',
                              style: CustomTextStyles.customText(
                                  isBold: true,
                                  size: FontSizes.heading,
                                  family: 'Aliens')),
                        ],
                      ),
                    ),
                    Text(
                        'I am a 4th year undergraduate from University of Makati',
                        style: CustomTextStyles.customText(
                            size: FontSizes.subHeading)),
                    Text('and I am a Flutter developer.',
                        style: CustomTextStyles.customText(
                            size: FontSizes.subHeading)),
                  ],
                )),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  child: Text("Hey I'm Rhowel Parayno!"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
