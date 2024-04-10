import "package:flutter/material.dart";

class ExpElement extends StatelessWidget {
  String etab;
  String mention;
  String poste;
  String date;
  ExpElement({
    required this.etab,
    required this.mention,
    required this.poste,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(
            TextSpan(children: [
              TextSpan(
                  text: etab, style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: ', '),
              TextSpan(
                text: mention,
              ),
              TextSpan(text: ', '),
              TextSpan(text: "Madagascar")
            ]),
          ),
          Text.rich(
            TextSpan(children: [
              TextSpan(
                  text: poste, style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: ', '),
              TextSpan(text: date)
            ]),
          ),
        ],
      ),
    );
  }
}
