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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController tecX = TextEditingController(text: "");
  TextEditingController tecY = TextEditingController(text: "");
  double x = 0, y = 0, sub = 0, mul = 0, div = 0, sum = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          "Calculator App",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("X "),
                SizedBox(
                  width: 200,
                  child: TextField(
                    controller: tecX,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Y "),
                SizedBox(
                  width: 200,
                  child: TextField(
                    controller: tecY,
                  ),
                )
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  addition();
                  subtraction();
                  multiplication();
                  division();
                },
                child: Text("Calculate")),
            SizedBox(
              height: 20,
            ),
            Text("Addition is $sum "),
            SizedBox(
              height: 20,
            ),
            Text("Subtraction is $sub "),
            SizedBox(
              height: 20,
            ),
            Text("Multiplication is $mul "),
            SizedBox(
              height: 20,
            ),
            Text("Division is $div "),
          ],
        ),
      ),
    );
  }

  void addition() {
    setState(() {
      x = double.parse(tecX.text);
      y = double.parse(tecY.text);
      sum = x + y;
    });
  }

  void subtraction() {
    x = double.parse(tecX.text);
    y = double.parse(tecY.text);
    sub = x - y;
  }

  void multiplication() {
    x = double.parse(tecX.text);
    y = double.parse(tecY.text);
    mul = x * y;
  }

  void division() {
    x = double.parse(tecX.text);
    y = double.parse(tecY.text);
    div = x / y;
  }
}
