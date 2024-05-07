// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:okul_sistemi/constants/constants.dart';
import 'package:okul_sistemi/widgets/drawer_tiles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var data = Constants().homepageCardItems;
    var user = Constants().users;

    var ekranBilgisi = MediaQuery.of(context);

    // final ekranYuksekligi = ekranBilgisi.size.height;
    final ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(
          child: Text(
            user[0]["name"]!,
            style:
                const TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
              shrinkWrap: true,
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 3 / 2),
              itemCount: Constants().homepageCardItems.length,
              itemBuilder: (context, index) {
                final item = data[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      print("tıklandı");
                      Navigator.pushNamed(context, item["navigation"]!);
                    },
                    child: Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              item["title"]!,
                              style:
                                  TextStyle(fontSize: ekranGenisligi / 22),
                            ),
                          ),
                          Icon(
                            size: 26,
                            Constants.getIconData(
                              item["icon"]!,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  const Expanded(
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
                    user[0]["name"]!,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    user[0]["section"]!,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            const DrawerTile(
              title: "Profil",
              route: "ProfilePage",
            ),
            const DrawerTile(
              title: "Duyurular",
              route: "AnnouncementPage",
            ),
            const DrawerTile(
              title: "Akademik Takvim",
              route: "CalendarPage",
            ),
            const DrawerTile(
              title: "Notlar",
              route: "NotesPage",
            ),
            const DrawerTile(
              title: "Ödevler/Projeler",
              route: "ProjectsPage",
            ),
            const DrawerTile(
              title: "Ders Programı",
              route: "SyllabusPage",
            ),
            const DrawerTile(
              title: "Ayarlar",
              route: "SettingsPage",
            ),
            const DrawerTile(
              title: "Çıkış Yap",
              route: "SplashPage",
            ),
          ],
        ),
      ),
    );
  }
}
