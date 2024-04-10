import 'package:flutter/material.dart';

class SectionTitre extends StatelessWidget {
  String titre;
  SectionTitre(
    this.titre,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.0,
      height: 40.0,
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(4, 4),
            blurRadius: 10,
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Text(
        titre,
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
