import 'package:flutter/material.dart';

class Constants {
  var splashpageCardItems = [
    {"title": "Giriş Yap", "navigation": "LoginPage", "icon": "login"},
    {
      "title": "Duyurular",
      "navigation": "AnnouncementPage",
      "icon": "announcement_rounded"
    },
    {
      "title": "Akademik Takvim",
      "navigation": "CalendarPage",
      "icon": "calendar_month"
    },
    {
      "title": "Yerleşkelerimiz",
      "navigation": "CampusesPage",
      "icon": "location_on_rounded"
    },
    // {
    //   "title": "Rektörün Mesajı",
    //   "navigation": "RectorsMessage",
    //   "icon": "message"
    // },
    // {"title": "Ayarlar", "navigation": "Settings", "icon": "settings"},
  ];

  var homepageCardItems = [
    {"title": "Notlar", "navigation": "GradePage", "icon": "notes"},
    // {
    //   "title": "Projeler",
    //   "navigation": "ProjectsPage",
    //   "icon": "projects"
    // },
    {
      "title": "Ders Programı",
      "navigation": "SyllabusPage",
      "icon": "syllabus"
    },
    {
      "title": "Duyurular",
      "navigation": "AnnouncementPage",
      "icon": "announcement_rounded"
    },
    {
      "title": "Akademik Takvim",
      "navigation": "CalendarPage",
      "icon": "calendar_month"
    },
    // {
    //   "title": "Yerleşkelerimiz",
    //   "navigation": "CampusesPage",
    //   "icon": "location_on_rounded"
    // },
    // {
    //   "title": "Rektörün Mesajı",
    //   "navigation": "RectorsMessage",
    //   "icon": "message"
    // },
    {"title": "Ayarlar", "navigation": "Settings", "icon": "settings"},
    {"title": "Çıkış Yap", "navigation": "/", "icon": "logout"},
  ];
  
  var users = [
    {
      "name": "Mehmet Akif Küçükkaya",
      "class": "3",
      "section": "Yazılım Mühendisliği",
      "userName": "mehmetakifkucukkaya",
      "password": "123456"
    },
  ];

  //* Iconları belirleyen metot
  static IconData getIconData(String iconName) {
    switch (iconName) {
      case 'login':
        return Icons.login;
      case 'logout':
        return Icons.logout;
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
      case 'notes':
        return Icons.library_books_rounded;
      case 'projects':
        return Icons.computer_rounded;
      case 'syllabus':
        return Icons.list_alt;
      default:
        return Icons.error;
    }
  }

