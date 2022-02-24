import 'package:flutter/material.dart';

import 'faqs_Screen.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          const Text(
            'Tab Bar',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          TabBar(
            // isScrollable: true,
            controller: _tabController,
            labelColor: Colors.black,
            labelStyle: const TextStyle(
              fontSize: 20,
            ),
            indicatorColor: Colors.yellow,
            indicatorWeight: 5,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: const EdgeInsetsDirectional.only(bottom: 5),
            // indicator: BoxDecoration(
            //   borderRadius: BorderRadius.circular(10),
            //   color:  Colors.transparent,
            //   border: Border.all(
            //     color: Colors.green,
            //     width: 2,
            //   ),
            // ),
            unselectedLabelColor: Colors.black54,
            onTap: (int index) {
              setState(() {
                _tabController.index = index;
              });
            },
            tabs: const [
              Tab(text: 'Gender'),
              Tab(text: 'Age'),
            ],
          ),
          IndexedStack(
            index: _tabController.index,
            children: [
              ListView.builder(
                itemCount: 20,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return const ListTile(
                    title: Text('Text Title'),
                    leading: Icon(Icons.start),
                  );
                },
              ),
              const Text('Pag 1'),
            ],
          ),
          // Expanded(
          //   child: TabBarView(
          //     controller: _tabController,
          //     children: [
          //       ListView.builder(
          //         itemBuilder: (context, index) {
          //           return const ListTile(
          //             title: Text('Text Title'),
          //             leading: Icon(Icons.start),
          //           );
          //         },
          //       ),
          //       const Text('Pag 1'),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}

/**

    import 'package:flutter/material.dart';

    import 'faqs_Screen.dart';

    class AboutScreen extends StatefulWidget {
    const AboutScreen({Key? key}) : super(key: key);

    @override
    _AboutScreenState createState() => _AboutScreenState();
    }

    class _AboutScreenState extends State<AboutScreen>
    with SingleTickerProviderStateMixin {
    late TabController _tabController;

    @override
    void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    }

    @override
    void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
    }

    @override
    Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: const Text('About'),
    bottom: TabBar(
    isScrollable: true,
    controller: _tabController,
    labelColor: Colors.black,
    labelStyle: const TextStyle(
    fontSize: 20,
    ),
    indicatorColor: Colors.yellow,
    indicatorWeight: 5,
    indicatorSize: TabBarIndicatorSize.label,
    indicatorPadding: const EdgeInsetsDirectional.only(bottom: 5),
    // indicator: BoxDecoration(
    //   borderRadius: BorderRadius.circular(10),
    //   color:  Colors.transparent,
    //   border: Border.all(
    //     color: Colors.green,
    //     width: 2,
    //   ),
    // ),
    unselectedLabelColor: Colors.black54,
    onTap: (int index){
    setState(() {
    _tabController.index=index;
    });
    },
    tabs: const [
    Tab(text: 'Gender'),
    Tab(text: 'Age'),

    ],
    ),
    ),
    body: TabBarView(
    controller: _tabController,
    children: const [
    Text(''),
    FaqsScreen(),
    ],
    )
    );
    }
    }

 **/
