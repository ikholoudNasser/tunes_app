import 'package:flutter/material.dart';
import 'package:tennis/models/tool_model.dart';
import 'package:tennis/widget/tool.dart';

class TunePage extends StatelessWidget {
  const TunePage({super.key});
  final List<TuneModel> tunes = const [
    TuneModel(color: Color(0xfffbcb9a), sound: 'note1.wav'),
    TuneModel(color: Color(0xfffff59d), sound: 'note2.wav'),
    TuneModel(color: Color(0xffc8f6c9), sound: 'note3.wav'),
    TuneModel(color: Color(0xff81d4fa), sound: 'note4.wav'),
    TuneModel(color: Color(0xff6d9dc5), sound: 'note5.wav'),
    TuneModel(color: Color(0xffb39ddb), sound: 'note6.wav'),
    TuneModel(color: Color(0xff56cbc0), sound: 'note7.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xfff8bbd0),
        title: Text(
          'Flutter Tune',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),

      body: Column(children: tunes.map((e) => TuneItem(tune: e)).toList()),
    );
  }

  //List<TuneItem> getTuneItem() {
  //List<TuneItem> items = [];
  //for (var color in tuneColor) {
  //  items.add(TuneItem(color: color));
  // }
  // return items;
  // }
}
