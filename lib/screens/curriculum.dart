import 'package:flutter/material.dart';
import 'package:formulaire/models/cvmodifdet.dart';
import 'package:formulaire/widgets/eduelement.dart';
import 'package:formulaire/widgets/expelement.dart';
import 'package:formulaire/widgets/meslogos.dart';
import 'package:formulaire/widgets/sectiontitre.dart';

class MonCV extends StatelessWidget {
  MonCV({
    super.key,
    required this.detailCV,
  });

  ModifCvDetails detailCV;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mon CV',
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: Colors.limeAccent,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView(
        children: [
          Container(
            decoration:
                BoxDecoration(border: Border(bottom: BorderSide(width: 2.5))),
            child: Column(
              children: [
                Container(
                  width: 150.0,
                  height: 150.0,
                  margin: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey, width: 6.0),
                    image: DecorationImage(
                        image: AssetImage("assets/profile1.jpg"),
                        fit: BoxFit.fill),
                  ),
                ),
                Text.rich(
                  TextSpan(children: [
                    TextSpan(
                        text: 'RAKOTONINDRAINY ',
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: 'Zakanirina ', style: TextStyle(fontSize: 25.0))
                  ]),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.mail),
                        Text.rich(TextSpan(children: [
                          TextSpan(text: detailCV.adrMail.name as String),
                          TextSpan(text: "@gmail.com")
                        ]))
                      ],
                    ),
                    Row(
                      children: [Icon(Icons.phone), Text(detailCV.tel)],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.home),
                    Text('II O 61ter Anjanahary, Tana 101')
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          SectionTitre("Description"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(detailCV
                    .description /*"Professionnel de l'éducation se formant aux métiers de l'IT pour une avancement de carrière"*/),
                Text(
                    "Dans un cadre académique, j'ai été formellement introduit aux languages et frameworks suivants:"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    LogosLanguages("assets/java.png"),
                    LogosLanguages("assets/html.png"),
                    LogosLanguages("assets/css.png"),
                    LogosLanguages("assets/js.png"),
                    LogosLanguages("assets/php.png"),
                    LogosLanguages("assets/laravel.png"),
                    LogosLanguages("assets/ocaml.png"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LogosLanguages("assets/flutter.png"),
                    LogosLanguages("assets/reactjs.png"),
                  ],
                ),
              ],
            ),
          ),
          SectionTitre("Education"),
          EduElement(
              mention: "Mention Informatique",
              etab: "CNAM",
              diplome: "Diplôme de Licence",
              date: "2024",
              parcours: "Sciences et technologies"),
          EduElement(
              mention: "Ecole Doctorale INGE",
              etab: "Université d'Antananarivo",
              diplome: "Diplôme de Docteur",
              date: "2021",
              parcours: "Sciences de l'ingénieur"),
          EduElement(
              mention: "Génie Industriel",
              etab: "ESPA",
              diplome: "Diplôme d'Ingénieur",
              date: "2014",
              parcours: "Ingénierie Mécanique"),
          SizedBox(
            height: 20.0,
          ),
          SectionTitre("Expériences"),
          ExpElement(
              etab: "Université d'Antananarivo, IESAV",
              mention: "Tronc commun",
              poste: "Enseignant Chercheur",
              date: "depuis févier 2019"),
          ExpElement(
              etab: "Université d'Antananarivo, IESAV - Groupe SOCOTA",
              mention: "Mention Génie Industriel",
              poste: "Enseignant Chercheur/Ingénieur d'études",
              date: "depuis décembre 2017"),
          SectionTitre("Langues"),
          ExpElement(
              etab: "Goethe Zentrum",
              mention: "Antananarivo",
              poste: "Goethe-Zertifikat B2",
              date: "2014"),
          ExpElement(
              etab: "ETP",
              mention: "Antananarivo",
              poste: "Advanced 1 Certificate ",
              date: "2011"),
          ExpElement(
              etab: "CNELA",
              mention: "Antananarivo",
              poste: "CNELA First Certificate ",
              date: "2009"),
          SizedBox(
            height: 20.0,
          ),
          SectionTitre("Intérêts"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                "Webtoons, webnovels, healthy food, fitness et gemmologie"),
          ),
        ],
      ),
    );
  }
}
