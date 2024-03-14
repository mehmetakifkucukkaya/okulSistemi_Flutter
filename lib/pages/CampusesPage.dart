import 'package:flutter/material.dart';
import 'package:okul_sistemi/constants/constants.dart';

class CampusesPage extends StatelessWidget {
  const CampusesPage({super.key});

  @override
  Widget build(BuildContext context) {
    var campuses = Constants().yerleskeler;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Center(
          child: Text("Yerleşkelerimiz"),
        ),
      ),
      body: ListView.builder(
        itemCount: campuses.length,
        itemBuilder: (context, index) {
          final campus = campuses[index];
          return GestureDetector(
            onTap: () {
              _showCampusDetails(context, campus);
            },
            child: Card(
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.asset(
                      campus['img'],
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        campus['name'],
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

//* Modal'ı oluşturan metot
  void _showCampusDetails(
      BuildContext context, Map<String, dynamic> campus) {
    showModalBottomSheet(
      isScrollControlled: true, //* Ekranı tamamen kaplamasını sağlar
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Center(
                  child: Text(
                    campus['name'],
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                const Divider(),
                Image.asset(
                  campus['img'],
                  fit: BoxFit.cover,
                  height: 200,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Koordinatlar:',
                  style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                Text(
                  'Enlem: ${campus["coordinates"]["latitude"]}',
                  style: const TextStyle(fontSize: 16),
                ),
                Text(
                  'Boylam: ${campus["coordinates"]["longitude"]}',
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
