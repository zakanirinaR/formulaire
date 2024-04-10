import "package:flutter/material.dart";

class EduElement extends StatelessWidget {
  String mention, etab, diplome, parcours, date;
  EduElement(
      {required this.mention,
      required this.etab,
      required this.diplome,
      required this.date,
      required this.parcours});

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
                  text: mention, style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: ', '),
              TextSpan(
                  text: etab, style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: ', '),
              TextSpan(text: "Madagascar")
            ]),
          ),
          Text.rich(
            TextSpan(children: [
              TextSpan(
                  text: diplome, style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: ', '),
              TextSpan(
                text: parcours,
              ),
              TextSpan(text: ', '),
              TextSpan(text: date)
            ]),
          ),
        ],
      ),
    );
  }
}
