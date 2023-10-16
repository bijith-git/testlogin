import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(),
          TextFormField(),
          ElevatedButton(onPressed: () {}, child: Text("Submit")),
          Text('or Sign in with'),
          Theme(
            data: ThemeData(
                elevatedButtonTheme: ElevatedButtonThemeData(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        shape: CircleBorder()))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {}, child: Icon(Icons.g_mobiledata)),
                ElevatedButton(onPressed: () {}, child: Icon(Icons.apple)),
                ElevatedButton(
                    onPressed: () {}, child: Icon(Icons.face_5_rounded)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
