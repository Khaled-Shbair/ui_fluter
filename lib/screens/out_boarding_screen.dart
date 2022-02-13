import 'package:flutter/material.dart';
import '../widgets/Out_Boarding_Content.dart';

class OutBoarding extends StatefulWidget {
  const OutBoarding({Key? key}) : super(key: key);

  @override
  _OutBoardingState createState() => _OutBoardingState();
}

class _OutBoardingState extends State<OutBoarding> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: Visibility(
                visible: _currentPage < 2,
                // replacement: TextButton(
                //   onPressed: (){},
                //   child:Text('START'),
                // ),
                child: TextButton(
                  onPressed: () {
                    _pageController.animateToPage(2,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeIn);
                  },
                  child: const Text('SKIP'),
                ),
              ),
            ),
            Expanded(
              child: PageView(
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                controller: _pageController,
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
