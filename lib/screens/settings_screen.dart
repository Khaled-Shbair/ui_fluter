import 'package:flutter/material.dart';
import 'package:ui_flutter/model/address.dart';
import '../model/city.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _switchListTile = false;
  String _gender = 'M';
  String? _SelectedCityID;
  final List<Address> _address = <Address>[
    Address(title: 'one'),
    Address(title: 'two'),
    Address(title: 'three'),
  ];
  final List<City> _city = <City>[
    City(title: 'one', id: 1),
    City(title: 'two', id: 2),
    City(title: 'three', id: 3),
  ];

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
          const SizedBox(height: 20),
          const Text(
            'Address',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          for (Address address in _address)
            CheckboxListTile(
              title: Text(address.title),
              value: address.selected,
              onChanged: (bool? value) {
                setState(() {
                  if (value != null) {
                    address.selected = value;
                  }
                });
              },
            ),
          const SizedBox(height: 20),
          const Text(
            'City',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          DropdownButton<String>(
            isExpanded: true,
            hint: const Text('Select City'),
            onChanged: (String? value) {
              setState(() {
                _SelectedCityID = value;
              });
            },
            value: _SelectedCityID,
            items: _city
                .map(
                  (City city) => DropdownMenuItem<String>(
                    child: Text(city.title),
                    value: city.id.toString(),
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}
