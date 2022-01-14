import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/example1/Home_example1.dart';
import 'package:provider_demo/example2/Home_example2.dart';
import 'package:provider_demo/example2/providers/TimerInfo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
          create: (_)=>TimerInfo(),
        child: Home_example2(),
      ),
    );
  }
}


//for changeNotifierProvider
/*
home: ChangeNotifierProvider(
          create: (_)=>update_value(),
        child: Home_example1(),
      )
 */