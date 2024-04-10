import "package:flutter/material.dart";

class MonField extends StatelessWidget {
  final String etiquette;
  final IconData icone;
  final TextEditingController controlleur;

  MonField({
    super.key,
    required this.etiquette,
    required this.controlleur,
    this.icone = Icons.verified_user_outlined,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Entrez une information';
        } else {
          null;
        }
      },
      controller: controlleur,
      decoration: InputDecoration(
        labelText: etiquette,
        prefixIcon: Icon(icone),
        border: OutlineInputBorder(),
      ),
    );
  }
}
