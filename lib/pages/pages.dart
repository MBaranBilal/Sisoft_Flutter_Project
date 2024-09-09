import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => VaccinationPage()),
                        );
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.copyright),
                      title: Text('Kanser'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CancerTrackingPage()),
                        );
                      },
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



class CancerTrackingPage extends StatefulWidget {
  @override
  _CancerTrackingPageState createState() => _CancerTrackingPageState();
}

class _CancerTrackingPageState extends State<CancerTrackingPage> {
  String _selectedScreeningType = 'Kolorektal';
  List<String> _familyHistory = [];
  bool _isAddingFamilyHistory = false;
  TextEditingController _familyHistoryController = TextEditingController();

  DateTime? _screeningDate;
  DateTime? _resultDate;

  final List<String> _screeningTypes = ['Kolorektal', 'Meme', 'Serviks'];
  final List<String> _biopsyResults = ['Normal', 'Kanser', 'Polip', 'Kolit', 'Yetersiz Materyal', 'Diğer Patolojiler'];
  final List<String> _memeResults = ['Kendi Kendine Meme Muayenesi', 'Klinik Meme Muayenesi', 'Mamografi'];
  final List<String> _hpvTypes = ['HPV Tip 16', 'HPV Tip 18', 'Diğer', '31'];
  final List<String> _cervicalCytologyResults = ['Normal', 'Enfeksiyon', 'ASC-US'];
  final List<String> _cervicalBiopsyResults = ['Normal', 'Kori-Nik', 'CIN 1', 'CIN 2'];

  String? _selectedMemeKendiKendineOption;
  String? _selectedMemeKlinikOption;
  String? _selectedMemeMamografiOption;
  String? _selectedHpvTaramaTestiOption;
  String? _selectedPapSmearTestiOption;
  String? _selectedCytologyResult;
  String? _selectedBiopsyResultServiks;
  String? _selectedHpvType;
  String? _selectedBiopsyResultKolorektal;
  String? _selectedGaitadaTesti;

