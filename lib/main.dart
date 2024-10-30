import 'package:flutter/material.dart';
import 'package:mk_sushi_restaurant_app/features/intro/presentation/pages/intro_page.dart';
import 'package:mk_sushi_restaurant_app/features/menu/presentation/pages/menu_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: IntroPage(),
      routes: {
        '/intro': (context) => const IntroPage(),
        '/menu': (context) => const MenuPage(),
      },
    );
  }
}
