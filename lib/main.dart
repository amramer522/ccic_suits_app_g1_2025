import 'package:flutter/material.dart';
import 'package:pro1/views/play/view.dart';

import 'core/logic/helper_methods.dart';
import 'views/calculator/view.dart';
import 'views/create_new_password/view.dart';
import 'views/hello_world/view.dart';
import 'views/login/view.dart';
import 'views/my_wish_list/view.dart';
import 'views/on_boarding/view.dart';
import 'views/profile/view.dart';
import 'views/sign_up/view.dart';
import 'views/splash/view.dart';
import 'views/verify_otp/view.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffF4F5F7),
        appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          hintStyle: const TextStyle(color: Color(0xffA1A8B0)),
          fillColor: const Color(0xFFF9FAFB),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
            borderSide: const BorderSide(
              color: Color(0xffE5E7EB),
            ),
          ),
        ),
        colorScheme: const ColorScheme(
            brightness: Brightness.light,
            error: Colors.red,
            primary: Color(0xffDD8560),
            onPrimary: Colors.white,
            secondary: Colors.yellow,
            onSecondary: Colors.yellow,
            onError: Colors.red,
            surface: Colors.white,
            onSurface: Color(0xff101623)),
      ),
      home:  const CalculatorView(),
    ),
  );
}

// Widgets
/*
MaterialApp
Center
Text
Scaffold
AppBar
Drawer
FloatingActionButton
Icon
IconButton
Column
Row
CircleAvatar
FilledButton
OutlinedButton
ElevatedButton
TextButton
Padding
TextFormField
SizedBox
Image.network
ListView
Align
Container
Checkbox
Text.rich
Divider
Expanded
PageView
SafeArea
CircularProgressIndicator
LinearProgressIndicator
CupertinoActivityIndicator
Switch
BottomNavigationBar
GestureDetector
InkWell
ClipOval



git branch [branch_name]
git switch [branch_name]
git switch -
git checkout [branch_name]
git branch -d [branch_name]
git branch -m [new_branch_name]
git switch -c [branch_name]

 todo hellow nader 


 */
