import 'dart:async';

import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider_demo/example2/providers/TimerInfo.dart';

class Home_example2 extends StatefulWidget {
  Home_example2({Key? key}) : super(key: key);

  @override
  State<Home_example2> createState() => _Home_example2State();
}

class _Home_example2State extends State<Home_example2> {

  @override
  void initState() {

    Timer.periodic(Duration(seconds: 1), (timer) {
      Provider.of<TimerInfo>(context,listen: false).decreaseTime();
      // setState(() {
      //   value--;
      // });
    });

    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(CupertinoIcons.clock,size: 100,color: Colors.orange,),
            SizedBox(height: 20,),
            Text('${Provider.of<TimerInfo>(context).getTime()}',style: TextStyle(fontSize: 42),),
          ],
        ),
      ),
    );
  }
}
