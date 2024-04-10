import "package:flutter/material.dart";

class LogosLanguages extends StatelessWidget {
  String lelogo;
  LogosLanguages(this.lelogo);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(lelogo),
      height: 50.0,
      width: 50.0,
    );
  }
}
