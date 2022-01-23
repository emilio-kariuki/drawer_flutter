import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "defaults.dart";

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ),
  );
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer",
            style: GoogleFonts.roboto(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
        elevation: 0,
        backgroundColor: Colors.blue[900],
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  Defaults.standard = Defaults.standard == Defaults.before
                      ? Defaults.standard = Defaults.after
                      : Defaults.standard = Defaults.before;
                });
              },
              icon: Icon(Icons.favorite, color: Defaults.standard))
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue[900],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 35, 5, 0),
              child: Card(
                color: Colors.green[300],
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                child: DrawerHeader(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 10,),
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/profile.jpg"),
                        radius: 40,
                      ),
                      SizedBox(height: 10,),
                      Text("Emilio",
                        style: GoogleFonts.roboto(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                        SizedBox(height: 5,),
                        Text("emilio113kariuki@gmail.com",
                          style: GoogleFonts.roboto(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        )),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Divider(
                    height: 5,
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  Card(
                  color: Colors.green[300],
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                    child: ListTile(
                      leading: Icon(Defaults.drawerItemIcon[0],color: Defaults.before,),
                      title: Text(Defaults.drawerItemText[0],
                              style: GoogleFonts.roboto(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            )),
                    ),
                  ),
                  Card(
                  color: Colors.green[300],
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                    child: ListTile(
                      leading: Icon(Defaults.drawerItemIcon[1],color: Defaults.before,),
                      title: Text(Defaults.drawerItemText[1],
                              style: GoogleFonts.roboto(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            )),
                    ),
                  ),
                  Card(
                  color: Colors.green[300],
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                    child: ListTile(
                      leading: Icon(Defaults.drawerItemIcon[2],color: Defaults.before,),
                      title: Text(Defaults.drawerItemText[2],
                              style: GoogleFonts.roboto(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            )),
                    ),
                  ),
                  Card(
                  color: Colors.green[300],
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                    child: ListTile(
                      leading: Icon(Defaults.drawerItemIcon[3],color: Defaults.before,),
                      title: Text(Defaults.drawerItemText[3],
                              style: GoogleFonts.roboto(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            )),
                    ),
                  ),
                  Card(
                  color: Colors.green[300],
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                    child: ListTile(
                      leading: Icon(Defaults.drawerItemIcon[4],color: Defaults.before,),
                      title: Text(Defaults.drawerItemText[4],
                              style: GoogleFonts.roboto(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            )),
                    ),
                  ),
                  Card(
                  color: Colors.green[300],
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                    child: ListTile(
                      leading: Icon(Defaults.drawerItemIcon[5],color: Defaults.before,),
                      title: Text(Defaults.drawerItemText[5],
                              style: GoogleFonts.roboto(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            )),
                    ),
                  ),
                  Divider(
                    height: 5,
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}
