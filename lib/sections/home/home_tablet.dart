import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protfolio/utils/device_size.dart';
import 'package:protfolio/widgets/drawer.dart';

import '../../constants/constants.dart';
import '../../widgets/multi_line_text_container.dart';
import '../../widgets/social_container.dart';

class HomeTablet extends StatelessWidget {
  const HomeTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const CustomDrawer(),
        body: Builder(builder: (context) {
          return SizedBox(
            width: getDeviceSize(context).width,
            height: getDeviceSize(context).height,
            child: Column(
              children: [
                if (getDeviceSize(context).width > 767)
                  Padding(
                    padding: EdgeInsets.only(
                        left: getDeviceSize(context).width * 0.1,
                        right: getDeviceSize(context).width * 0.05,
                        top: getDeviceSize(context).width * 0.03),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "< ",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "Pardeep",
                              style: TextStyle(
                                  fontFamily: 'Agustina',
                                  fontSize: 24,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              " >",
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "About",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat', fontSize: 16),
                                )),
                            SizedBox(
                              width: getDeviceSize(context).width * 0.03,
                            ),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Tech",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat', fontSize: 16),
                                )),
                            SizedBox(
                              width: getDeviceSize(context).width * 0.03,
                            ),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Projects",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat', fontSize: 16),
                                )),
                            SizedBox(
                              width: getDeviceSize(context).width * 0.03,
                            ),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Experience",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat', fontSize: 16),
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                if (getDeviceSize(context).width <= 767)
                  Padding(
                    padding: EdgeInsets.only(
                        left: getDeviceSize(context).width * 0.1,
                        right: getDeviceSize(context).width * 0.05,
                        top: getDeviceSize(context).width * 0.03),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Scaffold.of(context).openDrawer();
                          },
                          child: const Icon(
                            Icons.menu,
                            color: Colors.blue,
                          ),
                        ),
                        Row(
                          children: const [
                            Text(
                              "< ",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "Pardeep",
                              style: TextStyle(
                                  fontFamily: 'Agustina',
                                  fontSize: 24,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              " >",
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                if (getDeviceSize(context).width > 900)
                  Padding(
                    padding: EdgeInsets.only(
                      right: getDeviceSize(context).width * 0.01,
                    ),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: getDeviceSize(context).width * 0.06,
                        height: getDeviceSize(context).width * 0.06,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          shape: BoxShape.circle,
                        ),
                        child: GestureDetector(
                          child: Image.asset(
                            "logo/github-black.png",
                            width: getDeviceSize(context).width * 0.01,
                            height: getDeviceSize(context).width * 0.01,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                    ),
                  ),
                if (getDeviceSize(context).width > 767)
                  SizedBox(
                    height: getDeviceSize(context).height / 10,
                  ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: getDeviceSize(context).width * 0.1),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 220,
                            height: 32,
                            decoration: const BoxDecoration(
                                color: Colors.blue,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4))),
                            child: const Text(
                              "Full Stack Flutter Expert",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontFamily: 'Montserrat'),
                            ),
                          ),
                          Text(
                            "Pardeep",
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                    fontFamily: 'Montserrat'),
                          ),
                          Text("Kumar",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge!
                                  .copyWith(
                                      fontWeight: FontWeight.w200,
                                      color: Colors.grey,
                                      letterSpacing: 10,
                                      height: 1.0,
                                      fontFamily: 'Montserrat')),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.play_arrow,
                                color: Colors.blue,
                                size: getDeviceSize(context).width * 0.02,
                              ),
                              AnimatedTextKit(
                                animatedTexts: [
                                  TyperAnimatedText('Student,',
                                      textStyle: const TextStyle(
                                          fontFamily: 'Montserrat')),
                                  TyperAnimatedText('Software Engineer,',
                                      textStyle: const TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w400)),
                                  TyperAnimatedText('Flutter Developer,',
                                      textStyle: const TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w400)),
                                  TyperAnimatedText('MERN Stack Developer,',
                                      textStyle: const TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w400)),
                                  TyperAnimatedText('Core Java Developer,',
                                      textStyle: const TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w400)),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: getDeviceSize(context).width <= 767
                                    ? getDeviceSize(context).width * 0.04
                                    : getDeviceSize(context).width * 0.01),
                            child: Row(
                              children: [
                                Container(
                                  width: getDeviceSize(context).width * 0.05,
                                  height: 1,
                                  decoration: const BoxDecoration(
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  width: getDeviceSize(context).width * 0.01,
                                ),
                                const SocialContainer(
                                  link: "logo/linkedin.png",
                                ),
                                const SocialContainer(
                                  link: "logo/github.png",
                                ),
                                const SocialContainer(
                                  link: "logo/instagram.png",
                                ),
                                const SocialContainer(
                                  link: "logo/twitter.png",
                                ),
                                const SocialContainer(
                                  link: "logo/facebook.png",
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            child: Column(
                              children: [
                                const Text(
                                  "LET\'S CHAT!",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      height: 2.0,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Montserrat',
                                      letterSpacing: 2),
                                ),
                                Container(
                                  width: 104,
                                  height: 1,
                                  decoration: const BoxDecoration(
                                    color: Colors.blue,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: getDeviceSize(context).width * 0.01,
                                top: getDeviceSize(context).width <= 767
                                    ? getDeviceSize(context).width * 0
                                    : getDeviceSize(context).width * 0.015),
                            child: getDeviceSize(context).width <= 767 &&
                                    getDeviceSize(context).height < 1000
                                ? Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const MultilineTextContainer(
                                            text1: "3",
                                            text2: "Years",
                                            text3: "Experience",
                                          ),
                                          if (getDeviceSize(context).width <=
                                              767)
                                            SizedBox(
                                              height:
                                                  getDeviceSize(context).width *
                                                      0.02,
                                            ),
                                          if (getDeviceSize(context).width >
                                              767)
                                            SizedBox(
                                              width:
                                                  getDeviceSize(context).width *
                                                      0.02,
                                            ),
                                          const MultilineTextContainer(
                                            text1: "10",
                                            text2: "Projects Completed",
                                            text3: "Locally & Internationally",
                                          ),
                                          if (getDeviceSize(context).width <=
                                              767)
                                            SizedBox(
                                              height:
                                                  getDeviceSize(context).width *
                                                      0.02,
                                            ),
                                          if (getDeviceSize(context).width >
                                              767)
                                            SizedBox(
                                              width:
                                                  getDeviceSize(context).width *
                                                      0.02,
                                            ),
                                          const MultilineTextContainer(
                                            text1: "10",
                                            text2: "Projects Completed",
                                            text3: "Locally & Internationally",
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width:
                                            getDeviceSize(context).width * 0.1,
                                      ),
                                      Stack(
                                        children: [
                                          Container(
                                            width:
                                                getDeviceSize(context).width *
                                                    0.28,
                                            height:
                                                getDeviceSize(context).height *
                                                    0.28,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.grey
                                                    .withOpacity(0.1)),
                                          ),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Image.asset(
                                                "images/pardeep.png",
                                                width: getDeviceSize(context)
                                                        .width *
                                                    0.25,
                                                height: getDeviceSize(context)
                                                        .width *
                                                    0.25,
                                              ))
                                        ],
                                      ),
                                    ],
                                  )
                                : Row(
                                    children: [
                                      const MultilineTextContainer(
                                        text1: "3",
                                        text2: "Years",
                                        text3: "Experience",
                                      ),
                                      SizedBox(
                                        width:
                                            getDeviceSize(context).width * 0.02,
                                      ),
                                      const MultilineTextContainer(
                                        text1: "10",
                                        text2: "Projects Completed",
                                        text3: "Locally & Internationally",
                                      ),
                                      SizedBox(
                                        width:
                                            getDeviceSize(context).width * 0.02,
                                      ),
                                      const MultilineTextContainer(
                                        text1: "10",
                                        text2: "Projects Completed",
                                        text3: "Locally & Internationally",
                                      ),
                                    ],
                                  ),
                          )
                        ],
                      ),
                    ),
                    if (getDeviceSize(context).width > 767 &&
                        getDeviceSize(context).height < 1000)
                      Expanded(
                          child: Image.asset(
                        "images/pardeep.png",
                        width: getDeviceSize(context).width * 0.35,
                        height: getDeviceSize(context).width * 0.35,
                      ))
                  ],
                ),
                if (getDeviceSize(context).height > 1000)
                  SizedBox(
                      width: getDeviceSize(context).width,
                      height: getDeviceSize(context).height / 2,
                      child: Image.asset(
                        "images/pardeep.png",
                        width: getDeviceSize(context).width * 0.35,
                        height: getDeviceSize(context).width * 0.35,
                      ))
              ],
            ),
          );
        }));
  }
}
