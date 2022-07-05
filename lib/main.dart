// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, unused_import, unused_local_variable, avoid_print, sort_child_properties_last, unnecessary_brace_in_string_interps, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: Text("Call API"),
                      onPressed: () async {
                        var url = Uri.parse(
                            "https://quick-formula-354408.uc.r.appspot.com/");
                        var res = await http.get(url);
                        print(res.body);
                      },
                    )
                  ]),
              SizedBox(height: 20.0),
            ]));
  }
}
