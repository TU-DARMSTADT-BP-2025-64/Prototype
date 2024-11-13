import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromRGBO(184, 16, 24, 0)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Theme.of(context).colorScheme.surface,
          leadingWidth: 200,

          title: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                    label: Text("Bauteilsuche"),
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
          ),
          leading: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Image.asset(
                "assets/image.png",
                fit: BoxFit.contain,
              )),
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          // title: Text(widget.title),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Ausgewählt:",
                    style: TextStyle(fontSize: 22),
                  ),
                  Text(
                    "Dornpresse",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Expanded(
              child: Center(
                child: Container(
                  height: 400,
                  width: 800,
                  decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Container(
                          height: 80,
                          child: const Row(children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.settings,
                                size: 50,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Größe der Lackschäden an Zahnrad 1",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                            )
                          ])),
                      Divider(
                        color: Colors.black,
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: InkWell(
                                child: Container(
                                  height: 120,
                                  width: 180,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[500],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Center(
                                        child: Text(
                                      "Keine Sichtbar",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                                    )),
                                  ),
                                ),
                                onTap: () {
                                  print("Keine Sichtbar");
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Container(
                                height: 120,
                                width: 180,
                                decoration: BoxDecoration(
                                  color: Colors.grey[500],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Center(
                                      child: Text(
                                    "Sichtbar bis 5% der Oberfläche",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                                  )),
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Center(
                                child: Container(
                                  height: 120,
                                  width: 180,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[500],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Center(
                                        child: Text("Sichtbar unter 1% der Oberfläche",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500))),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Center(
                                child: Container(
                                  height: 120,
                                  width: 180,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[500],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Center(
                                        child: Text(
                                      "Über 5% der Oberfläche",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                                    )),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ]),
                    ],
                  ),
                ),

                // Center is a layout widget. It takes a single child and positions it
                // in the middle of the parent.
              ),
            ),
          ],
        ));
  }
}