  // Tarih seçici için fonksiyon
  Future<void> _selectDate(BuildContext context, bool isScreeningDate) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null && pickedDate != DateTime.now()) {
      setState(() {
        if (isScreeningDate) {
          _screeningDate = pickedDate;
        } else {
          _resultDate = pickedDate;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kanser Tarama'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Tarama Tipleri Radio Button
              Text('Tarama Tipleri', style: TextStyle(fontWeight: FontWeight.bold)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: _screeningTypes.map((type) {
                  return Expanded(
                    child: Column(
                      children: [
                        Radio<String>(
                          value: type,
                          groupValue: _selectedScreeningType,
                          onChanged: (value) {
                            setState(() {
                              _selectedScreeningType = value!;
                            });
                          },
                        ),
                        Text(type),
                      ],
                    ),
                  );
                }).toList(),
              ),
              Divider(),

              // Tarama Tarihi ve Sonuçlanma Tarihi
              Text('Tarama Tarihi ve Sonuçlanma Tarihi', style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8.0),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () => _selectDate(context, true),
                      child: InputDecorator(
                        decoration: InputDecoration(
                          labelText: 'Tarama Tarihi',
                        ),
                        child: Text(_screeningDate == null
                            ? 'Tarih Seçin'
                            : DateFormat('dd-MM-yyyy').format(_screeningDate!)),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: InkWell(
                      onTap: () => _selectDate(context, false),
                      child: InputDecorator(
                        decoration: InputDecoration(
                          labelText: 'Sonuçlanma Tarihi',
                        ),
                        child: Text(_resultDate == null
                            ? 'Tarih Seçin'
                            : DateFormat('dd-MM-yyyy').format(_resultDate!)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),

              // İşlem No ve İşlem Tarihi (Statik)
              Text('İşlem Bilgileri', style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8.0),
              Text('İşlem No: 123456', style: TextStyle(color: Colors.grey)),
              Text('İşlem Tarihi: 01-01-2023', style: TextStyle(color: Colors.grey)),
              SizedBox(height: 16.0),

              // Aile Öyküsü
              Text('Aile Öyküsü', style: TextStyle(fontWeight: FontWeight.bold)),
              if (_familyHistory.isNotEmpty)
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: _familyHistory.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(_familyHistory[index]),
                    );
                  },
                ),
              SizedBox(height: 8.0),
              if (_isAddingFamilyHistory)
                TextField(
                  controller: _familyHistoryController,
                  decoration: InputDecoration(labelText: 'Aile Öyküsü Girin'),
                ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (_isAddingFamilyHistory) {
                      if (_familyHistoryController.text.isNotEmpty) {
                        _familyHistory.add(_familyHistoryController.text);
                        _familyHistoryController.clear();
                      }
                    }
                    _isAddingFamilyHistory = !_isAddingFamilyHistory;
                  });
                },
                child: Text(_isAddingFamilyHistory ? 'Kaydet' : 'Aile Öyküsü Ekle'),
              ),
              Divider(),
              SizedBox(height: 16.0),

              // Tarama Tipine Göre Dinamik İçerik
              if (_selectedScreeningType == 'Kolorektal') ...[
                Text('Kolorektal Biyopsi Sonuçları', style: TextStyle(fontWeight: FontWeight.bold)),
                DropdownButton<String>(
                  value: _selectedBiopsyResultKolorektal,
                  items: _biopsyResults.map((result) {
                    return DropdownMenuItem<String>(
                      value: result,
                      child: Text(result),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedBiopsyResultKolorektal = value;
                    });
                  },
                  hint: Text('Sonuç Seçin'),
                ),
                Text('Gaitada Gizli Kan Testi', style: TextStyle(fontWeight: FontWeight.bold)),
                DropdownButton<String>(
                  value: _selectedGaitadaTesti,
                  items: ['Pozitif', 'Negatif'].map((result) {
                    return DropdownMenuItem<String>(
                      value: result,
                      child: Text(result),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedGaitadaTesti = value;
                    });
                  },
                  hint: Text('Test Seçin'),
                ),
              ] else if (_selectedScreeningType == 'Meme') ...[
                Text('Meme Sonuçları', style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Kendi Kendine Meme Muayenesi', style: TextStyle(fontWeight: FontWeight.bold)),
                DropdownButton<String>(
                  value: _selectedMemeKendiKendineOption,
                  items: _memeResults.map((result) {
                    return DropdownMenuItem<String>(
                      value: result,
                      child: Text(result),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedMemeKendiKendineOption = value;
                    });
                  },
                  hint: Text('Seçenek Seçin'),
                ),
                Text('Klinik Meme Muayenesi', style: TextStyle(fontWeight: FontWeight.bold)),
                DropdownButton<String>(
                  value: _selectedMemeKlinikOption,
                  items: _memeResults.map((result) {
                    return DropdownMenuItem<String>(
                      value: result,
                      child: Text(result),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedMemeKlinikOption = value;
                    });
                  },
                  hint: Text('Seçenek Seçin'),
                ),
                Text('Mamografi', style: TextStyle(fontWeight: FontWeight.bold)),
                DropdownButton<String>(
                  value: _selectedMemeMamografiOption,
                  items: _memeResults.map((result) {
                    return DropdownMenuItem<String>(
                      value: result,
                      child: Text(result),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedMemeMamografiOption = value;
                    });
                  },
                  hint: Text('Seçenek Seçin'),
                ),
              ] else if (_selectedScreeningType == 'Serviks') ...[
                Text('HPV Tarama Testi', style: TextStyle(fontWeight: FontWeight.bold)),
                DropdownButton<String>(
                  value: _selectedHpvTaramaTestiOption,
                  items: ['Seçenek 1', 'Seçenek 2'].map((option) {
                    return DropdownMenuItem<String>(
                      value: option,
                      child: Text(option),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedHpvTaramaTestiOption = value;
                    });
                  },
                  hint: Text('Test Seçin'),
                ),
                Text('Pap Smear Testi', style: TextStyle(fontWeight: FontWeight.bold)),
                DropdownButton<String>(
                  value: _selectedPapSmearTestiOption,
                  items: ['Seçenek 1', 'Seçenek 2'].map((option) {
                    return DropdownMenuItem<String>(
                      value: option,
                      child: Text(option),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedPapSmearTestiOption = value;
                    });
                  },
                  hint: Text('Test Seçin'),
                ),
                Text('Servikal Sitoloji Sonuçları', style: TextStyle(fontWeight: FontWeight.bold)),
                DropdownButton<String>(
                  value: _selectedCytologyResult,
                  items: _cervicalCytologyResults.map((result) {
                    return DropdownMenuItem<String>(
                      value: result,
                      child: Text(result),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedCytologyResult = value;
                    });
                  },
                  hint: Text('Sonuç Seçin'),
                ),
                Text('Servikal Biyopsi Sonuçları', style: TextStyle(fontWeight: FontWeight.bold)),
                DropdownButton<String>(
                  value: _selectedBiopsyResultServiks,
                  items: _cervicalBiopsyResults.map((result) {
                    return DropdownMenuItem<String>(
                      value: result,
                      child: Text(result),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedBiopsyResultServiks = value;
                    });
                  },
                  hint: Text('Sonuç Seçin'),
                ),
                Text('HPV Tipleri', style: TextStyle(fontWeight: FontWeight.bold)),
                DropdownButton<String>(
                  value: _selectedHpvType,
                  items: _hpvTypes.map((type) {
                    return DropdownMenuItem<String>(
                      value: type,
                      child: Text(type),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedHpvType = value;
                    });
                  },
                  hint: Text('HPV Tipi Seçin'),
                ),
              ],
              SizedBox(height: 16.0),

              // Kaydet ve Randevu Butonları
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Kaydetme işlemi
                    },
                    child: Text('Kaydet'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Kanser randevusu alma işlemi
                    },
                    child: Text('Kanser Randevusu'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VaccinationPage extends StatefulWidget {
  @override
  _VaccinationPageState createState() => _VaccinationPageState();
}

class _VaccinationPageState extends State<VaccinationPage> {
  final TextEditingController _storyController = TextEditingController();
  final TextEditingController _complaintController = TextEditingController();
  final TextEditingController _vaccinationController = TextEditingController();

  List<Map<String, String>> _stories = [];
  List<Map<String, String>> _complaints = [];
  List<Map<String, String>> _vaccinations = [];

  String _formatDateTime(DateTime dateTime) {
    return "${dateTime.day.toString().padLeft(2, '0')}.${dateTime.month.toString().padLeft(2, '0')}.${dateTime.year} – ${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}";
  }

  void _addStory() {
    if (_storyController.text.isNotEmpty) {
      setState(() {
        _stories.add({
          'content': _storyController.text,
          'timestamp': _formatDateTime(DateTime.now()),
        });
        _storyController.clear();
      });
    }
  }

  void _addComplaint() {
    if (_complaintController.text.isNotEmpty) {
      setState(() {
        _complaints.add({
          'content': _complaintController.text,
          'timestamp': _formatDateTime(DateTime.now()),
        });
        _complaintController.clear();
      });
    }
  }

  void _addVaccination(String vaccination) {
    if (vaccination.isNotEmpty) {
      setState(() {
        _vaccinations.add({
          'content': vaccination,
          'timestamp': _formatDateTime(DateTime.now()),
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aşı (İzlem Dışında)'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hikayeler Bölümü
            _buildSection('Hikayeler', _stories, _storyController, _addStory),
            SizedBox(height: 20),
            // Şikayetler Bölümü
            _buildSection('Şikayetler', _complaints, _complaintController, _addComplaint),
            SizedBox(height: 20),
            // Aşılar Bölümü
            Text(
              'Aşılar',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Card(
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: _vaccinations
                      .map(
                        (vaccination) => ListTile(
                      title: Text(vaccination['content']!),
                      trailing: Text(vaccination['timestamp']!),
                    ),
                  )
                      .toList(),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity, // Container genişliğini ekranın tamamına yayar
              child: DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
                isExpanded: true, // Dropdown genişliğini ekranın tamamına yayar
                items: [
                  DropdownMenuItem(child: Text('Bivalan OPA (Oral Polio Aşısı)'), value: 'Bivalan OPA (Oral Polio Aşısı)'),
                  DropdownMenuItem(child: Text('Trivalan OPA (Oral Polio Aşısı)'), value: 'Trivalan OPA (Oral Polio Aşısı)'),
                  DropdownMenuItem(child: Text('KKK (Kızamık, Kızamıkçık, Kabakulak Aşısı)'), value: 'KKK (Kızamık, Kızamıkçık, Kabakulak Aşısı)'),
                  DropdownMenuItem(child: Text('Hepatit B Aşısı'), value: 'Hepatit B Aşısı'),
                  DropdownMenuItem(child: Text('BCG (Verem Aşısı)'), value: 'BCG (Verem Aşısı)'),
                  DropdownMenuItem(child: Text('Suçiçeği Aşısı'), value: 'Suçiçeği Aşısı'),
                  DropdownMenuItem(child: Text('Pnömokok Aşısı'), value: 'Pnömokok Aşısı'),
                  DropdownMenuItem(child: Text('Rotavirüs Aşısı'), value: 'Rotavirüs Aşısı'),
                  DropdownMenuItem(child: Text('Difteri, Tetanoz, Boğmaca Aşısı'), value: 'Difteri, Tetanoz, Boğmaca Aşısı'),
                  // Diğer aşıları buraya ekleyebilirsiniz...
                ],
                onChanged: (value) {
                  if (value != null) {
                    _addVaccination(value);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, List<Map<String, String>> items, TextEditingController controller, VoidCallback onAdd) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Card(
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: items
                  .map(
                    (item) => ListTile(
                  title: Text(item['content']!),
                  trailing: Text(item['timestamp']!),
                ),
              )
                  .toList(),
            ),
          ),
        ),
        SizedBox(height: 10),
        TextField(
          controller: controller,
          maxLines: 1,
          decoration: InputDecoration(
            hintText: 'Yeni $title ekleyin',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: onAdd,
          child: Text('$title Ekle'),
        ),
      ],
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
