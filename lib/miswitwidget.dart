import 'package:flutter/material.dart';



ListTile chatWito(String primer, String segundo, String avatar) {
  return ListTile(
    leading: CircleAvatar(backgroundImage: NetworkImage(avatar) ),
    title: Text("William"),
    subtitle: Text(primer),
    trailing: Text(segundo),
  );
}