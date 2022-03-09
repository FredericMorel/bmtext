import 'package:flutter/material.dart';
import 'storybrain.dart';

StoryBrain sb = StoryBrain();

void main() {
  runApp(MaterialApp(
      title: 'Jeu d\'aventure',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Saint André Criminal's"),
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
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            flex: 4,
            child: Center(
                child: Text(
              sb.getQuestion(),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ))),
        Expanded(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.green)),
                    onPressed: () {
                      setState(() {
                        sb.suivant(1);
                      });
                      ;
                    },
                    child: Text(
                      sb.getChoice1(),
                      style: TextStyle(color: Colors.white),
                    )))),
        Expanded(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Visibility(
                  visible: sb.buttonVisibleOrNot(),
                  child: TextButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 175, 76, 76))),
                    onPressed: () {
                      setState(() {
                        sb.suivant(2);
                      });
                      ;
                    },
                    child: Text(
                      sb.getChoice2(),
                      style: const TextStyle(color: Colors.white),
                    )
                    ))
                
                    )),
      ],
    );
  }
}
