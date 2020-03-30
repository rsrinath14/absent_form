
import 'package:flutter/material.dart';
enum LeaveReasons {
   Collegevent,
   Healthissue, 
   Function,
   Others,
   }
class MyHomePage extends StatefulWidget {
  

  @override
  _MyHomePageState createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
final myController = TextEditingController();

@override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

LeaveReasons _character = LeaveReasons.Others;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Hello'),
      ),
      body: 
      Container(
          child: Column(

        children: <Widget>[
          Text('Category :',
          ),
          Divider(
            
            height: 5,
          ),
          RadioListTile<LeaveReasons>(
            title: const Text('College Event'),
            value: LeaveReasons.Collegevent,
            groupValue: _character,
            onChanged: (LeaveReasons value) { setState(() { _character = value; }); },
          ),
          Divider(
            color: Colors.teal,
            height: 5,
          ),
          RadioListTile<LeaveReasons>(
            title: const Text('Health Issues'),
            value: LeaveReasons.Healthissue,
            groupValue: _character,
            onChanged: (LeaveReasons value) { setState(() { _character = value; }); },
          ),
          Divider(
            color: Colors.teal,
            height: 5,
          ),
          RadioListTile<LeaveReasons>(
            title: const Text('Function'),
            value: LeaveReasons. Function,
            groupValue: _character,
            onChanged: (LeaveReasons value) { setState(() { _character = value; }); },
          ),
          Divider(
            color: Colors.teal,
            height: 5,
          ),
          RadioListTile<LeaveReasons>(
            title: const Text('Others'),
            value: LeaveReasons.Others,
            groupValue: _character,
            onChanged: (LeaveReasons value) { setState(() { _character = value; }); },
          ),
          Divider(
            color: Colors.teal,
            height: 5,
          ),

         
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Text('Please Describe your reason:'),
              TextField(
                controller: myController,
              ),
            ],
          ),
        ),
      ],
            
        ),       
      ),         
      );
  }








}
