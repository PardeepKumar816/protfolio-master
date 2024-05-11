

import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import '../../utils/device_size.dart';

class AboutTablet extends StatelessWidget {
  const AboutTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff25262a),
      body: Padding(
       padding: EdgeInsets.symmetric(vertical: getDeviceSize(context).width<660 ? 24 : 48,horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text("About Me",style: TextStyle(fontFamily: 'Montserrat',color: Colors.blue,fontWeight: FontWeight.bold,
            fontSize: getDeviceSize(context).width<815? 18 :22,
            ),),
            SizedBox(height: getDeviceSize(context).width<815 ? 30 : 20),
            Text(aboutData["greeting"]!,textAlign: TextAlign.center,style:  TextStyle(fontFamily: 'Montserrat',color: Colors.white,fontWeight: FontWeight.w300,
            fontSize: getDeviceSize(context).width<815 ? 32 :40,
            ),),
            SizedBox(height: getDeviceSize(context).width<815 ? 30 : 20),
            Text(aboutData["quote"]!,textAlign: TextAlign.center,style: const TextStyle(fontStyle: FontStyle.italic,fontFamily: 'Montserrat',color: Colors.white,fontWeight: FontWeight.w400),),
            SizedBox(height: 
            getDeviceSize(context).width<815? getDeviceSize(context).width*0.02 :
             getDeviceSize(context).width*0.02 ),
            Text(aboutData["bio"]!,textAlign: TextAlign.center,style:  TextStyle(fontFamily: 'Montserrat',color: Colors.white,fontWeight: FontWeight.w400,
            fontSize: getDeviceSize(context).width<815 ? 12 : 16,
            letterSpacing: 1),),
            SizedBox(height: getDeviceSize(context).width<815 ? getDeviceSize(context).width*0.02 : getDeviceSize(context).width*0.02),
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
