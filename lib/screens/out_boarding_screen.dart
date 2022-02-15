import 'package:flutter/material.dart';
import '../widgets/Out_Boarding_Content.dart';
import '../widgets/Out_boarding_indicator.dart';

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
                replacement: TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/LoginScreen');
                  },
                  child: const Text('START'),
                ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutBoardingIndicator(
                  margin: 14,
                  selected: _currentPage == 0,
                ),
                OutBoardingIndicator(
                  margin: 14,
                  selected: _currentPage == 1,
                ),
                OutBoardingIndicator(
                  selected: _currentPage == 2,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Visibility(
                  visible: _currentPage != 0,
                  maintainAnimation: true,
                  maintainSize: true,
                  maintainState: true,
                  child: IconButton(
                    onPressed: () {
                      _pageController.previousPage(
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeInCubic);
                    },
                    icon: const Icon(Icons.arrow_back_ios),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    _pageController.nextPage(
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInCirc);
                  },
                  icon: const Icon(Icons.arrow_forward_ios),
                  color:
                      _currentPage == 2 ? Colors.grey.shade200 : Colors.black,
                ),
              ],
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children:  [
            //     TabPageSelectorIndicator(
            //         backgroundColor: _currentPage==0? Colors.blue:Colors.white,
            //         borderColor: Colors.black,
            //         size: 15),
            //     TabPageSelectorIndicator(
            //         backgroundColor: _currentPage==1? Colors.blue:Colors.white,
            //         borderColor: Colors.black,
            //         size: 15),
            //     TabPageSelectorIndicator(
            //         backgroundColor: _currentPage==2? Colors.blue:Colors.white,
            //         borderColor: Colors.black,
            //         size: 15),
            //   ],
            // ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
