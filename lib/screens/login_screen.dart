import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _textEditingControllerEmail;
  String? _errorEmailText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login',
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsetsDirectional.only(start: 10, end: 10, bottom: 15),
        child: Column(
          children: [
            const SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.emailAddress,
              // keyboardType:const TextInputType.numberWithOptions(decimal: false, signed: false),
              cursorColor: Colors.yellow,
              cursorRadius: const Radius.circular(40),
              //  showCursor: false,
              // obscureText: true,
              //obscuringCharacter:'#',
              expands: true,
              minLines: null,
              maxLines: null,
              // minLines: 3,
              // maxLines: 3,
              style: const TextStyle(
                color: Colors.yellowAccent,
              ),
              //  textCapitalization: TextCapitalization.words,
              //maxLength: 10,
              buildCounter: (context,
                  {required int currentLength,
                  required int? maxLength,
                  required bool isFocused}) {
                // return null;
                return Text('[$currentLength - $maxLength]');
              },
              decoration: InputDecoration(
                errorText: _errorEmailText,
                contentPadding: const EdgeInsetsDirectional.only(
                  top: 20,
                ),
                constraints: const BoxConstraints(
                  maxHeight: 60,
                  minHeight: 40,
                ),
                //  counterText: '',
                // hintText: 'Email address',
                // hintStyle: TextStyle(color: Colors.black45),
                // hintMaxLines: 1,
                labelText: 'Email address',
                labelStyle: const TextStyle(color: Colors.black45),
                hintMaxLines: 1,
                // floatingLabelAlignment: FloatingLabelAlignment.center,
                helperText: 'exampale@visonplus.com',
                helperStyle: const TextStyle(color: Colors.black45),
                helperMaxLines: 1,
                prefixIcon: const Icon(Icons.email),
              //  prefixText: 'admin@',
                // prefix: Text('admin1@'),
                suffixIcon: const Icon(Icons.check_circle),
                fillColor: Colors.grey.shade200,
                filled: true,
                //enabledBorder: InputBorder.none,

                // enabledBorder: UnderlineInputBorder(
                //   borderSide: BorderSide(
                //     color: Colors.yellow,
                //     width: 2,
                //   ),
                // ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    width: 1,
                    color: Colors.transparent,
                  ),
                ),

                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    width: 1,
                    color: Colors.transparent,
                  ),
                ),

                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    width: 1,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _performLogin();
              },
              child: const Text('Login'),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _performLogin() {
    if (_checkData()) {
      _login();
    }
  }

  bool _checkData() {
    if (_textEditingControllerEmail.text.isNotEmpty) {
      return true;
    } else {
      controlErrorText();
    }
    // ScaffoldMessenger.of(context).showSnackBar(
    //   const SnackBar(
    //     backgroundColor: Colors.red,
    //     content: Text('Enter required data!'),
    //     behavior: SnackBarBehavior.floating,
    //   ),
    // );
    return false;
  }

  void controlErrorText() {
    initState() {
      _errorEmailText =
          _textEditingControllerEmail.text.isEmpty ? _errorEmailText : null;
    }
  }

  void _login() {}
}
