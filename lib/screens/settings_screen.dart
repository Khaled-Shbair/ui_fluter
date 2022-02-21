import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _switchListTile = false;
  String _gender = 'M';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SwitchListTile(
            title: const Text('Trun on && Trun off'),
            value: _switchListTile,
            onChanged: (bool value) {
              setState(() {
                _switchListTile = value;
              });
            },
          ),
          const SizedBox(height: 20),
          const Text(
            'Gender',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          RadioListTile<String>(
            title: const Text('Male'),
            value: 'M',
            groupValue: _gender,
            onChanged: (String? value) {
              setState(() {
                if (value != null) {
                  _gender = value;
                }
              });
            },
          ),
          RadioListTile<String>(
            title: const Text('Female'),
            value: 'F',
            groupValue: _gender,
            onChanged: (String? value) {
              if (value != null) {
                _gender = value;
              }
            },
          ),
        ],
      ),
    );
  }
}
