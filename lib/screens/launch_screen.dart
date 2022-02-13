import 'package:flutter/material.dart';

class launchScreen extends StatefulWidget {
  const launchScreen({Key? key}) : super(key: key);

  @override
  _launchScreenState createState() => _launchScreenState();
}

class _launchScreenState extends State<launchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      const Duration(
        seconds: 3,
      ),
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