  //* Akademik Takvim
  var takvim = [
    {
      "events": [
        {
          "date": "17.04.2023",
          "event":
              "Uluslararası Öğrencilerin Başvuru Başlangıcı / International Student Admissions - Application Start Date"
        },
        {
          "date": "24.04.2023",
          "event":
              "Uluslararası Öğrencilerin Kesin Kayıt İlk Günü / International Student Admissions – Exact Registration Date"
        },
        {
          "date": "10.07.2023",
          "event":
              "Güz Yarıyılı Yatay Geçiş Başvurularının İlk Günü / Applications Start For Autumn Term Undergraduate Transfer Student Admissions"
        },
        {
          "date": "01.08.2023 - 15.08.2023",
          "event":
              "Ek Madde 1 Kapsamında Yatay Geçiş Başvuruları / Applications Start For Autumn Term Undergraduate Transfer Student Admissions"
        },
        {
          "date": "14.08.2023",
          "event":
              "Özel Öğrenci Kayıt İlk Günü / Special Student Application Start Date"
        },
        {
          "date": "29.08.2023",
          "event":
              "Ek Madde 1 Kapsamında Yatay Geçiş Kayıtları İlk Günü / Undergraduate Transfer Student Registration Date (Additional Article 1)"
        },
        {
          "date": "30.08.2023",
          "event": "Resmi Tatil Zafer Bayramı / Public Holiday Victory Day"
        },
        {
          "date": "31.08.2023",
          "event":
              "Güz Yarıyılı Yatay Geçiş Başvurularının Son Günü / Autumn Term Application Deadline For Transfer Students"
        },
        {
          "date": "01.09.2023",
          "event":
              "Güz Yarıyılı Yatay Geçiş Kayıtlarının İlk Günü / Registration Date For Autumn Term Transfer Students"
        },
        {
          "date": "15.09.2023",
          "event":
              "Ek Madde 1 Kapsamında Yatay Geçiş Kayıtları Son Günü / Registration Date For Autumn Term Transfer Students"
        },
        {
          "date": "18.09.2023",
          "event":
              "Çift Anadal, Yandal Başvuruları İlk Günü / Applications Start For Double And Minor Degrees"
        },
        {
          "date": "18.09.2023",
          "event":
              "Güz Hazırlık Yeterlik Sınavı (2023-2024 Yeni Kayıt Yaptıran Ve Daha Önceki Senelerde Sınavı Geçemeyen Öğrenciler) / Autumn Term Language Proficiency Exam (For New Admissions And Students Who Failed The Exam In Previous Years)"
        },
        {
          "date": "22.09.2023",
          "event":
              "Özel Öğrenci Kayıt Son Günü / Deadline For Special Student Registration"
        },
        {
          "date": "22.09.2023",
          "event":
              "Çift Anadal, Yandal Başvuruları Son Günü / Deadline Double Major And Minor Degree Applications"
        },
        {
          "date": "25.09.2023",
          "event":
              "Hazırlık Seviye Belirleme(Placement) Sınavı / Placement Exam"
        },
        {
          "date": "25.09.2023",
          "event":
              "Güz Yarıyılı Ders Seçme İşlemleri İlk Günü / Autumn Term Course Selection Starts"
        },
        {
          "date": "27.09.2023",
          "event":
              "Çift Anadal, Yandal Sonuçlarının Açıklanması / Announcement Of Double And Minor Degree Application Results"
        },
        {
          "date": "28.09.2023",
          "event":
              "Çift Anadal, Yandal Kayıtlarının İlk Günü / Registration Starts For Double And Minor Degrees"
        },
        {
          "date": "29.09.2023",
          "event":
              "Çift Anadal, Yandal Kayıtlarının Son Günü / Deadline For Double And Minor Degree Registration"
        },
        {
          "date": "29.09.2023",
          "event":
              "Güz Yarıyılı Yatay Geçiş Kayıtlarının Son Günü / Deadline For Autumn Term Transfer Registration."
        },
        {
          "date": "02.10.2023",
          "event": "Güz Yarıyılı Başlangıcı / Autumn Term Starts"
        },
        {
          "date": "06.10.2023",
          "event":
              "Güz Yarıyılı Ders Seçme İşlemleri Son Günü / Deadline For Autumn Term Course Selection"
        },
        {
          "date": "09.10.2023",
          "event":
              "Güz Yarıyılı Ders Ekleme-Çıkarma Dönemi İlk Günü (1.Sınıflar Hariç) / Autumn Term Add/Drop Period Starts (Except For First Years)."
        },
        {
          "date": "11-12.10.2023",
          "event":
              "İngilizce Ve Bilgi Teknolojileri Derslerinden Muafiyet Sınavı / Exemption Exam For English And Information Technology Courses"
        },
        {
          "date": "13.10.2023",
          "event":
              "Güz Yarıyılı Ders Ekleme-Çıkarma Dönemi Son Günü (1.Sınıflar Hariç) / Last Day Of Autumn Term Add/Drop Period (Except For First Years)."
        },
        {
          "date": "13.10.2023",
          "event":
              "Diğer Yükseköğretim Kurumlarında Alınan Dersler İçin Muafiyet Başvuruları Son Günü / Exemption Application Deadline For Courses Taken From Other Higher Education Institutions."
        },
        {
          "date": "17.10.2023",
          "event":
              "Güz Yarıyılı Ders Ekleme Çıkarma Dönemi Danışman Onayı Son Günü / Advisor Approval Deadline For Autumn Term Course Add/Drop"
        },
        {
          "date": "29.10.2023",
          "event":
              "Resmi Tatil Cumhuriyet Bayramı / Public Holiday Republic Day"
        },
        {
          "date": "11.11.2023",
          "event":
              "Kayıt Dondurma Talebinde Bulunulabilecek Son Gün (Mücbir Sebepler Hariç) / Deadline To Request Suspension Of Registration (Temporary Withdrawal From Studies)"
        },
        {
          "date": "17.11.2023",
          "event":
              "Uluslararası Öğrencilerin Başvuru Son Günü / Deadline For International Student Application"
        },
        {
          "date": "20.11.2023",
          "event":
              "Güz Yarıyılı Vize Sınavları İlk Günü / Midterm Exams Starts"
        },
        {
          "date": "20.11.2023",
          "event":
              "Vize Sınavları Mazeret Sınavı Başvuru Başlangıcı / Application Start Date To Request A Makeup Midterm Exam"
        },
        {
          "date": "26.11.2023",
          "event":
              "Güz Yarıyılı Vize Sınavları Son Günü / Last Day Of Midterms"
        },
        {
          "date": "01.12.2023",
          "event":
              "Öğretim Elemanları Tarafından Vize Sınavı Not Girişleri Son Günü / Deadline For Faculty To Submit Midterm Marks"
        },
        {
          "date": "06.12.2023",
          "event":
              "Vize Sınavları Mazeret Sınavı Başvuru Bitişi / Application Deadline To Request A Makeup Midterm Exam"
        },
        {
          "date": "06.12.2023",
          "event":
              "Vize Sınav Sonuçlarına İtiraz Süresi Son Günü (Yönetmeliğe Göre Sonuçlar İlanından İtibaren 5 İş Günü İçinde) / Deadline To Appeal To Midterm Marks (According To The Regulation, You Must Appeal Within 5 Working Days Of The Release Of Exam Scores)."
        },
        {
          "date": "15.12.2023",
          "event":
              "Uluslararası Öğrencilerin Kesin Kayıt Son Tarihi / Last Day For International Student Exact Registration"
        },
        {
          "date": "01.01.2024",
          "event": "Resmi Tatil Yılbaşı / Public Holiday New Year's Eve"
        },
        {
          "date": "05.01.2024",
          "event": "Güz Yarıyılı Sonu / End Of Autumn Term"
        },
        {
          "date": "08.01.2024",
          "event":
              "Güz Yarıyılı Final Sınavları İlk Günü / Autumn Term Finals Start"
        },
        {
          "date": "08.01.2024",
          "event":
              "Final Sınavları Mazeret Sınavı Başvuru İlk Günü / Application Start Date To Request A Makeup Final Exam"
        },
        {
          "date": "15.01.2024",
          "event":
              "Bahar Yarıyılı Yatay Geçiş Başvurularının İlk Günü / Applications Start For Spring Term Undergraduate Transfer Student Admissions"
        },
        {
          "date": "21.01.2024",
          "event":
              "Güz Yarıyılı Final Sınavları Son Günü / Last Day Of Autumn Term Final Exams"
        },
        {
          "date": "26.01.2024",
          "event":
              "Öğretim Elemanları Tarafından Final Sınavı Not Girişleri Son Günü / Deadline For Faculty To Submit Final Exam Marks"
        },
        {
          "date": "31.01.2024",
          "event":
              "Final Sınavları Mazeret Sınavı Başvuru Son Günü / Application Deadline To Request A Makeup Final Exam"
        },
        {
          "date": "02.02.2024",
          "event":
              "Bahar Yarıyılı Yatay Geçiş Başvurularının Son Günü / Spring Term Application Deadline For Transfer Students"
        },
        {
          "date": "02.02.2024",
          "event":
              "Final Sınav Sonuçlarına İtiraz Süresi Son Günü (Yönetmeliğe Göre Sonuçlar İlanından İtibaren 5 İş Günü İçinde) / Deadline To Appeal To Final Exam Marks (According To The Regulation, You Must Appeal Within 5 Working Days Of The Release Of Exam Scores)."
        },
        {
          "date": "05.02.2024",
          "event":
              "Bahar Yarıyılı Ders Kayıtları İlk Günü / Spring Term Registration Start"
        },
        {
          "date": "05.02.2024",
          "event":
              "Bahar Yarıyılı Yatay Geçiş Kayıtlarının İlk Günü / Registration Date For Spring Term Transfer Students"
        },
        {
          "date": "05.02.2024",
          "event":
              "Çift Anadal, Yandal Başvuruları İlk Günü / Applications Start For Double And Minor Degrees"
        },
        {
          "date": "07.02.2024",
          "event":
              "Kış Hazırlık İngilizce Muafiyet (Proficiency) Sınavı / English Proficiency Exam For Exemption From English Preparatory Class"
        },
        {
          "date": "07.02.2024",
          "event": "Güz Mezuniyet Sınavı / Autumn Term Graduation Exam."
        },
        {
          "date": "09.02.2024",
          "event":
              "Bahar Yarıyılı Yatay Geçiş Kayıtlarının Son Günü / Deadline For Transfer Student Registration"
        },
        {
          "date": "09.02.2024",
          "event":
              "Çift Anadal, Yandal Başvuruları Son Günü / Deadline Double Major And Minor Degree Applications"
        },
        {
          "date": "12.02.2024",
          "event": "Bahar Yarıyılı Başlangıcı / Spring Term Starts"
        },
        {
          "date": "14.02.2024",
          "event":
              "Çift Anadal, Yandal Sonuçlarının Açıklanması / Announcement Of Double And Minor Degree Application Results"
        },
        {
          "date": "15.02.2024",
          "event":
              "Çift Anadal, Yandal Kayıtlarının İlk Günü / Registration Starts For Double And Minor Degrees"
        },
        {
          "date": "16.02.2024",
          "event":
              "Bahar Yarıyılı Ders Seçme İşlemleri Son Günü / Last Day Of Spring Term Add/Drop Period"
        },
        {
          "date": "16.02.2024",
          "event":
              "Çift Anadal, Yandal Kayıtlarının Son Günü / Deadline For Double And Minor Degree Registration"
        },
        {
          "date": "19.02.2024",
          "event":
              "Bahar Yarıyılı Ders Ekleme-Çıkarma Dönemi Başlangıcı / Spring Term Add/Drop Period Starts"
        },
        {
          "date": "23.02.2024",
          "event":
              "Bahar Yarıyılı Ders Ekleme-Çıkarma Dönemi Bitişi / Last Day Of Spring Term Add/Drop Period"
        },
        {
          "date": "27.02.2024",
          "event":
              "Bahar Yarıyılı Ders Ekleme Çıkarma Dönemi Danışman Onayı Son Günü / Advisor Approval Deadline For Spring Term Course Add/Drop"
        },
        {
          "date": "01.04.2024",
          "event":
              "Bahar Yarıyılı Vize Sınavları İlk Günü / Midterm Exams Starts"
        },
        {
          "date": "01.04.2024",
          "event":
              "Vize Sınavları Mazeret Sınavı Başvuru Başlangıcı / Application Start Date To Request A Makeup Midterm Exam"
        },
        {
          "date": "07.04.2024",
          "event":
              "Bahar Yarıyılı Vize Sınavları Son Günü / Last Day Of Midterms"
        },
        {
          "date": "09.04.2024",
          "event": "Ramazan Bayramı Arifesi / Ramadan Feast Eve"
        },
        {
          "date": "10.04.2024",
          "event": "Resmi Tatil Ramazan Bayramı 1. Günü / Public Holiday"
        },
        {
          "date": "11.04.2024",
          "event": "Resmi Tatil Ramazan Bayramı 2. Günü / Public Holiday"
        },
        {
          "date": "12.04.2024",
          "event": "Resmi Tatil Ramazan Bayramı 3. Günü / Public Holiday"
        },
        {
          "date": "19.04.2024",
          "event":
              "Öğretim Elemanları Tarafından Vize Sınavı Not Girişleri Son Günü / Deadline For Faculty To Submit Midterm Exam Marks"
        },
        {
          "date": "23.04.2024",
          "event":
              "Resmi Tatil Ulusal Egemenlik Ve Çocuk Bayramı / Public Holiday National Sovereignty And Children's Day"
        },
        {
          "date": "25.04.2024",
          "event":
              "Vize Sınavları Mazeret Sınavı Başvuru Bitişi / Application Deadline To Request A Makeup Midterm Exam"
        },
        {
          "date": "29.04.2024",
          "event":
              "Vize Sınav Sonuçlarına İtiraz Süresi Son Günü (Yönetmeliğe Göre Sonuçlar İlanından İtibaren 5 İş Günü İçinde) / Deadline To Appeal To Midterm Marks (According To The Regulation, You Must Appeal Within 5 Working Days Of The Release Of Exam Scores)."
        },
        {
          "date": "01.05.2024",
          "event":
              "Resmi Tatil Emek Ve Dayanışma Günü / Public Holiday Labour Day"
        },
        {
          "date": "19.05.2024",
          "event":
              "Resmi Tatil 19 Mayıs Atatürk'ü Anma Gençlik Ve Spor Bayramı / Public Holiday 19 May Commemoration Of Atatürk, Youth And Sports Day"
        },
        {
          "date": "24.05.2024",
          "event": "Bahar Yarıyılı Sonu / End Of Spring Term"
        },
        {
          "date": "27.05.2024",
          "event":
              "Bahar Yarıyılı Final Sınavları İlk Günü / Spring Term Finals Start"
        },
        {
          "date": "27.05.2024",
          "event":
              "Final Sınavları Mazeret Sınavı Başvuru İlk Günü / Application Start Date To Request A Makeup Final Exam"
        },
        {
          "date": "03.06.2024",
          "event":
              "İngilizce Hazırlık Bahar Yeterlilik Sınavı / Spring Term English Proficiency Exam For Exemption From English Preparatory Class"
        },
        {
          "date": "09.06.2024",
          "event":
              "Bahar Yarıyılı Final Sınavları Son Günü / Last Day Of Spring Term Final Exams"
        },
        {
          "date": "14.06.2024",
          "event":
              "Öğretim Elemanları Tarafından Final Sınavı Not Girişleri Son Günü / Deadline For Faculty To Submit Final Exam Marks"
        },
        {
          "date": "15.06.2024",
          "event":
              "Kurban Bayramı Arifesi / Feast Of The Sacrifice (Eid Al-Adha) Eve"
        },
        {
          "date": "16.06.2024",
          "event": "Resmi Tatil Kurban Bayramı 1. Günü / Public Holiday"
        },
        {
          "date": "17.06.2024",
          "event": "Resmi Tatil Kurban Bayramı 2. Günü / Public Holiday"
        },
        {
          "date": "18.06.2024",
          "event": "Resmi Tatil Kurban Bayramı 3. Günü / Public Holiday"
        },
        {
          "date": "19.06.2024",
          "event": "Resmi Tatil Kurban Bayramı 4. Günü / Public Holiday"
        },
        {
          "date": "21.06.2023",
          "event":
              "Final Sınavları Mazeret Sınavı Başvuru Son Günü / Application Deadline To Request A Makeup Final Exam"
        },
        {
          "events": [
            {
              "date": "17.04.2023",
              "event":
                  "Uluslararası Öğrencilerin Başvuru Başlangıcı / International Student Admissions - Application Start Date"
            },
            {
              "date": "24.04.2023",
              "event":
                  "Uluslararası Öğrencilerin Kesin Kayıt İlk Günü / International Student Admissions – Exact Registration Date"
            },
            {
              "date": "10.07.2023",
              "event":
                  "Güz Yarıyılı Yatay Geçiş Başvurularının İlk Günü / Applications Start For Autumn Term Undergraduate Transfer Student Admissions"
            },
            {
              "date": "01.08.2023 - 15.08.2023",
              "event":
                  "Ek Madde 1 Kapsamında Yatay Geçiş Başvuruları / Applications Start For Autumn Term Undergraduate Transfer Student Admissions"
            },
            {
              "date": "14.08.2023",
              "event":
                  "Özel Öğrenci Kayıt İlk Günü / Special Student Application Start Date"
            },
            {
              "date": "29.08.2023",
              "event":
                  "Ek Madde 1 Kapsamında Yatay Geçiş Kayıtları İlk Günü / Undergraduate Transfer Student Registration Date (Additional Article 1)"
            },
            {
              "date": "30.08.2023",
              "event":
                  "Resmi Tatil Zafer Bayramı / Public Holiday Victory Day"
            },
            {
              "date": "31.08.2023",
              "event":
                  "Güz Yarıyılı Yatay Geçiş Başvurularının Son Günü / Autumn Term Application Deadline For Transfer Students"
            },
            {
              "date": "01.09.2023",
              "event":
                  "Güz Yarıyılı Yatay Geçiş Kayıtlarının İlk Günü / Registration Date For Autumn Term Transfer Students"
            },
            {
              "date": "15.09.2023",
              "event":
                  "Ek Madde 1 Kapsamında Yatay Geçiş Kayıtları Son Günü / Registration Date For Autumn Term Transfer Students"
            },
            {
              "date": "18.09.2023",
              "event":
                  "Çift Anadal, Yandal Başvuruları İlk Günü / Applications Start For Double And Minor Degrees"
            },
            {
              "date": "18.09.2023",
              "event":
                  "Güz Hazırlık Yeterlik Sınavı (2023-2024 Yeni Kayıt Yaptıran Ve Daha Önceki Senelerde Sınavı Geçemeyen Öğrenciler) / Autumn Term Language Proficiency Exam (For New Admissions And Students Who Failed The Exam In Previous Years)"
            },
            {
              "date": "22.09.2023",
              "event":
                  "Özel Öğrenci Kayıt Son Günü / Deadline For Special Student Registration"
            },
            {
              "date": "22.09.2023",
              "event":
                  "Çift Anadal, Yandal Başvuruları Son Günü / Deadline Double Major And Minor Degree Applications"
            },
            {
              "date": "25.09.2023",
              "event":
                  "Hazırlık Seviye Belirleme(Placement) Sınavı / Placement Exam"
            },
            {
              "date": "25.09.2023",
              "event":
                  "Güz Yarıyılı Ders Seçme İşlemleri İlk Günü / Autumn Term Course Selection Starts"
            },
            {
              "date": "27.09.2023",
              "event":
                  "Çift Anadal, Yandal Sonuçlarının Açıklanması / Announcement Of Double And Minor Degree Application Results"
            },
            {
              "date": "28.09.2023",
              "event":
                  "Çift Anadal, Yandal Kayıtlarının İlk Günü / Registration Starts For Double And Minor Degrees"
            },
            {
              "date": "29.09.2023",
              "event":
                  "Çift Anadal, Yandal Kayıtlarının Son Günü / Deadline For Double And Minor Degree Registration"
            },
            {
              "date": "29.09.2023",
              "event":
                  "Güz Yarıyılı Yatay Geçiş Kayıtlarının Son Günü / Deadline For Autumn Term Transfer Registration."
            },
            {
              "date": "02.10.2023",
              "event": "Güz Yarıyılı Başlangıcı / Autumn Term Starts"
            },
            {
              "date": "06.10.2023",
              "event":
                  "Güz Yarıyılı Ders Seçme İşlemleri Son Günü / Deadline For Autumn Term Course Selection"
            },
            {
              "date": "09.10.2023",
              "event":
                  "Güz Yarıyılı Ders Ekleme-Çıkarma Dönemi İlk Günü (1.Sınıflar Hariç) / Autumn Term Add/Drop Period Starts (Except For First Years)."
            },
            {
              "date": "11-12.10.2023",
              "event":
                  "İngilizce Ve Bilgi Teknolojileri Derslerinden Muafiyet Sınavı / Exemption Exam For English And Information Technology Courses"
            },
            {
              "date": "13.10.2023",
              "event":
                  "Güz Yarıyılı Ders Ekleme-Çıkarma Dönemi Son Günü (1.Sınıflar Hariç) / Last Day Of Autumn Term Add/Drop Period (Except For First Years)."
            },
            {
              "date": "13.10.2023",
              "event":
                  "Diğer Yükseköğretim Kurumlarında Alınan Dersler İçin Muafiyet Başvuruları Son Günü / Exemption Application Deadline For Courses Taken From Other Higher Education Institutions."
            },
            {
              "date": "17.10.2023",
              "event":
                  "Güz Yarıyılı Ders Ekleme Çıkarma Dönemi Danışman Onayı Son Günü / Advisor Approval Deadline For Autumn Term Course Add/Drop"
            },
            {
              "date": "29.10.2023",
              "event":
                  "Resmi Tatil Cumhuriyet Bayramı / Public Holiday Republic Day"
            },
            {
              "date": "11.11.2023",
              "event":
                  "Kayıt Dondurma Talebinde Bulunulabilecek Son Gün (Mücbir Sebepler Hariç) / Deadline To Request Suspension Of Registration (Temporary Withdrawal From Studies)"
            },
            {
              "date": "17.11.2023",
              "event":
                  "Uluslararası Öğrencilerin Başvuru Son Günü / Deadline For International Student Application"
            },
            {
              "date": "20.11.2023",
              "event":
                  "Güz Yarıyılı Vize Sınavları İlk Günü / Midterm Exams Starts"
            },
            {
              "date": "20.11.2023",
              "event":
                  "Vize Sınavları Mazeret Sınavı Başvuru Başlangıcı / Application Start Date To Request A Makeup Midterm Exam"
            },
            {
              "date": "26.11.2023",
              "event":
                  "Güz Yarıyılı Vize Sınavları Son Günü / Last Day Of Midterms"
            },
            {
              "date": "01.12.2023",
              "event":
                  "Öğretim Elemanları Tarafından Vize Sınavı Not Girişleri Son Günü / Deadline For Faculty To Submit Midterm Marks"
            },
            {
              "date": "06.12.2023",
              "event":
                  "Vize Sınavları Mazeret Sınavı Başvuru Bitişi / Application Deadline To Request A Makeup Midterm Exam"
            },
            {
              "date": "06.12.2023",
              "event":
                  "Vize Sınav Sonuçlarına İtiraz Süresi Son Günü (Yönetmeliğe Göre Sonuçlar İlanından İtibaren 5 İş Günü İçinde) / Deadline To Appeal To Midterm Marks (According To The Regulation, You Must Appeal Within 5 Working Days Of The Release Of Exam Scores)."
            },
            {
              "date": "15.12.2023",
              "event":
                  "Uluslararası Öğrencilerin Kesin Kayıt Son Tarihi / Last Day For International Student Exact Registration"
            },
            {
              "date": "01.01.2024",
              "event":
                  "Resmi Tatil Yılbaşı / Public Holiday New Year's Eve"
            },
            {
              "date": "05.01.2024",
              "event": "Güz Yarıyılı Sonu / End Of Autumn Term"
            },
            {
              "date": "08.01.2024",
              "event":
                  "Güz Yarıyılı Final Sınavları İlk Günü / Autumn Term Finals Start"
            },
            {
              "date": "08.01.2024",
              "event":
                  "Final Sınavları Mazeret Sınavı Başvuru İlk Günü / Application Start Date To Request A Makeup Final Exam"
            },
            {
              "date": "15.01.2024",
              "event":
                  "Bahar Yarıyılı Yatay Geçiş Başvurularının İlk Günü / Applications Start For Spring Term Undergraduate Transfer Student Admissions"
            },
            {
              "date": "21.01.2024",
              "event":
                  "Güz Yarıyılı Final Sınavları Son Günü / Last Day Of Autumn Term Final Exams"
            },
            {
              "date": "26.01.2024",
              "event":
                  "Öğretim Elemanları Tarafından Final Sınavı Not Girişleri Son Günü / Deadline For Faculty To Submit Final Exam Marks"
            },
            {
              "date": "31.01.2024",
              "event":
                  "Final Sınavları Mazeret Sınavı Başvuru Son Günü / Application Deadline To Request A Makeup Final Exam"
            },
            {
              "date": "02.02.2024",
              "event":
                  "Bahar Yarıyılı Yatay Geçiş Başvurularının Son Günü / Spring Term Application Deadline For Transfer Students"
            },
            {
              "date": "02.02.2024",
              "event":
                  "Final Sınav Sonuçlarına İtiraz Süresi Son Günü (Yönetmeliğe Göre Sonuçlar İlanından İtibaren 5 İş Günü İçinde) / Deadline To Appeal To Final Exam Marks (According To The Regulation, You Must Appeal Within 5 Working Days Of The Release Of Exam Scores)."
            },
            {
              "date": "05.02.2024",
              "event":
                  "Bahar Yarıyılı Ders Kayıtları İlk Günü / Spring Term Registration Start"
            },
            {
              "date": "05.02.2024",
              "event":
                  "Bahar Yarıyılı Yatay Geçiş Kayıtlarının İlk Günü / Registration Date For Spring Term Transfer Students"
            },
            {
              "date": "05.02.2024",
              "event":
                  "Çift Anadal, Yandal Başvuruları İlk Günü / Applications Start For Double And Minor Degrees"
            },
            {
              "date": "07.02.2024",
              "event":
                  "Kış Hazırlık İngilizce Muafiyet (Proficiency) Sınavı / English Proficiency Exam For Exemption From English Preparatory Class"
            },
            {
              "date": "07.02.2024",
              "event":
                  "Güz Mezuniyet Sınavı / Autumn Term Graduation Exam."
            },
            {
              "date": "09.02.2024",
              "event":
                  "Bahar Yarıyılı Yatay Geçiş Kayıtlarının Son Günü / Deadline For Transfer Student Registration"
            },
            {
              "date": "09.02.2024",
              "event":
                  "Çift Anadal, Yandal Başvuruları Son Günü / Deadline Double Major And Minor Degree Applications"
            },
            {
              "date": "12.02.2024",
              "event": "Bahar Yarıyılı Başlangıcı / Spring Term Starts"
            },
            {
              "date": "14.02.2024",
              "event":
                  "Çift Anadal, Yandal Sonuçlarının Açıklanması / Announcement Of Double And Minor Degree Application Results"
            },
            {
              "date": "15.02.2024",
              "event":
                  "Çift Anadal, Yandal Kayıtlarının İlk Günü / Registration Starts For Double And Minor Degrees"
            },
            {
              "date": "16.02.2024",
              "event":
                  "Bahar Yarıyılı Ders Seçme İşlemleri Son Günü / Last Day Of Spring Term Add/Drop Period"
            },
            {
              "date": "16.02.2024",
              "event":
                  "Çift Anadal, Yandal Kayıtlarının Son Günü / Deadline For Double And Minor Degree Registration"
            },
            {
              "date": "19.02.2024",
              "event":
                  "Bahar Yarıyılı Ders Ekleme-Çıkarma Dönemi Başlangıcı / Spring Term Add/Drop Period Starts"
            },
            {
              "date": "23.02.2024",
              "event":
                  "Bahar Yarıyılı Ders Ekleme-Çıkarma Dönemi Bitişi / Last Day Of Spring Term Add/Drop Period"
            },
            {
              "date": "27.02.2024",
              "event":
                  "Bahar Yarıyılı Ders Ekleme Çıkarma Dönemi Danışman Onayı Son Günü / Advisor Approval Deadline For Spring Term Course Add/Drop"
            },
            {
              "date": "01.04.2024",
              "event":
                  "Bahar Yarıyılı Vize Sınavları İlk Günü / Midterm Exams Starts"
            },
            {
              "date": "01.04.2024",
              "event":
                  "Vize Sınavları Mazeret Sınavı Başvuru Başlangıcı / Application Start Date To Request A Makeup Midterm Exam"
            },
            {
              "date": "07.04.2024",
              "event":
                  "Bahar Yarıyılı Vize Sınavları Son Günü / Last Day Of Midterms"
            },
            {
              "date": "09.04.2024",
              "event": "Ramazan Bayramı Arifesi / Ramadan Feast Eve"
            },
            {
              "date": "10.04.2024",
              "event":
                  "Resmi Tatil Ramazan Bayramı 1. Günü / Public Holiday"
            },
            {
              "date": "11.04.2024",
              "event":
                  "Resmi Tatil Ramazan Bayramı 2. Günü / Public Holiday"
            },
            {
              "date": "12.04.2024",
              "event":
                  "Resmi Tatil Ramazan Bayramı 3. Günü / Public Holiday"
            },
            {
              "date": "19.04.2024",
              "event":
                  "Öğretim Elemanları Tarafından Vize Sınavı Not Girişleri Son Günü / Deadline For Faculty To Submit Midterm Exam Marks"
            },
            {
              "date": "23.04.2024",
              "event":
                  "Resmi Tatil Ulusal Egemenlik Ve Çocuk Bayramı / Public Holiday National Sovereignty And Children's Day"
            },
            {
              "date": "25.04.2024",
              "event":
                  "Vize Sınavları Mazeret Sınavı Başvuru Bitişi / Application Deadline To Request A Makeup Midterm Exam"
            },
            {
              "date": "29.04.2024",
              "event":
                  "Vize Sınav Sonuçlarına İtiraz Süresi Son Günü (Yönetmeliğe Göre Sonuçlar İlanından İtibaren 5 İş Günü İçinde) / Deadline To Appeal To Midterm Marks (According To The Regulation, You Must Appeal Within 5 Working Days Of The Release Of Exam Scores)."
            },
            {
              "date": "01.05.2024",
              "event":
                  "Resmi Tatil Emek Ve Dayanışma Günü / Public Holiday Labour Day"
            },
            {
              "date": "19.05.2024",
              "event":
                  "Resmi Tatil 19 Mayıs Atatürk'ü Anma Gençlik Ve Spor Bayramı / Public Holiday 19 May Commemoration Of Atatürk, Youth And Sports Day"
            },
            {
              "date": "24.05.2024",
              "event": "Bahar Yarıyılı Sonu / End Of Spring Term"
            },
            {
              "date": "27.05.2024",
              "event":
                  "Bahar Yarıyılı Final Sınavları İlk Günü / Spring Term Finals Start"
            },
            {
              "date": "27.05.2024",
              "event":
                  "Final Sınavları Mazeret Sınavı Başvuru İlk Günü / Application Start Date To Request A Makeup Final Exam"
            },
            {
              "date": "03.06.2024",
              "event":
                  "İngilizce Hazırlık Bahar Yeterlilik Sınavı / Spring Term English Proficiency Exam For Exemption From English Preparatory Class"
            },
            {
              "date": "09.06.2024",
              "event":
                  "Bahar Yarıyılı Final Sınavları Son Günü / Last Day Of Spring Term Final Exams"
            },
            {
              "date": "14.06.2024",
              "event":
                  "Öğretim Elemanları Tarafından Final Sınavı Not Girişleri Son Günü / Deadline For Faculty To Submit Final Exam Marks"
            },
            {
              "date": "15.06.2024",
              "event":
                  "Kurban Bayramı Arifesi / Feast Of The Sacrifice (Eid Al-Adha) Eve"
            },
            {
              "date": "16.06.2024",
              "event":
                  "Resmi Tatil Kurban Bayramı 1. Günü / Public Holiday"
            },
            {
              "date": "17.06.2024",
              "event":
                  "Resmi Tatil Kurban Bayramı 2. Günü / Public Holiday"
            },
            {
              "date": "18.06.2024",
              "event":
                  "Resmi Tatil Kurban Bayramı 3. Günü / Public Holiday"
            },
            {
              "date": "19.06.2024",
              "event":
                  "Resmi Tatil Kurban Bayramı 4. Günü / Public Holiday"
            },
            {
              "date": "21.06.2023",
              "event":
                  "Final Sınavları Mazeret Sınavı Başvuru Son Günü / Application Deadline To Request A Makeup Final Exam"
            },
            {
              "date": "21.06.2023",
              "event":
                  "Final Sınav Sonuçlarına İtiraz Süresi Son Günü (Yönetmeliğe Göre Sonuçlar İlanından İtibaren 5 İş Günü İçinde) / Deadline To Appeal To Final Exam Marks (According To The Regulation, You Must Appeal Within 5 Working Days Of The Release Of Exam Scores)."
            },
            {
              "date": "28.06.2024",
              "event": "Kış Yarıyılı Başlangıcı / Start Of Winter Term"
            }
          ]
        },
      ],
    },
  ];
}
