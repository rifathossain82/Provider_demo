import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home_example1 extends StatelessWidget {
  const Home_example1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example 1'),
      ),
      body: Center(
        child: Text('${Provider.of<update_value>(context)._value}',style: TextStyle(fontSize: 42),),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: (){
              Provider.of<update_value>(context,listen: false).increment();
            },
            child: Icon(Icons.add),
          ),
          SizedBox(height: 12,),
          FloatingActionButton(
            onPressed: (){
              Provider.of<update_value>(context,listen: false).decrement();
            },
            child: Icon(CupertinoIcons.minus),
          ),
        ],
      ),
    );
  }
}

class update_value extends ChangeNotifier{
  int _value=0;

  void increment(){
    _value++;
    notifyListeners();
  }

  void decrement(){
    _value--;
    notifyListeners();
  }
}
