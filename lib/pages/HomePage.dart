// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:okul_sistemi/constants/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var data = Constants().homepageCardItems;

    var ekranBilgisi = MediaQuery.of(context);

    final ekranYuksekligi = ekranBilgisi.size.height;
    final ekranGenisligi = ekranBilgisi.size.width;

//* Iconları belirleyen metot
    IconData getIconData(String iconName) {
      switch (iconName) {
        case 'login':
          return Icons.login;
        case 'calendar_month':
          return Icons.calendar_month_rounded;
        case 'announcement_rounded':
          return Icons.announcement_rounded;
        case 'location_on_rounded':
          return Icons.location_on_rounded;
        case 'message':
          return Icons.message;
        case 'settings':
          return Icons.settings;
        default:
          return Icons.error;
      }
    }

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
                                style: TextStyle(
                                    fontSize: ekranGenisligi / 22),
                              ),
                            ),
                            Icon(
                              size: 26,
                              getIconData(
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
        ));
  }
}
