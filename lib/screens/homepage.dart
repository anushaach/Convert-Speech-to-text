import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:speech_convert_text/constant/colors.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var txt = "Hold the button and start the speaking";
  var islisting = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: white,
        ),
        centerTitle: true,
        backgroundColor: orange,
        elevation: 0,
        title: Text("Speech To Text"),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 17),
        margin: EdgeInsets.only(bottom: 150),
        child: Text(
          "  $txt",
          style: TextStyle(fontSize: 16, color: black),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: AvatarGlow(
        animate: islisting,
        duration: Duration(microseconds: 2000),
        glowColor: black,
        repeat: true,
        child: GestureDetector(
          onTapDown: (details) {
            setState(() {
              islisting = true;
            });
          },
          onTapUp: (details) {
            setState(() {
              islisting = false;
            });
          },
          child: CircleAvatar(
            backgroundColor: orange,
            radius: 35,
            child: Icon(
              islisting ? Icons.mic : Icons.mic_none,
              color: white,
            ),
          ),
        ),
      ),
    );
  }
}
