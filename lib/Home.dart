import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import "defaults.dart";
import "map.dart";

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEdgeDragWidth: MediaQuery.of(context).size.width,
      appBar: AppBar(
        title: Text("Home",
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
              icon: Icon(Icons.favorite, color: Defaults.standard)),
          IconButton(
              onPressed: () {
                setState(() {
                  Navigator.pushNamed(context, "/settings");
                });
              },
              icon: Icon(
                Icons.settings,
                color: Defaults.before,
              )),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white60,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 35, 5, 0),
              child: Card(
                color: Colors.purple[900],
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: DrawerHeader(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/profile.jpg"),
                        radius: 40,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("EcoVille",
                          style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(
                        height: 5,
                      ),
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
                    color: Colors.purple[900],
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: ListTile(
                      leading: Icon(
                        Defaults.drawerItemIcon[0],
                        color: Defaults.before,
                      ),
                      title: Text(Defaults.drawerItemText[0],
                          style: GoogleFonts.roboto(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ),
                  Card(
                    color: Colors.purple[900],
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: ListTile(
                      onTap: () {
                        Navigator.pushNamed(context, "/profile");
                      },
                      leading: Icon(
                        Defaults.drawerItemIcon[1],
                        color: Defaults.before,
                      ),
                      title: Text(Defaults.drawerItemText[1],
                          style: GoogleFonts.roboto(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ),
                  Card(
                    color: Colors.purple[900],
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: ListTile(
                      onTap: () {
                        Navigator.pushNamed(context, "/messeges");
                      },
                      leading: Icon(
                        Defaults.drawerItemIcon[2],
                        color: Defaults.before,
                      ),
                      title: Text(Defaults.drawerItemText[2],
                          style: GoogleFonts.roboto(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ),
                  Card(
                    color: Colors.purple[900],
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: ListTile(
                      onTap: () {
                        Navigator.pushNamed(context, "/sell");
                      },
                      leading: Icon(
                        Defaults.drawerItemIcon[3],
                        color: Defaults.before,
                      ),
                      title: Text(Defaults.drawerItemText[3],
                          style: GoogleFonts.roboto(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ),
                  Card(
                    color: Colors.purple[900],
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: ListTile(
                      onTap: () {
                        Navigator.pushNamed(context, "/contacts");
                      },
                      leading: Icon(
                        Defaults.drawerItemIcon[4],
                        color: Defaults.before,
                      ),
                      title: Text(Defaults.drawerItemText[4],
                          style: GoogleFonts.roboto(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ),
                  Card(
                    color: Colors.purple[900],
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: ListTile(
                      onTap: () {
                        Navigator.pushNamed(context, "/settings");
                      },
                      leading: Icon(
                        Defaults.drawerItemIcon[5],
                        color: Defaults.before,
                      ),
                      title: Text(Defaults.drawerItemText[5],
                          style: GoogleFonts.roboto(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ),
                  Card(
                    color: Colors.purple[900],
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: ListTile(
                      leading: Icon(
                        Defaults.drawerItemIcon[6],
                        color: Defaults.before,
                      ),
                      title: Text(Defaults.drawerItemText[6],
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
      body: Map(),
    );
  }
}
