import '../models/announcement_model.dart';
import '../utils/database_helper.dart';

class AnnouncementsController {
  // Tüm duyuruları getirme işlemi
  static Future<List<Announcements>> getAllAnnouncements() async {
    try {
      final List<Announcements> announcements =
          await DatabaseHelper.getAllAnnouncements();
      return announcements;
    } catch (e) {
      print('Duyurular alınırken hata oluştu: $e');
      return [];
    }
  }
}
