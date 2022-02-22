import 'package:flutter/material.dart';
import 'package:ui_flutter/screens/products_screen.dart';
import 'package:ui_flutter/screens/register_screen.dart';

import '../model/bn_item.dart';
import 'login_screen.dart';
import 'out_boarding_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final List<BnItem> _bnItems = <BnItem>[
    BnItem(title: 'Login', widget: const LoginScreen()),
    BnItem(title: 'products', widget: const ProductsScreen()),
    BnItem(title: 'Boarding', widget: const OutBoarding()),
    BnItem(title: 'products', widget: const RegisterScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_bnItems[_currentIndex].title),
      ),
      body: _bnItems[_currentIndex].widget,
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(),
              currentAccountPictureSize: Size(80, 80),
              // otherAccountsPictures: [
              //   CircleAvatar(),
              //   CircleAvatar(),
              //   CircleAvatar(),
              // ],
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              accountName: Text('Flutter'),
              accountEmail: Text('dlom2020@hotmail.com'),
            ),
            ListTile(
              title: const Text('FQAS'),
              leading: const Icon(Icons.login),
              onTap: () {
                Navigator.pop(context);
                Future.delayed(const Duration(seconds: 1), () {
                  Navigator.pushNamed(context,  '/FaqsScreen');
                });
              },
            ),
            // DrawerHeader(
            //   padding: EdgeInsetsDirectional.zero,
            //   child: Container(color: Colors.blue),
            // ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        //   type: BottomNavigationBarType.shifting,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: true,
        currentIndex: _currentIndex,
        elevation: 10,
        selectedItemColor: Colors.greenAccent,
        selectedIconTheme: const IconThemeData(color: Colors.pink),
        unselectedItemColor: Colors.black45,
        unselectedIconTheme: const IconThemeData(color: Colors.blue),
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.pink,
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.yellow,
            icon: Icon(Icons.search_off_outlined),
            activeIcon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.build_outlined),
            activeIcon: Icon(Icons.build),
            label: 'Build',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(Icons.delete_outline_outlined),
            activeIcon: Icon(Icons.delete),
            label: 'Build',
          ),
        ],
      ),
    );
  }
}
