

import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../utils/device_size.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(getDeviceSize(context));
    print("hello");
    return Scaffold(
      backgroundColor: const Color(0xff25262a),
      body: Padding(
        padding: getDeviceSize(context).width<330 ?  const EdgeInsets.symmetric(vertical: 10,horizontal: 10)   :  EdgeInsets.symmetric(vertical: 24,horizontal: getDeviceSize(context).width*0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text("About Me",style: TextStyle(fontFamily: 'Montserrat',color: Colors.blue,fontWeight: FontWeight.bold,
             fontSize: getDeviceSize(context).width<420 ? 14 : 18),),
             SizedBox(height: getDeviceSize(context).width<420 ? 12 : 24,),
            Text(aboutData["greeting"]!,textAlign: TextAlign.center,style:  TextStyle(fontFamily: 'Montserrat',color: Colors.white,fontWeight: FontWeight.w300,
            fontSize: getDeviceSize(context).width<420 ? 15 : 24)),
             SizedBox(height: getDeviceSize(context).width<420 ? 12 : 24,),
            Text(aboutData["quote"]!,textAlign: TextAlign.center,style: const TextStyle(fontStyle: FontStyle.italic,fontFamily: 'Montserrat',color: Colors.white,fontWeight: FontWeight.w400),),
            SizedBox(height: getDeviceSize(context).width<420 ? getDeviceSize(context).width*0.01 : getDeviceSize(context).width*0.02,),
            Text(aboutData["bio"]!,textAlign: TextAlign.center,style: const TextStyle(fontFamily: 'Montserrat',color: Colors.white,fontWeight: FontWeight.w400,fontSize: 12,letterSpacing: 1),),
            SizedBox(height: getDeviceSize(context).width<420 ? getDeviceSize(context).width*0.01 : getDeviceSize(context).width*0.02,),
            ElevatedButton(
                style:  ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0),),),
                    fixedSize: const MaterialStatePropertyAll(Size(220,48)),
                    backgroundColor: const MaterialStatePropertyAll(Colors.blue)
                ),
                onPressed: (){},
                child: const Row(
                  children:  [
                    Icon(Icons.file_present_sharp),
                    SizedBox(width: 8,),
                    Text("Download Resume",style: TextStyle(fontFamily: 'Montserrat',))
                  ],
                )),
          
          ],
        ),
      ),
    );
  }
}
