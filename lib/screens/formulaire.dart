import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:formulaire/models/cvmodifdet.dart';
import 'package:formulaire/screens/curriculum.dart';
import 'package:formulaire/widgets/monbouttonradio.dart';
import 'package:formulaire/widgets/monfield.dart';

class FormModifCV extends StatefulWidget {
  const FormModifCV({super.key});

  @override
  State<FormModifCV> createState() => _FormModifCVState();
}

class _FormModifCVState extends State<FormModifCV> {
  _FormModifCVState() {
    _selectedVal = _listNumTel[0];
  }

  final _descControlleur = TextEditingController();

  MesMailAdr? _mesMailAdr;

  final _listNumTel = ["0337330903", "0346636409", "0328069627"];
  String? _selectedVal;

  final _formkey = GlobalKey<FormState>();

  @override
  void dispose() {
    _descControlleur.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Formulaire",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                  width: 150.0,
                  height: 150.0,
                  alignment: Alignment.topLeft,
                  image: AssetImage("assets/form.png")),
            ),
            Text(
              "Modifier mon CV",
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
            ),
            Form(
                key: _formkey,
                child: Column(
                  children: [
                    MonField(
                      etiquette: "Description",
                      controlleur: _descControlleur,
                      icone: Icons.description,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text("Adresse email:"),
                    Row(
                      children: [
                        MonBtnRadio(
                            titre: MesMailAdr.rkzack1989.name,
                            valeur: MesMailAdr.rkzack1989,
                            valeurGrp: _mesMailAdr,
                            onChanged: (val) {
                              setState(() {
                                _mesMailAdr = val;
                              });
                            }),
                        SizedBox(
                          width: 5.0,
                        ),
                        MonBtnRadio(
                            titre: MesMailAdr.rkzack13.name,
                            valeur: MesMailAdr.rkzack13,
                            valeurGrp: _mesMailAdr,
                            onChanged: (val) {
                              setState(() {
                                _mesMailAdr = val;
                              });
                            }),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    DropdownButtonFormField(
                      value: _selectedVal,
                      items: _listNumTel
                          .map(
                              (e) => DropdownMenuItem(value: e, child: Text(e)))
                          .toList(),
                      onChanged: (val) {
                        setState(() {
                          _selectedVal = val;
                        });
                      },
                      icon: Icon(
                        Icons.arrow_drop_down_circle,
                        color: Colors.deepPurple,
                      ),
                      decoration:
                          InputDecoration(labelText: "Numéros de téléphone"),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    OutlinedButton(
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                            ModifCvDetails detailCV = ModifCvDetails();
                            detailCV.description = _descControlleur.text;
                            detailCV.adrMail = _mesMailAdr!;
                            detailCV.tel = _selectedVal!;

                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return MonCV(detailCV: detailCV);
                            }));
                          }
                        },
                        child: Text(
                          "Envoyer le formulaire",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple),
                        )),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
