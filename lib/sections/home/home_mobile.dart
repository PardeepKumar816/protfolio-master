import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protfolio/utils/device_size.dart';
import 'package:protfolio/widgets/drawer.dart';

import '../../widgets/multi_line_text_container.dart';
import '../../widgets/social_container.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

 double getConstraints(context){
   if(getDeviceSize(context).height > 750 && getDeviceSize(context).height < 852){
     return getDeviceSize(context).width*0.7;
   }else if(getDeviceSize(context).height > 852 && getDeviceSize(context).height < 950 ){
     return getDeviceSize(context).width*0.8;
   }else{
     return getDeviceSize(context).width*0.7;
   }
 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer:  const CustomDrawer(),
        body: Builder(
            builder: (context) {
              return Stack(
                children: [
                  SizedBox(
                    height: getDeviceSize(context).height,
                    child: Column(
                      children: [
                          Padding(
                            padding:  EdgeInsets.only(left: getDeviceSize(context).width * 0.1,right:getDeviceSize(context).width * 0.05,top: getDeviceSize(context).width * 0.03 ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: (){
                                    Scaffold.of(context).openDrawer();
                                  },
                                  child: const Icon(
                                    Icons.menu,
                                    color: Colors.blue,
                                  ),
                                ),
                                Row(
                                  children: const [
                                    Text("< ",style: TextStyle(fontSize: 20),),
                                    Text("Pardeep",style: TextStyle(fontFamily: 'Agustina',fontSize: 24,fontWeight: FontWeight.w400),),
                                    Text(" >",style: TextStyle(fontSize: 20),)
                                  ],
                                ),
                              ],
                            ),
                          ),
                       const SizedBox(height: 24,),
                            Padding(
                              padding:  EdgeInsets.only(left: getDeviceSize(context).width * 0.1),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    width: 220,
                                    height: 32,
                                    decoration: const BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.all(Radius.circular(4))
                                    ),
                                    child: const Text("Full Stack Flutter Expert",textAlign: TextAlign.center,style: TextStyle(fontFamily: 'Montserrat'),),
                                  ),
                                  const SizedBox(height: 16,),
                                  Text("Pardeep",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black,fontFamily: 'Montserrat',fontSize: getDeviceSize(context).width<302 ? 48 : 64 ),),
                                  Text("Kumar",style: TextStyle(fontWeight: FontWeight.w200,color: Colors.grey,letterSpacing: 10,height: 1.0,fontFamily: 'Montserrat',fontSize: getDeviceSize(context).width<302 ? 48 : 64)),
                                  const SizedBox(height: 16,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(Icons.play_arrow,color: Colors.blue,size: getDeviceSize(context).width*0.02,),
                                      AnimatedTextKit(
                                        animatedTexts: [
                                          TyperAnimatedText('Student,',textStyle: const TextStyle(fontFamily: 'Montserrat')),
                                          TyperAnimatedText('Software Engineer,',textStyle: const TextStyle(fontFamily: 'Montserrat',fontWeight: FontWeight.w400)),
                                          TyperAnimatedText('Flutter Developer,',textStyle: const TextStyle(fontFamily: 'Montserrat',fontWeight: FontWeight.w400)),
                                          TyperAnimatedText('MERN Stack Developer,',textStyle: const TextStyle(fontFamily: 'Montserrat',fontWeight: FontWeight.w400)),
                                          TyperAnimatedText('Core Java Developer,',textStyle: const TextStyle(fontFamily: 'Montserrat',fontWeight: FontWeight.w400)),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 16),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: getDeviceSize(context).width*0.1,
                                          height: 1,
                                          decoration: const BoxDecoration(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        SizedBox(width: getDeviceSize(context).width*0.01,),
                                        const SocialContainer(link: "logo/linkedin.png",),
                                        const SocialContainer(link: "logo/github.png",),
                                        const SocialContainer(link: "logo/instagram.png",),
                                        const SocialContainer(link: "logo/twitter.png",),
                                        const SocialContainer(link: "logo/facebook.png",),
                                      ],
                                    ),
                                  ),
                                  GestureDetector(
                                    child: Column(
                                      children: [
                                        const Text("LET\'S CHAT!",style: TextStyle(color: Colors.blue,height:2.0,fontWeight: FontWeight.w700,fontFamily:'Montserrat',letterSpacing: 2 ),),
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
                                    padding:  EdgeInsets.only(left: getDeviceSize(context).width*0.01,top: getDeviceSize(context).width*0.04),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            const MultilineTextContainer(text1: "3",text2: "Years",text3: "Experience",),
                                              SizedBox(height: getDeviceSize(context).width*0.02,),
                                            const MultilineTextContainer(text1: "10",text2: "Projects Completed",text3: "Locally & Internationally",),
                                              SizedBox(height: getDeviceSize(context).width*0.02,),
                                            const MultilineTextContainer(text1: "10",text2: "Projects Completed",text3: "Locally & Internationally",),
                                          ],
                                        ),
                                      ],
                                    )
                                  )
                                ],
                              ),
                            ),
                      ],
                    ),
                  ),
                  getDeviceSize(context).height > 750 ?
                  Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Image.asset("images/pardeep.png",width: getConstraints(context),height: getConstraints(context),),
                  )
                      : Positioned(
                    bottom: 0,
                    right: 0,
                    child: Image.asset("images/pardeep.png",width: getDeviceSize(context).width*0.5,height: getDeviceSize(context).width*0.5,),
                  ),
                ],
              );
            }
        )
    );
  }
}


