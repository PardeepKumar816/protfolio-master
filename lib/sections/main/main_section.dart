

import 'package:flutter/material.dart';
import 'package:protfolio/sections/about/about.dart';
import 'package:protfolio/sections/home/home.dart';
import 'package:protfolio/sections/projects/projects.dart';
import 'package:protfolio/sections/tech/tech.dart';

import '../../utils/device_size.dart';
part 'widgets/_body.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            _Body(),
          ],
        ),
      ),
    );
  }
}