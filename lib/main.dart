import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
   
       
        primarySwatch: Colors.red,
 
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
  
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    
   
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(5),
      child: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        
      ),
      ),
      body: WebView(
        onWebViewCreated: (ControllerCallback){
          
        },
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: 'https://imaginar.online/test',
      ),
      
     // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
