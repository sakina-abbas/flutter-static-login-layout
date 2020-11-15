import 'dart:math';

import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  final Random random = Random();

  @override
  Widget build(BuildContext context) {
//    (index == items.length - 1) ? Container() : Divider();

    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 12),
        itemCount: 30,
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            thickness: 2,
            indent: MediaQuery.of(context).size.width * 0.2,
            endIndent: 12,
          );
        },
        itemBuilder: (BuildContext context, int index) {
//          return Container(
//            width: MediaQuery.of(context).size.width,
//            height: 40,
//            color: Color.fromRGBO(random.nextInt(256), random.nextInt(256),
//                random.nextInt(256), 1),
//            child: Center(
//              child: Text('$index'),
//            ),
//          );
          return ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 6,
            ),
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.grey[400],
              child: Center(
                child: Text(index.toString()),
              ),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('This is tile# $index'),
                Text('12:15'),
              ],
            ),
            subtitle: Text('This is a random subtitle, blah blah blah'),
//            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => print('you tapped $index'),
          );
        },
      ),
    );
  }
}
