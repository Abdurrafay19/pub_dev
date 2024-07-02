import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readmore/readmore.dart';


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
        ),
        body:const SafeArea(child: Column(
          children: [
            Icon(FontAwesomeIcons.handcuffs,size: 48,),
            ReadMoreText("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
              trimLines: 2,
              trimMode: TrimMode.Line,
              trimCollapsedText: 'Show All',
              trimExpandedText: 'Show Less',
              moreStyle: TextStyle(color: Colors.blue),
              lessStyle: TextStyle(color: Colors.purple),
            ),
          ],
        ),) ,
      ),
    );
  }
}
