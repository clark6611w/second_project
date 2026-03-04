import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[500],
        appBar: AppBar(
          title: Text('نورتنا يا حلو'),
          backgroundColor: Colors.blue[900],
        ),
        body: ImagePage(),
      ),
    ),
  );
}

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ImagePage> {
  var leftImage = Random().nextInt(8) + 1;
  var rightImage = Random().nextInt(8) + 1;
  var isWin = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(isWin ? "لقد فزت" : "حاول مرى اخرى"),
        SizedBox(height: 100),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      leftImage = Random().nextInt(8) + 1;
                      rightImage = Random().nextInt(8) + 1;
                      if (leftImage == rightImage) {
                        isWin = true;
                      } else {
                        isWin = false;
                      }
                      print(isWin);
                    });
                  },
                  child: Image.asset('images/image-$leftImage.png'),
                ),
              ),
            ),
            SizedBox(width: 50),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      leftImage = Random().nextInt(8) + 1;
                      rightImage = Random().nextInt(8) + 1;
                      if (leftImage == rightImage) {
                        isWin = true;
                      } else {
                        isWin = false;
                      }
                      print(isWin);
                    });
                  },
                  child: Image.asset('images/image-$rightImage.png'),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
