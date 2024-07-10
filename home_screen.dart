import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen ({super.key});

  @override
  State<HomeScreen> createState() => _State();
}

class _State extends State<HomeScreen> {
  final TextEditingController _numOneTEcontroller = TextEditingController();
  final TextEditingController _numTwoTEcontroller = TextEditingController();
  double _result= 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body:
        Padding(
          padding: EdgeInsets.all(16),
          child: Column(
          children: [
            TextField(
              controller: _numOneTEcontroller,
              decoration:const InputDecoration(
                hintText: 'Number 1'
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _numTwoTEcontroller,
              decoration: const InputDecoration(
                  hintText: 'Number 2'
            ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                ElevatedButton.icon(onPressed: () {
                  _add();
                }, icon: Icon(Icons.add), label: Text('Add'),),
                ElevatedButton.icon(onPressed: () {
                  _sub();
                }, icon: Icon(Icons.remove), label: Text('Sub'),),
                ElevatedButton.icon(onPressed: () {
                  _mul();
                }, icon: Icon(Icons.star_border_purple500_rounded), label: Text('Multiply'),),
                ElevatedButton.icon(onPressed: () {
                  _div();
                }, icon: Icon(Icons.access_time_sharp), label: Text('Division'),),
              ],
            ),
            const SizedBox(height: 24),
            Text('Result: $_result'),

          ],
                ),
        ),
    );

  }
  void _add(){
    double numberOne= double.tryParse(_numOneTEcontroller.text) ?? 0;
    double numberTwo= double.tryParse(_numTwoTEcontroller.text) ?? 0;
    _result= numberOne+numberTwo;
    setState(() {
    });
  }
  void _sub(){
    double numberOne= double.tryParse(_numOneTEcontroller.text) ?? 0;
    double numberTwo= double.tryParse(_numTwoTEcontroller.text) ?? 0;
    _result= numberOne-numberTwo;
    setState(() {
    });
  }
  void _mul(){
    double numberOne= double.tryParse(_numOneTEcontroller.text) ?? 0;
    double numberTwo= double.tryParse(_numTwoTEcontroller.text) ?? 0;
    _result= numberOne*numberTwo;
    setState(() {
    });
  }
  void _div(){
    double numberOne= double.tryParse(_numOneTEcontroller.text) ?? 0;
    double numberTwo= double.tryParse(_numTwoTEcontroller.text) ?? 0;
    _result= numberOne/numberTwo;
    setState(() {
    });
  }
@override
  void dispose() {
    _numOneTEcontroller;
    _numTwoTEcontroller;
    super.dispose();
  }
}
