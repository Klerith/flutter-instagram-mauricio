import 'package:flutter/material.dart';
import 'package:instagram2/theme/theme.dart';

import 'package:instagram2/pages/profile_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: lightTheme,
      initialRoute: ProfilePage.name,
      routes: {
        ProfilePage.name: ( _ ) => ProfilePage()
      },
      
    );
  }
}