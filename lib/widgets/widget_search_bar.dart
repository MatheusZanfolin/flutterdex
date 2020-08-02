
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Card(
    child: Row(
      children: <Widget>[
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Pesquisar pokémon',
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 16, bottom: 11, top: 11, right: 16)
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 16),
          child: Icon(Icons.search)
        )
      ],
    ),
  );

}