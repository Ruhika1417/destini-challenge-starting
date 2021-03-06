import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'story_brain.dart';





void main() => runApp(Destini());

class Destini extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}
 StoryBrain storyBrain_obj =StoryBrain();



class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('images/background.png'),
            fit: BoxFit.cover,
          ),

        ),


        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    storyBrain_obj.getStory(),
                  //10

                    //'Story text will go here.',

                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                  ),
                ),





              Expanded(
                flex: 2,
                child: FlatButton(
                  onPressed: () {
                    //Choice 1 made by user.
            setState(() {

                      storyBrain_obj.nextStory(1);
            });
                  },
                  color: Colors.red,
                  child: Text(
                    storyBrain_obj.getchoice1( ),
                                     //13

                   // 'Choice 1',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
                SizedBox(
                height: 20.0,
                ),


                Expanded(
                flex: 2,
                //TODO: Step 26 - Use a Flutter Visibility Widget to wrap this FlatButton.
                //TODO: Step 28 - Set the "visible" property of the Visibility Widget to equal the output from the buttonShouldBeVisible() method in the storyBrain.
                child: Visibility(
                  visible: storyBrain_obj.buttonShouldBeVisible(),
                  child: FlatButton(
                    onPressed: () {
                      //Choice 2 made by user.

                   setState(() {



                        storyBrain_obj.nextStory(2);


                   });

                    },
                    color: Colors.blue,
                    child: Text(
                      storyBrain_obj.getchoice2(),  //14
                      //'Choice 2',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                     ),
                    ),
                ),
                ),

            ],
          ),
        ),
      ),

    );
  }
}

