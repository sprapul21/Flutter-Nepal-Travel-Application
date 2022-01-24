import 'package:flutter/services.dart';
import 'package:translator/translator.dart';
import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Weather(title: 'Translator'),
// //     );
// //   }
// // }

class Weather extends StatefulWidget {
  Weather({Key key, this.title}) : super(key: key);
  final String title;
  var translatedPhrase = "";
  @override
  _WeatherState createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  TextEditingController textController = new TextEditingController();

  var translatedPhrase = "";

  final translator = GoogleTranslator();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Translator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.blue,
                child: Column(
                  children: <Widget>[
                    TextField(
                      controller: textController,
                      style: TextStyle(fontSize: 34),
                    ),
                    MaterialButton(
                        child: Text("Translate"),
                        color: Colors.white,
                        onPressed: () {
                          setState(() {
                            translator
                                .translate(textController.text,
                                    from: "en", to: "ne")
                                .then((t) {
                              print(t);
                              setState(() {
                                translatedPhrase = t.toString();
                              });
                            });
                          });
                        }),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.blueGrey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      translatedPhrase,
                      style: TextStyle(fontSize: 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        MaterialButton(
                            child: Icon(Icons.clear),
                            onPressed: () {
                              setState(() {
                                translatedPhrase = "";
                                textController.text = "";
                              });
                            }),
                        MaterialButton(
                            child: Icon(Icons.content_copy),
                            onPressed: () {
                              Clipboard.setData(
                                  new ClipboardData(text: translatedPhrase));
                            })
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
