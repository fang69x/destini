import 'package:flutter/material.dart';
import 'story_brain.dart';

void main() {
  runApp(const Destini());
}

class Destini extends StatelessWidget {
  const Destini({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}

StoryBrain StoryB = StoryBrain();

class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/backround.jpeg"), fit: BoxFit.cover)),
      padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
      constraints: BoxConstraints.expand(),
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
                child: Center(
              child: Text(
                StoryB.getStory(),
                style: TextStyle(
                  fontSize: 25.0,
                ),
              ),
            )),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                height: 60,
                width: 300,
                child: TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      backgroundColor: Color.fromARGB(255, 188, 1, 182),
                    ),
                    onPressed: () {
                      StoryB.nextStory(1);
                    },
                    child: Text(
                      StoryB.getChoice1(),
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                height: 60,
                width: 300,
                child: TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      backgroundColor: Color.fromARGB(255, 129, 131, 56),
                    ),
                    onPressed: () {
                      StoryB.nextStory(2);
                    },
                    child: Text(
                      StoryB.getChoice2(),
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
