import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool rock1 = false;
  bool rock2 = false;
  bool paper1 = false;
  bool paper2 = false;
  bool scissor1 = false;
  bool scissor2 = false;
  var _onpressed = null;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rock Paper Scissors"),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Container(
              height: 300,
              width: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "Player 1",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  RaisedButton(
                    shape: CircleBorder(),
                    onPressed: () {
                      rock1 = true;
                    },
                    color: Colors.red,
                    child: Image.asset("assets/rock.png"),
                  ),
                  RaisedButton(
                    shape: CircleBorder(),
                    onPressed: () {
                      paper1 = true;
                    },
                    color: Colors.red,
                    child: Image.asset("assets/paper.png"),
                  ),
                  RaisedButton(
                    shape: CircleBorder(),
                    onPressed: () {
                      scissor1 = true;
                    },
                    color: Colors.red,
                    child: Image.asset("assets/scissor.png"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: 300,
                width: 200,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: _getGif(),
              ),
            ),
            Container(
              height: 300,
              width: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "Player 2",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  RaisedButton(
                    shape: CircleBorder(),
                    onPressed: () {
                      setState(() {
                        rock2 = true;
                      });
                    },
                    color: Colors.red,
                    child: Image.asset("assets/rock_reverse.png"),
                  ),
                  RaisedButton(
                    shape: CircleBorder(),
                    onPressed: () {
                      setState(() {
                        paper2 = true;
                      });
                    },
                    color: Colors.red,
                    child: Image.asset("assets/paper_reverse.png"),
                  ),
                  RaisedButton(
                    shape: CircleBorder(),
                    onPressed: () {
                      setState(() {
                        scissor2 = true;
                      });
                    },
                    color: Colors.red,
                    child: Image.asset("assets/scissor_reverse.png"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _getGif() {
    if (rock1 && rock2) {
      rock1 = false;
      rock2 = false;

      return Image.network(
        "https://media.giphy.com/media/26vUPSwFkStuUhxx6/giphy.gif",
        fit: BoxFit.fill,
      );
    } else if (rock1 && paper2) {
      rock1 = false;
      paper2 = false;

      return Image.network(
        "https://media.giphy.com/media/YAypf1ka7tRTi/giphy.gif",
        fit: BoxFit.fill,
      );
    } else if (rock1 && scissor2) {
      rock1 = false;
      scissor2 = false;

      return Image.network(
        "https://media.giphy.com/media/JQAXhJMw2WbKWYjn8g/giphy.gif",
        fit: BoxFit.fill,
      );
    } else if (paper1 && rock2) {
      paper1 = false;
      rock2 = false;

      return Image.network(
        "https://media.giphy.com/media/3osxY6hXXl95Zt2jII/giphy.gif",
        fit: BoxFit.fill,
      );
    } else if (paper1 && paper2) {
      paper1 = false;
      paper2 = false;

      return Image.network(
        "https://media.giphy.com/media/2aSnlC0tuMk3MtECsR/giphy.gif",
        fit: BoxFit.fill,
      );
    } else if (paper1 && scissor2) {
      paper1 = false;
      scissor2 = false;

      return Image.network(
        "https://media.giphy.com/media/M9ILowJPeNtnroMkx2/giphy.gif",
        fit: BoxFit.fill,
      );
    } else if (scissor1 && rock2) {
      scissor1 = false;
      rock2 = false;

      return Image.network(
        "https://media.giphy.com/media/Id6Yi7k7W8Q6iVQCc9/giphy.gif",
        fit: BoxFit.fill,
      );
    } else if (scissor1 && paper2) {
      scissor1 = false;
      paper2 = false;

      return Image.network(
        "https://media.giphy.com/media/gdxCEXwnCkw7xhpaNt/giphy.gif",
        fit: BoxFit.fill,
      );
    } else if (scissor1 && scissor2) {
      scissor1 = false;
      scissor2 = false;

      return Image.network(
        "https://media.giphy.com/media/l49JLqDArrAoVy4wM/giphy.gif",
        fit: BoxFit.fill,
      );
    } else {
      return null;
    }
  }
}
