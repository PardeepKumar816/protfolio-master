

import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget? desktop;
  final Widget? tablet;
  final Widget? mobile;
  const Responsive({Key? key,this.desktop,this.mobile,this.tablet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){
      if (constraints.maxWidth >= 1000) {
        return desktop!;
      } else if (constraints.maxWidth >= 600) {
        return tablet!;
      } else {
        return mobile!;
      }
    });
  }
}
