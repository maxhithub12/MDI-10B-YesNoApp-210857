import 'package:flutter/material.dart';

import 'package:flutter_application_1/config/theme/app_theme.dart';
import 'package:flutter_application_1/persentation/screens/chat/chast_screen.dart';
import 'package:flutter_application_1/persentation/providers/chat_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yes - No App (210857)',
      debugShowCheckedModeBanner: false,
      // theme,
      theme: AppTheme(selectedColor: 5).theme(),
      home: const ChastScreen(),
    );
  }
}