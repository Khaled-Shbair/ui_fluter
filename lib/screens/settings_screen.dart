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
  late TextEditingController _textEditingController;
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
  final List<String> _experience = <String>[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _textEditingController.dispose();
    super.dispose();
  }

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
          ),
          const SizedBox(height: 20),
          const Text(
            'Experiences',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          TextField(
            controller: _textEditingController,
            maxLength: 20,
            decoration: InputDecoration(
              counterText: '',
              suffixIcon: IconButton(
                onPressed: () {
                  performSave();
                },
                icon: const Icon(Icons.save),
              ),
              hintText: 'Experiences',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  width: 1,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Wrap(
            alignment: WrapAlignment.center,
            // runAlignment:WrapAlignment.center,
            //runSpacing: 5,
            spacing: 5,
            children: _experience.map((experience) {
              return Chip(
                label: Text(experience),
                deleteIcon: const Icon(Icons.close),
                deleteIconColor: Colors.red,
                onDeleted: () {
                  setState(() {
                    _experience.removeWhere((element) => element == experience);
                  });
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: const BorderSide(
                    color: Colors.blue,
                    width: 2,
                  ),
                ),
                elevation: 2,
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  void performSave() {
    if (checkData()) {
      save();
    }
  }

  bool checkData() {
    if (_textEditingController.text.isNotEmpty) {
      return true;
    }
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Enter your Experiences !"),
        backgroundColor: Colors.red,
      ),
    );
    return false;
  }

  void save() {
    setState(() {
      _experience.add(_textEditingController.text);
    });
    clear();
  }

  void clear() {
    _textEditingController.text = '';
  }
}
