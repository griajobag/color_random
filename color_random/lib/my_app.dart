import 'package:color_random/dashboard_page.dart';
import 'package:flutter/material.dart';

/// This MyApp class, we separated since we will add some function in this class
/// and make the main class looks clear
class MyApp extends StatelessWidget {
  /// the construction doesn't pass any value
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,

        /// it can be set as true, but I don't like it
      ),
      home: const DashboardPage(),
    );
  }
}
