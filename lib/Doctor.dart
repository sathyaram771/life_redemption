import 'package:flutter/material.dart';
import 'package:login_page/Home.dart';

class doctor extends StatefulWidget {
  final userdata data;
  doctor({required this.data});

  @override
  State<doctor> createState() => _doctorState();
}

class _doctorState extends State<doctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => home(data: widget.data)),
              );
            },
            icon: Icon(Icons.keyboard_backspace),
          ),
          backgroundColor: Colors.deepPurple,
          title: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.local_hospital, color: Colors.white),
                SizedBox(width: 8.0),
                Text(
                  "Best Councellers and Doctors",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(""),
            Text(""),
            Container(
                width: 1000.0, // or specify a fixed width
                height: 120.0,
                child: Image.asset(
                  'assets/images/doctor1.png',
                  fit: BoxFit.cover,
                )),
            Text(""),
            Container(
                width: 1000.0, // or specify a fixed width
                height: 120.0,
                child: Image.asset(
                  'assets/images/doctor2.png',
                  fit: BoxFit.cover,
                )),
            Text(""),
            Container(
                width: 1000.0, // or specify a fixed width
                height: 120.0,
                child: Image.asset(
                  'assets/images/doctor3.png',
                  fit: BoxFit.cover,
                )),
            Text(""),
            Container(
                width: 1000.0, // or specify a fixed width
                height: 120.0,
                child: Image.asset(
                  'assets/images/doctor4.png',
                  fit: BoxFit.cover,
                )),
            Text(""),
            Container(
                width: 1000.0, // or specify a fixed width
                height: 120.0,
                child: Image.asset(
                  'assets/images/doctor6.png',
                  fit: BoxFit.cover,
                )),
          ],
        ),
      ),
    );
  }
}
