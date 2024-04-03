// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:okul_sistemi/widgets/drawer_tiles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Ana Sayfa'),
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Ana Sayfa',
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  Expanded(
                    child: SizedBox(
                      width: 130,
                      height: 120,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/userAvatar.png"),
                      ),
                    ),
                  ),
                  Text(
                    "Mehmet Akif Küçükkaya",
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Yazılım Mühendisliği",
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            DrawerTile(
              title: "Profil",
              route: "ProfilePage",
            ),
            DrawerTile(
              title: "Duyurular",
              route: "AnnouncementPage",
            ),
            DrawerTile(
              title: "Akademik Takvim",
              route: "CalendarPage",
            ),
            DrawerTile(
              title: "Notlar",
              route: "NotesPage",
            ),
            DrawerTile(
              title: "Ödevler/Projeler",
              route: "ProjectsPage",
            ),
            DrawerTile(
              title: "Ders Programı",
              route: "SyllabusPage",
            ),
            DrawerTile(
              title: "Ayarlar",
              route: "SettingsPage",
            ),
            DrawerTile(
              title: "Çıkış Yap",
              route: "SplashPage",
            ),
          ],
        ),
      ),
    );
  }
}
