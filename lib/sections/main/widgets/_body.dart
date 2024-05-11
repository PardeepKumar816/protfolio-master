part of '../main_section.dart';



class _Body extends StatelessWidget {
   _Body({
    Key? key,
  }) : super(key: key);

  List<Widget> views = [Home(),About(),Tech(),Projects()];

  @override
  Widget build(BuildContext context) {


    return ListView.builder(
      itemCount: views.length,
      itemBuilder: (context, index) => SizedBox(
        height: getDeviceSize(context).height,
          child: views[index]),
    );
  }
}