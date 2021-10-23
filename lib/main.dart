import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zomato_ui/screens/auth_screen.dart';

void main() => runApp(const MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => const MaterialApp(
        home: AuthScreen(),
      ),
      designSize: Size(MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height),
    );
  }
}
