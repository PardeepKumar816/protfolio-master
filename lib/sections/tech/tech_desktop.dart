import 'package:flutter/material.dart';

import 'package:protfolio/sections/tech/tech_mobile.dart';
import 'package:protfolio/utils/device_size.dart';

class TechDesktop extends StatelessWidget {
  const TechDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(left: getDeviceSize(context).width / 9),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Tech Stack",
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.blue,
                          fontWeight: FontWeight.w700,
                          fontSize: 22)),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                      """Change is inevitable, so I keep on exploring new technology, learn 
it in a minimal possible way and then build something out of it to 
see how well I did :)""",
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 12)),
                  SizedBox(
                    height: 16,
                  ),
                  SkillName(
                    skillName: "Mobile development",
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      SkillContainer(
                        asset: "assets/icons/flutter.svg",
                        skill: "Flutter",
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      SkillContainer(
                        asset: "assets/icons/dart.svg",
                        skill: "Dart",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SkillName(
                    skillName: "Web development",
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      SkillContainer(
                        asset: "assets/icons/html.svg",
                        skill: "HTML 5",
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      SkillContainer(
                        asset: "assets/icons/css.svg",
                        skill: "CSS 3",
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      SkillContainer(
                        asset: "assets/icons/bootstrap.svg",
                        skill: "Bootstrap",
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      SkillContainer(
                        asset: "assets/icons/js.svg",
                        skill: "Javascript",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SkillName(
                    skillName: "Server Side",
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      SkillContainer(
                        asset: "assets/icons/node.svg",
                        skill: "Node.js",
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      SkillContainer(
                        asset: "assets/icons/express.svg",
                        skill: "Express.js",
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      SkillContainer(
                        asset: "assets/icons/api.svg",
                        skill: "REST APIs",
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      SkillContainer(
                        asset: "assets/icons/dart_frog.svg",
                        skill: "Dart Frog",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SkillName(
                    skillName: "Databases",
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      SkillContainer(
                        asset: "assets/icons/firebase.svg",
                        skill: "Firebase",
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      SkillContainer(
                        asset: "assets/icons/mongo.svg",
                        skill: "MongoDB",
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      SkillContainer(
                        asset: "assets/icons/sql.svg",
                        skill: "MySQL",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SkillName(
                    skillName: "Version controlloing & management",
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      SkillContainer(
                        asset: "assets/icons/git.svg",
                        skill: "Git",
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      SkillContainer(
                        asset: "assets/icons/github.svg",
                        skill: "GitHub",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SkillName(
                    skillName: "UI/UX Design",
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      SkillContainer(
                        asset: "assets/icons/figma.svg",
                        skill: "Figma",
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      SkillContainer(
                        asset: "assets/icons/adobexd.svg",
                        skill: "Adobe XD",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: getDeviceSize(context).width / 20,
          ),
          Expanded(
              flex: getDeviceSize(context).width>1410 ? 2 : 1,
              child: Padding(
                padding:
                    EdgeInsets.only(right: getDeviceSize(context).width / 18),
                child: Image.asset(
                  "images/developer.png",
                  // fit: BoxFit.contain,
                  // width: getDeviceSize(context).width,
                  // height: getDeviceSize(context).height,
                ),
              ))
        ],
      ),
    );
  }
}

// class SkillName extends StatelessWidget {
//   const SkillName({Key? key, required this.skillName}) : super(key: key);

//   final String skillName;

//   @override
//   Widget build(BuildContext context) {
//     return Text(skillName,
//         style: const TextStyle(
//             fontFamily: 'Montserrat',
//             color: Colors.grey,
//             fontWeight: FontWeight.w400,
//             fontSize: 10));
//   }
// }

// class SkillContainer extends StatelessWidget {
//   const SkillContainer({Key? key, required this.asset, required this.skill})
//       : super(key: key);

//   final String asset;
//   final String skill;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.only(top: 8, bottom: 8, right: 16, left: 8),
//       decoration: const BoxDecoration(
//           borderRadius: BorderRadius.all(Radius.circular(8)),
//           color: Colors.blue),
//       child: Row(
//         children: [
//           SvgPicture.asset(
//             asset,
//             width: 20,
//             height: 20,
//           ),
//           const SizedBox(
//             width: 8,
//           ),
//           Text(skill,
//               style: const TextStyle(
//                   fontFamily: 'Montserrat',
//                   color: Colors.white,
//                   fontWeight: FontWeight.w400,
//                   fontSize: 14))
//         ],
//       ),
//     );
//   }
// }
