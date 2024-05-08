import 'package:flutter/material.dart';
import 'package:okul_sistemi/constants/constants.dart';
import 'package:okul_sistemi/widgets/drawer_tiles.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    var data = Constants().splashpageCardItems;

    var ekranBilgisi = MediaQuery.of(context);

    final ekranYuksekligi = ekranBilgisi.size.height;
    final ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Topkapı Üniversitesi')),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: ekranYuksekligi / 70),
              child: SizedBox(
                width: ekranGenisligi / 2,
                child: Image.asset("assets/Icon.png"),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 3 / 2),
              itemCount: Constants().splashpageCardItems.length,
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
                  SizedBox(
                    width: 800,
                    height: 120,
                    child: Image.asset(
                      "assets/Icon.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),

            // TODO: Diğer Sayfalar yapılınca navigation işlemleri yapılacak
            const DrawerTile(
              title: "Giriş Yap",
              route: "LoginPage",
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
              title: "Kampüslerimiz",
              route: "LoginPage",
            ),
            const DrawerTile(
              title: "Ayarlar",
              route: "LoginPage",
            ),
          ],
        ),
      ),
    );
  }
}
