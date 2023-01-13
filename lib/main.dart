import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Cloth'),
          backgroundColor: Colors.deepOrange,
        ),
        body: ClothPage(),
      ),
    ),
  );
}
class ClothPage extends StatefulWidget {
  const ClothPage({Key? key}) : super(key: key);



  @override
  State<ClothPage> createState() => _ClothPageState();
}


class _ClothPageState extends State<ClothPage> {
     int boyPic= 2;
     int girlPic= 2;

     void pictureFace(){
       setState(() {
         boyPic= Random().nextInt(3)+1;
         girlPic= Random().nextInt(4)+1;
       });
     }
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Center(
        child: Row(
          children: [
            Expanded(child:
            TextButton(
              onPressed: (){
                pictureFace();
              },
              child:Image.asset('images/b$boyPic.png'),
            ),
            ),
            Expanded(child:
            TextButton(
              onPressed: (){
                pictureFace();
              },
              child:Image.asset('images/m$girlPic.png'),
            ),
            ),

          ],
        ),
      ),
    );
  }
}


