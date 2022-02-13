import 'package:flutter/material.dart';

class OutBoarding extends StatefulWidget {
  const OutBoarding({Key? key}) : super(key: key);

  @override
  _OutBoardingState createState() => _OutBoardingState();
}

class _OutBoardingState extends State<OutBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Container(color:Colors.blue),
          Container(color:Colors.red),
          Container(color:Colors.yellowAccent),
        ],
      ),
    );
  }
}
