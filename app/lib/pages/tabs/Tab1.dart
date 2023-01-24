import 'package:flutter/material.dart';

class TabOne extends StatefulWidget {
  TabOne({Key key}) : super(key: key);

  @override
  State<TabOne> createState() => _TabOneState();
}

class _TabOneState extends State<TabOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
    );
  }
}