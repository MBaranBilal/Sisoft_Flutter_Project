import 'package:flutter/material.dart';
class IndividualPage extends StatefulWidget {
  @override
  _IndividualPageState createState() => _IndividualPageState();
}

class _IndividualPageState extends State<IndividualPage> {
  final TextEditingController _noteController = TextEditingController();
  List<String> _notes = [];

  void _addNote() {
    if (_noteController.text.isNotEmpty) {
      setState(() {
        _notes.add(_noteController.text);
        _noteController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Birey'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.person), text: 'BİREY'),
              Tab(icon: Icon(Icons.settings), text: 'İŞLEMLER'),
            ],
          ),
        ),
        endDrawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.blue[200],
                      child: Icon(Icons.person, size: 25, color: Colors.white),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'NAZLI ZEYNEP ESKİCİ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          SizedBox(height: 8),
                          Text(
                            '19739270288',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Hekim: Hakan ALTUĞLU',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Aile Hekimi: Demet YILDIRIM',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.calendar_today),
                title: Text('Birey Ajanda'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text('Birey Bilgileri'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.history),
                title: Text('Geçmiş Kayıtlar'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.file_copy),
                title: Text('Belgeler'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Ayarlar'),
                onTap: () {},
              ),
              // Diğer drawer öğeleri burada yer alabilir
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(16.0),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Center(
                            child: Container(
                              padding: EdgeInsets.all(16.0),
                              decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.circular(12.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    spreadRadius: 2,
                                    blurRadius: 6,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'NAZLI ZEYNEP ESKİCİ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('• NAZLI ZEYNEP ESKİCİ adlı bireyin size ilk gelişi:', style: TextStyle(fontSize: 16)),
                          SizedBox(height: 5),
                          Text('• NAZLI ZEYNEP ESKİCİ isimli en son 11.05.2015 tarihinde işlem yapılmış', style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      color: Colors.grey[200],
                      padding: EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Notlar', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: _notes.map((note) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text('• $note', style: TextStyle(fontSize: 16)),
                            )).toList(),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            controller: _noteController,
                            maxLines: 1,
                            decoration: InputDecoration(
                              hintText: 'Yeni not ekleyin',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: _addNote,
                            child: Text('Not Ekle'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Wrap(
                      spacing: 8.0,
                      runSpacing: 8.0,
                      children: [
                        ElevatedButton(onPressed: () {}, child: Text('Birey Bilgileri')),
                        ElevatedButton(onPressed: () {}, child: Text('Hastanın Geçmiş Özeti')),
                      ],
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(16.0),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: Icon(Icons.add_box),
                      title: Text('Okul Çağı Çocuk/Genç Ara İzlem'),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(Icons.woman),
                      title: Text('Kadın İzlem'),
                      trailing: Text('Henüz İzlem Yapılmamış', style: TextStyle(color: Colors.green)),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(Icons.medical_services),
                      title: Text('Muayene'),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(Icons.science),
                      title: Text('Tetkik'),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(Icons.healing),
                      title: Text('Müdahale/Enjeksiyon'),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(Icons.vaccines),
                      title: Text('Aşı (İzlem Dışında)'),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(Icons.description),
                      title: Text('Reçete'),
                      trailing: Text('Son Reçete 11.05.2015', style: TextStyle(color: Colors.green)),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(Icons.report),
                      title: Text('Rapor'),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(Icons.group),
                      title: Text('Ev Halkı Tes.Fişi'),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(Icons.family_restroom),
                      title: Text('Aile İçi Şiddet Formu'),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CalendarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajanda'),
      ),
      body: Center(child: Text('Ajanda Page')),
    );
  }
}

class ManagementPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yönetim'),
      ),
      body: Center(child: Text('Yönetim Page')),
    );
  }
}

class ResourceManagementPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kaynak Yönetimi'),
      ),
      body: Center(child: Text('Kaynak Yönetimi Page')),
    );
  }
}

class DecisionSupportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Karar Destek'),
      ),
      body: Center(child: Text('Karar Destek Page')),
    );
  }
}

class SMSNotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SMS Bildirim'),
      ),
      body: Center(child: Text('SMS Bildirim Page')),
    );
  }
}
class IndividualOperationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Birey İşlemleri'),
      ),
      body: Center(child: Text('Birey İşlemleri Page')),
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ayarlar'),
      ),
      body: Center(child: Text('Ayarlar Page')),
    );
  }
}

class InspectionProcessesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TETKİK İşlemleri'),
      ),
      body: Center(child: Text('TETKİK İşlemleri Page')),
    );
  }
}

class DataTransferPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Veri Aktarımı'),
      ),
      body: Center(child: Text('Veri Aktarımı Page')),
    );
  }
}

class IslemlerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('İşlemler Sayfası'),
      ),
      body: Center(child: Text('İşlemler Sayfası')),
    );
  }
}

class USSDecisionSupportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('USS Karar Destek'),
      ),
      body: Center(child: Text('USS Karar Destek Page')),
    );
  }
}

class EndExaminationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Muayene Bitir'),
      ),
      body: Center(child: Text('Muayene Bitir Page')),
    );
  }
}
