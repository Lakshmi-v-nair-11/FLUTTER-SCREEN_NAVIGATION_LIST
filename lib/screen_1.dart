import 'package:chat_ui/screen_2.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView.separated(
        itemBuilder: (ctx, index) {
          return ListTile(
            title: Text('Person $index'),
            onTap: () {
              Navigator.of(context).push((MaterialPageRoute(builder: (ctx) {
                return ScreenTwo(name: 'Person  $index');
              })));
            },
          );
        },
        separatorBuilder: ((ctx, index) {
          return Divider();
        }),
        itemCount: 30,
      )),
    );
  }
}
