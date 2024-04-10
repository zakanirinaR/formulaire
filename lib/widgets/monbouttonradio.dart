import 'package:flutter/material.dart';

enum MesMailAdr { rkzack1989, rkzack13 }

class MonBtnRadio extends StatelessWidget {
  MonBtnRadio({
    super.key,
    required this.titre,
    required this.valeur,
    required this.valeurGrp,
    required this.onChanged,
  });

  final String titre;
  final MesMailAdr valeur;
  final MesMailAdr? valeurGrp;
  Function(MesMailAdr?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RadioListTile<MesMailAdr>(
          value: valeur,
          groupValue: valeurGrp,
          contentPadding: EdgeInsets.all(0.0),
          title: Text(titre),
          tileColor: Colors.purple.shade50,
          onChanged: onChanged),
    );
  }
}
