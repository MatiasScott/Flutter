import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class loginR extends StatefulWidget {
  @override
  _loginR createState() => _loginR();
}

// ignore: camel_case_types
class _loginR extends State<loginR> {
  bool isLoading = false;
  bool darkMode = true;

  @override
  Widget build(BuildContext context) {
    const String appName = 'Auth Buttons Example';
    const buttonType = AuthButtonType.secondary;
    const authIconType = AuthIconType.outlined;
    return MaterialApp(
      title: appName,
      themeMode: (darkMode) ? ThemeMode.dark : ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appName),
          actions: [
            Switch(
              value: darkMode,
              onChanged: (value) {
                setState(() {
                  darkMode = value;
                });
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            color: darkMode ? const Color(0xff303030) : Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: <Widget>[
                  FacebookAuthButton(
                    onPressed: () {},
                    darkMode: darkMode,
                    isLoading: isLoading,
                    style: const AuthButtonStyle(
                      buttonType: buttonType,
                      iconType: authIconType,
                    ),
                  ),
                  const Divider(),                        
                  TwitterAuthButton(
                    onPressed: () {},
                    darkMode: darkMode,
                    isLoading: isLoading,
                    style: const AuthButtonStyle(
                      buttonType: buttonType,
                      iconType: authIconType,
                    ),
                  ),
                  const Divider(), 
                  GoogleAuthButton(
                    onPressed: () {                     
                    },
                    darkMode: darkMode,
                    isLoading: isLoading,
                    style: const AuthButtonStyle(
                      buttonType: buttonType,
                      iconType: authIconType,
                    ),
                  ),
                  const Divider(),
                  AppleAuthButton(
                    onPressed: () {},
                    darkMode: darkMode,
                    isLoading: isLoading,
                    style: const AuthButtonStyle(
                      buttonType: buttonType,
                      iconType: authIconType,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
