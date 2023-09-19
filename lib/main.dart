import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tyi/home/controller/provider/local_functions.dart';
import 'package:tyi/home/view/detail_page/detail_page.dart';
import 'package:tyi/home/view/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ListenableProvider(
          create: (context) => LocalFunctionsProvider(),
        )
      ],
      child: MaterialApp(
        builder: (context, widget) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: const DetailPage(),
          );
        },
        theme: ThemeData(),
      ),
    );
  }
}
