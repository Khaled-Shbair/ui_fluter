import 'package:flutter/material.dart';
import '../widgets/Out_Boarding_Content.dart';

class OutBoarding extends StatefulWidget {
  const OutBoarding({Key? key}) : super(key: key);

  @override
  _OutBoardingState createState() => _OutBoardingState();
}

class _OutBoardingState extends State<OutBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'SKIP',
                ),
              ),
            ),
            Expanded(
              child: PageView(
                //  scrollDirection:Axis.horizontal,
                children: const [
                  OutBoardingContent(
                    text: 'Welcome!',
                    subText:
                        'Flutter\'s hot reload helps you experiment, build UIs, add features and fix bugs faster. Start With Fully-Customizable Flutter Widgets To Make Native App Interfaces In Minutes. Flexible UI. Mobile Ads SDK. Open Source. Multi-Platform. Fast Development. Null Safe Code.',
                  ),
                  OutBoardingContent(
                    text: 'Add to cart',
                    subText:
                        'Flutter\'s hot reload helps you experiment, build UIs, add features and fix bugs faster. Start With Fully-Customizable Flutter Widgets To Make Native App Interfaces In Minutes. Flexible UI. Mobile Ads SDK. Open Source. Multi-Platform. Fast Development. Null Safe Code.',
                  ),
                  OutBoardingContent(
                    text: 'Enjoy Purchase!',
                    subText:
                        'Flutter\'s hot reload helps you experiment, build UIs, add features and fix bugs faster. Start With Fully-Customizable Flutter Widgets To Make Native App Interfaces In Minutes. Flexible UI. Mobile Ads SDK. Open Source. Multi-Platform. Fast Development. Null Safe Code.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
