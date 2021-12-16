import 'dart:math';
import 'package:exam/logic_of_program.dart';
import 'package:flutter/material.dart';

class ListGenerator extends StatefulWidget {
  const ListGenerator({Key? key}) : super(key: key);
  @override
  _ListGeneratorState createState() => _ListGeneratorState();
}

class _ListGeneratorState extends State<ListGenerator> {
  Color _colorContainer = Colors.blueGrey;
  Random rnd = new Random();
  GameLogic logic = GameLogic();
  @override
  Widget build(BuildContext context) {
    var count = rnd.nextInt(5) + 5;
    var components = [count];
    logic.generateNewSpecial(count);
    return Center(
        child: Padding(
      padding: EdgeInsets.only(top: 10),
      child: ListView.builder(
          itemCount: count,
          itemBuilder: (context, index) {
            return Column(children: [
              
              Ink(
                child: InkWell(
                
                  child: Container(
                    // color: Colors.grey,
                    width: 200,
                    height: 100,
                    color: _colorContainer ,
                    child: Center(
                      child: Text("Element " + (index + 1).toString()),
                    )),
                  onTap: () {
                    setState(() {
                    _colorContainer=_colorContainer == Colors.grey ? 
                    Colors.blueGrey : 
                    Colors.grey;
                  });
                  },
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 30))
            ]);
          }),
       
    
    ));
  }
}
