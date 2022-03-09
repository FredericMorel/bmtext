import 'package:flutter/material.dart';
import 'story.dart';

void main() {
  runApp(MaterialApp(
      title: 'Jeu d\'aventure',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Black Mirror à Saint André"),
        ),
        body: HomeApp(),
      )));
}

class HomeApp extends StatefulWidget {
  HomeApp({Key? key}) : super(key: key);

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  Story s1 = Story(
      "Vous venez de crevez un pneu à St André. Vous n'avez pas de téléphone vous décidez de faire du stop. Une ford fiesta rouge s'arrête et le conducteur vous demande si vous voulez qu'il vous dépanne.",
      "Vous lui remerciez et vous montez dans la voiture",
      "Vous lui demandez s'il n'est pas un meurtrier avant !");
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            flex: 4,
            child: Center(child: Text(s1.question!,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),))),
        Expanded(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.green)),
                    onPressed: () {
                      "choix1";
                    },
                    child: Text(
                      s1.choix1!,
                      style: TextStyle(color: Colors.white),
                    )))),
        Expanded(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 175, 76, 76))),
                    onPressed: () {
                      "choix1";
                    },
                    child: Text(
                      s1.choix2!,
                      style: TextStyle(color: Colors.white),
                    )))),
      ],
    );
  }
}
