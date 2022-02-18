import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _textEditingControllerEmail;
  late TextEditingController _textEditingControllerPassWord;
  late TapGestureRecognizer _tapGestureRecognizer;

  String? _errorEmailText;
  String? _errorPassWordText;

  @override
  void initState() {
    super.initState();
    _textEditingControllerEmail = TextEditingController();
    _textEditingControllerPassWord = TextEditingController();
    _tapGestureRecognizer = TapGestureRecognizer();
    _tapGestureRecognizer.onTap = _navigatorToRegister;
  }

  void _navigatorToRegister() {
    Navigator.pushNamed(context, '/RegisterScreen');
  }

  @override
  void dispose() {
    _tapGestureRecognizer.dispose();
    _textEditingControllerEmail.dispose();
    _textEditingControllerPassWord.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Login',
        ),
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.only(start: 20, end: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome Back...',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Enter Eamil & PassWord',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
            ),
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
            TextField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              cursorColor: Colors.yellow,
              decoration: InputDecoration(
                errorText: _errorPassWordText,
                fillColor: Colors.grey.shade300,
                filled: true,
                prefixIcon: const Icon(Icons.lock),
                labelText: 'PassWord',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
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
            const SizedBox(height: 10),
            Center(
              child: RichText(
                text: TextSpan(
                  text: 'Dont\'t have an accont ? ',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                      recognizer: _tapGestureRecognizer,
                      text: 'Create Now!',
                      style: const TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
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
    if (_textEditingControllerEmail.text.isNotEmpty &&
        _textEditingControllerPassWord.text.isNotEmpty) {
      controlErrorText();
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
      _errorPassWordText = _textEditingControllerPassWord.text.isEmpty
          ? _errorPassWordText
          : null;
    }
  }

  void _login() {
    ScaffoldMessenger.of(context)
        .showSnackBar(
          const SnackBar(
            content: Text('Loing is successflly'),
            behavior: SnackBarBehavior.floating,
            duration: Duration(seconds: 2),
          ),
        ).closed.then((value) =>
        Navigator.pushReplacementNamed(context, '/RegisterScreen'));
  }
}
