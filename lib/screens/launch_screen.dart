import 'package:flutter/material.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3),
          () { Navigator.pushReplacementNamed( context, '/outBoarding',); },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: AlignmentDirectional.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              Colors.blue.shade200,
              Colors.blue.shade900,
            ],
          ),
        ),
        child: const Text(
          'UI APP',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            wordSpacing: 2,
          ),
        ),
      ),
    );
  }
}
