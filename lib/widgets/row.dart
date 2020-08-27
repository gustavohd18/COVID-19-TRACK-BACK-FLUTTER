import 'package:flutter/material.dart';

Padding buildRow(Color color, IconData icon, String titulo, String data) {
  return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(children: <Widget>[
        Expanded(
          flex: 3,
          child: _buildTile(
            color: color,
            icon: icon,
            title: titulo,
            data: data.toString(),
          ),
        )
      ]));
}

Container _buildTile({Color color, IconData icon, String title, String data}) {
  return Container(
    padding: const EdgeInsets.all(8.0),
    height: 100.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      color: color,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        ListTile(
          leading: Icon(
            icon,
            color: Colors.white,
          ),
          title: Text(
            title,
            style: TextStyle(color: Colors.white)
                .copyWith(fontWeight: FontWeight.bold),
          ),
          trailing: Text(
            data,
            style: TextStyle(color: Colors.white)
                .copyWith(fontWeight: FontWeight.w300, fontSize: 30.0),
          ),
        ),
      ],
    ),
  );
}
