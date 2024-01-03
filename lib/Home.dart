import 'package:flutter/material.dart';
import 'package:login_page/Intresting_Stories.dart';
import 'package:login_page/main.dart';
import 'package:login_page/recover.dart';
import 'package:login_page/Doctor.dart';

class userdata {
  String name = "";
  String email = "";
  int phonenumber = 0;
  userdata({
    required this.name,
    required this.email,
    required this.phonenumber,
  });
}

class home extends StatefulWidget {
  userdata data;
  home({required this.data});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
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
                MaterialPageRoute(builder: (context) => MyApp()),
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
                  "LIFE REDEMPTION",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      endDrawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(widget.data.name),
              accountEmail: Text(widget.data.email),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  widget.data.name[0],
                  style: TextStyle(
                    fontSize: 35.0,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text("Interesting Stories"),
              leading: Icon(Icons.article),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => stories(data: widget.data)),
                );
              },
            ),
            ListTile(
              title: Text("Scientific Methods"),
              leading: Icon(Icons.science),
              onTap: () {
                // Handle the tap action
              },
            ),
            ListTile(
              title: Text("Notable Recoveries"),
              leading: Icon(Icons.favorite),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => recovery(data: widget.data)),
                );
              },
            ),
            ListTile(
              title: Text("Best Councellers"),
              leading: Icon(Icons.account_circle_rounded),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => doctor(data: widget.data)),
                );
              },
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(" "),
            Text(" "),
            Text(
                "Welcome to Life Redemption - Real Stories, Expert Insights, Scientific Understanding "),
            Text(" "),
            Text(" Why Life Redemption?"),
            Text(" "),
            Text(''''📖 Real-Time Stories:
              Experience the power of real stories from individuals who have faced the challenges of drug abuse, conquered their struggles, and emerged stronger. These narratives provide a firsthand look at the impact of drug misuse on lives and inspire hope for recovery. '''),
            Text(""),
            Text('''👩‍⚕️ Expert Insights:
Connect with a network of reputable doctors and healthcare professionals specializing in addiction and recovery. Access credible information, expert opinions, and guidance to better understand the medical aspects of drug abuse and its treatment.'''),
            Text(" "),
            Text('''🔬 Scientific Methods:
Dive into the world of science-backed information on drug addiction. Explore the latest research, treatment methods, and breakthroughs in the field. Our commitment to scientific accuracy ensures that you have access to the most reliable and up-to-date information.'''),
          ],
        ),
      ),
    );
  }
}
