import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: ListView.builder(
        padding: const EdgeInsetsDirectional.all(10),
        itemBuilder: (context, index) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: const ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(Icons.phone_android),
              trailing: Icon(Icons.phone),
              title: Text('Mobile'),
              subtitle: Text('0599-123-4560'),
            ),
          );
        },
      ),
    );
  }
}

/**
    ListView.separated(
    itemBuilder: (context, index) {
    return const ListTile(
    contentPadding: EdgeInsets.zero,
    leading: Icon(Icons.phone_android),
    trailing: Icon(Icons.phone),
    title: Text('Mobile'),
    subtitle: Text('0599-123-4560'),
    );
    },
    separatorBuilder: (context, index) {
    return const Divider(
    color: Colors.red,
    indent: 10,
    endIndent: 10,
    thickness: 1,
    );
    },
    itemCount: 10));
 **/
/**
    ListView.builder(
    //itemCount: 10,
    padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
    itemBuilder: (context, index) {
    return const  ListTile(
    contentPadding: EdgeInsets.zero,
    leading: Icon(Icons.phone_android),
    trailing: Icon(Icons.phone),
    title: Text('Mobile'),
    subtitle: Text('0599-123-4560'),
    );
    },
    ),

 */
/**
    body: Padding(
    padding: const EdgeInsets.all(8.0),
    child: ListView(
    //physics:NeverScrollableScrollPhysics() ,
    // physics: BouncingScrollPhysics(),
    // shrinkWrap: true,
    //reverse: true,
    // scrollDirection: Axis.vertical,
    padding: const EdgeInsetsDirectional.all(10),
    children:const [
    ListTile(
    contentPadding: EdgeInsets.zero,
    leading: Icon(Icons.phone_android),
    trailing: Icon(Icons.phone),
    title: Text('Mobile'),
    subtitle: Text('0599-123-4560'),
    ),
    ListTile(
    leading: Icon(Icons.phone_android),
    trailing: Icon(Icons.phone),
    title: Text('Mobile'),
    subtitle: Text('0599-123-456'),
    ),
    ListTile(
    leading: Icon(Icons.phone_android),
    trailing: Icon(Icons.phone),
    title: Text('Mobile'),
    subtitle: Text('0599-123-456'),
    ),

    ],
    ),
    ),

 ***/
