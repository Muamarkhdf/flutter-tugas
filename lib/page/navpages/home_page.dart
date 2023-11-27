// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[900],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // ignore: avoid_unnecessary_containers
          Container(
            // ignore: prefer_const_constructors
            padding: EdgeInsets.only(
              top: 70,
              left: 20,
              right: 20,
            ),
            child: Row(
              children: [
                // ignore: prefer_const_constructors
                Icon(
                  Icons.grid_view_rounded,
                  size: 30,
                  color: Colors.black,
                ),
                Expanded(child: Container()),
                Container(
                  margin: const EdgeInsets.only(
                    right: 10,
                  ),
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black.withOpacity(0.5)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: Text(
              "POPULER",
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
