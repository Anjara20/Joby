import 'package:flutter/material.dart';
import 'package:flutter_project/pageAuth/inscription.dart';
import 'package:flutter_project/pageCrud/profil-2.dart';
import 'package:flutter_project/pageCrud/sideBar.dart';
import 'package:flutter_project/screens/cv_builder.dart';
import 'package:flutter_project/screens/liste_job.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

class Accueil extends StatefulWidget {
  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  onSearch(String search) {
    print(search);
  }

  List<dynamic> location = [];
  List<dynamic> statesMaster = [];
  List<dynamic> states = [];

  String? locationId;
  String? stateId;

  @override
  void initState() {
    super.initState();

    this.location.add({"id": 1, "name": "Antananarivo"});
    this.location.add({"id": 2, "name": "Tamatave"});

    this.statesMaster = [
      {
        "ID": 1,
        "Name": "Isotry",
        "ParentId": 1,
      },
      {
        "ID": 2,
        "Name": "Ampefiloha",
        "ParentId": 1,
      },
      {
        "ID": 3,
        "Name": "Andavamamba",
        "ParentId": 1,
      },
      {
        "ID": 4,
        "Name": "Mahamasina",
        "ParentId": 1,
      },
      {
        "ID": 1,
        "Name": "Ivato",
        "ParentId": 2,
      },
      {
        "ID": 2,
        "Name": "Talatamaty",
        "ParentId": 2,
      },
      {
        "ID": 3,
        "Name": "Anmbohidratrimo",
        "ParentId": 2,
      },
      {
        "ID": 4,
        "Name": "Imerinafovoany",
        "ParentId": 2,
      },
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 13.0, horizontal: 25.0),
        child: Column(children: [
          SizedBox(height: 10.0),
          Padding(
              padding: EdgeInsets.all(5.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/image-nogae.jpg',
                      height: 80.0,
                      width: 80.0,
                    ),
                    // Text(
                    //   'NOGAE',
                    //   style: TextStyle(
                    //       color: Colors.blueAccent,
                    //       fontSize: 20,
                    //       fontWeight: FontWeight.w600),
                    // ),

                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: ((context) => NavBar2()),
                              ));
                        },
                        icon: Icon(Icons.menu))
                  ])),
          Container(
            height: 60,
            child: TextField(
              onChanged: (value) => onSearch(value),
              decoration: InputDecoration(
                hintText: 'Rechercher..',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          Text(
            'Trouver un emploi avec Nogae Jobs',
            textAlign: TextAlign.center,
            style: GoogleFonts.bitter(
              textStyle: TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Posséder un bon CV et un emploi de rêve',
            textAlign: TextAlign.start,
            style: GoogleFonts.quicksand(
              textStyle: TextStyle(
                  color: Color.fromARGB(255, 50, 53, 255),
                  fontSize: 28,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Plus de 10000 opportunités d'emploi sont connectées avec succès chaque jour...",
            textAlign: TextAlign.start,
            style: GoogleFonts.lora(
              textStyle: TextStyle(
                color: Color.fromARGB(255, 255, 81, 0),
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0)),
              FlatButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => Cv()),
                      ));
                },
                color: Color.fromARGB(255, 50, 53, 255),
                child: Text(
                  "Creer un Resume Online",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              SizedBox(
                width: 7,
              ),
              FlatButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => ListJob()),
                      ));
                },
                color: Color.fromARGB(255, 50, 53, 255),
                child: Text(
                  "Trouver un Emploi",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Découvrez maintenant 10000+ meilleurs emplois sur Nogae Jobs",
            textAlign: TextAlign.start,
            style: GoogleFonts.lora(
              textStyle: TextStyle(
                color: Color.fromARGB(255, 30, 39, 39),
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: 312,
            child: TextField(
              decoration: InputDecoration(
                hintText:
                    'Intitulé du poste, poste pour lequel vous souhaitez postuler',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            // padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 0.0),
            child: Column(
              children: [
                FormHelper.dropDownWidgetWithLabel(
                  context,
                  "Location :",
                  "Tous les locations",
                  this.locationId,
                  this.location,
                  (onChangedVal) {
                    this.locationId = onChangedVal;
                    print("La location selectionee est: $onChangedVal");
                  },
                  (onValidateVal) {
                    if (onValidateVal == null) {
                      return "Veuillez entrer une location";
                    }
                    return null;
                  },

                  borderColor: Theme.of(context).primaryColor,
                  borderFocusColor: Theme.of(context).primaryColor,
                  borderRadius: 10,
                  // optionValue: "id",
                  // optionLabel: "label",
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                FormHelper.dropDownWidgetWithLabel(
                  context,
                  "State :",
                  "Tout domaine fonctionnel",
                  this.locationId,
                  this.location,
                  (onChangedVal) {
                    this.locationId = onChangedVal;
                    print(
                        "Le domaine fontionnel selectionne est: $onChangedVal");
                  },
                  (onValidateVal) {
                    if (onValidateVal == null) {
                      return "Veuillez entrer une location";
                    }
                    return null;
                  },
                  borderColor: Theme.of(context).primaryColor,
                  borderFocusColor: Theme.of(context).primaryColor,
                  borderRadius: 10,
                  // optionValue: "id",
                  // optionLabel: "label",
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => ListJob()),
                  ));
            },
            color: Color.fromARGB(255, 50, 53, 255),
            child: Text(
              "Trouver un emploi",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'Entreprises en vedettes',
            style: TextStyle(
                color: Colors.black, fontSize: 23, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    Container(
                      height: 150,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                        ),
                        color: Colors.blue,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          child: SingleChildScrollView(
                              child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 150,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                              ),
                              color: Color.fromARGB(255, 73, 144, 202),
                            ),
                          ),
                        ),
                        Container(
                          child: SingleChildScrollView(
                            child: Row(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 150,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                    ),
                                    color: Color.fromARGB(255, 127, 174, 212),
                                  ),
                                ),
                              ),
                              Container(
                                child: SingleChildScrollView(
                                    child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 150,
                                        width: 120,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20),
                                          ),
                                          color: Color.fromARGB(
                                              255, 167, 197, 223),
                                        ),
                                      ),
                                    )
                                  ],
                                )),
                              )
                            ]),
                          ),
                        ),
                      ]))),
                    ),
                  ]))),
          SizedBox(
            height: 50,
          ),
          Text(
            'Emplois en vedette',
            style: TextStyle(
                color: Colors.black, fontSize: 23, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                Container(
                  height: 400,
                  width: 800,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                ),
              ]),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                Container(
                  height: 400,
                  width: 800,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                ),
              ]),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                Container(
                  height: 400,
                  width: 800,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                ),
              ]),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                Container(
                  height: 400,
                  width: 800,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                ),
              ]),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                Container(
                  height: 400,
                  width: 800,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                ),
              ]),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                Container(
                  height: 400,
                  width: 800,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                ),
              ]),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => ListJob()),
                  ));
            },
            color: Color.fromARGB(255, 50, 53, 255),
            child: Text(
              "Trouver un emploi",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ]),
      ),
    );
  }
}
