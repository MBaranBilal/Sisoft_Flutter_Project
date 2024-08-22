import 'package:flutter/material.dart';

class HastaEklePage extends StatefulWidget {
  @override
  _HastaEklePageState createState() => _HastaEklePageState();
}

class _HastaEklePageState extends State<HastaEklePage> {
  final _formKey = GlobalKey<FormState>();

  // Controllers for form fields
  final TextEditingController _kimlikNoController = TextEditingController();
  final TextEditingController _yupassNoController = TextEditingController();
  final TextEditingController _adiController = TextEditingController();
  final TextEditingController _soyadiController = TextEditingController();
  final TextEditingController _dogumYeriController = TextEditingController();
  final TextEditingController _mernisDogumController = TextEditingController();
  final TextEditingController _beyanDogumController = TextEditingController();
  final TextEditingController _anneAdiController = TextEditingController();
  final TextEditingController _babaAdiController = TextEditingController();
  final TextEditingController _sgkController = TextEditingController();
  final TextEditingController _medeniHaliController = TextEditingController();
  final TextEditingController _cinsiyetController = TextEditingController();
  final TextEditingController _kayitDurumuController = TextEditingController();
  final TextEditingController _oncelikDurumuController = TextEditingController();
  final TextEditingController _uyrukController = TextEditingController();
  final TextEditingController _kanGrubuController = TextEditingController();
  final TextEditingController _evTelController = TextEditingController();
  final TextEditingController _isTelController = TextEditingController();
  final TextEditingController _cepTelController = TextEditingController();
  final TextEditingController _faxNoController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hasta Ekle'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Kimlik No
                TextFormField(
                  controller: _kimlikNoController,
                  decoration: InputDecoration(
                    labelText: 'Kimlik No',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10),
                // YUPASS No
                TextFormField(
                  controller: _yupassNoController,
                  decoration: InputDecoration(
                    labelText: 'YUPASS No',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                // Adı
                TextFormField(
                  controller: _adiController,
                  decoration: InputDecoration(
                    labelText: 'Adı',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                // Soyadı
                TextFormField(
                  controller: _soyadiController,
                  decoration: InputDecoration(
                    labelText: 'Soyadı',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                // Doğum Yeri
                TextFormField(
                  controller: _dogumYeriController,
                  decoration: InputDecoration(
                    labelText: 'Doğum Yeri',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                // Mernis Doğum
                TextFormField(
                  controller: _mernisDogumController,
                  decoration: InputDecoration(
                    labelText: 'Mernis Doğum',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                // Beyan Doğum
                TextFormField(
                  controller: _beyanDogumController,
                  decoration: InputDecoration(
                    labelText: 'Beyan Doğum',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                // Anne Adı
                TextFormField(
                  controller: _anneAdiController,
                  decoration: InputDecoration(
                    labelText: 'Anne Adı',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                // Baba Adı
                TextFormField(
                  controller: _babaAdiController,
                  decoration: InputDecoration(
                    labelText: 'Baba Adı',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                // SGK
                TextFormField(
                  controller: _sgkController,
                  decoration: InputDecoration(
                    labelText: 'SGK',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                // Medeni Hali
                TextFormField(
                  controller: _medeniHaliController,
                  decoration: InputDecoration(
                    labelText: 'Medeni Hali',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                // Cinsiyet
                TextFormField(
                  controller: _cinsiyetController,
                  decoration: InputDecoration(
                    labelText: 'Cinsiyet',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                // Kayıt Durumu
                TextFormField(
                  controller: _kayitDurumuController,
                  decoration: InputDecoration(
                    labelText: 'Kayıt Durumu',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                // Öncelik Durumu
                TextFormField(
                  controller: _oncelikDurumuController,
                  decoration: InputDecoration(
                    labelText: 'Öncelik Durumu',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                // Uyruğu
                TextFormField(
                  controller: _uyrukController,
                  decoration: InputDecoration(
                    labelText: 'Uyruğu',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                // Kan Grubu
                TextFormField(
                  controller: _kanGrubuController,
                  decoration: InputDecoration(
                    labelText: 'Kan Grubu',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                // Ev Tel
                TextFormField(
                  controller: _evTelController,
                  decoration: InputDecoration(
                    labelText: 'Ev Tel',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(height: 10),
                // İş Tel
                TextFormField(
                  controller: _isTelController,
                  decoration: InputDecoration(
                    labelText: 'İş Tel',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(height: 10),
                // Cep Tel
                TextFormField(
                  controller: _cepTelController,
                  decoration: InputDecoration(
                    labelText: 'Cep Tel',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(height: 10),
                // Fax No
                TextFormField(
                  controller: _faxNoController,
                  decoration: InputDecoration(
                    labelText: 'Fax No',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(height: 10),
                // E-Mail
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'E-Mail',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 20),
                // Save Button
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Save data
                      print("Data saved successfully");
                    }
                  },
                  child: Text('Kaydet'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
/*

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hasta Ekle'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              // Kişisel Bilgiler Bölümü
              Text('Kişisel Bilgiler',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              _buildRoundedTextField(_isimController, 'İsim',
                  validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Bu alan boş bırakılamaz';
                }
                return null;
              }),
              SizedBox(height: 10),
              _buildRoundedTextField(_soyisimController, 'Soyisim',
                  validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Bu alan boş bırakılamaz';
                }
                return null;
              }),
              SizedBox(height: 10),
              _buildRoundedTextField(_kimlikNoController, 'Kimlik No',
                  validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Bu alan boş bırakılamaz';
                }
                if (value.length != 11) {
                  return 'Kimlik No 11 haneli olmalıdır';
                }
                return null;
              }),
              SizedBox(height: 10),
              _buildRoundedTextField(_yupassNoController, 'Yupass No',
                  validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Bu alan boş bırakılamaz';
                }
                if (value.length < 6) {
                  return 'Yupass No en az 6 haneli olmalıdır';
                }
                return null;
              }),
              Divider(height: 30, thickness: 2),

              // Doğum Bilgileri Bölümü
              Text('Doğum Bilgileri',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              _buildRoundedTextField(
                _mernisDogumTarihiController,
                'Mernis Doğum Tarihi',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Bu alan boş bırakılamaz';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              _buildRoundedTextField(
                _beyanDogumTarihiController,
                'Beyan Doğum Tarihi',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Bu alan boş bırakılamaz';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              _buildRoundedTextField(_dogumYeriController, 'Doğum Yeri',
                  validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Bu alan boş bırakılamaz';
                }
                return null;
              }),
              SizedBox(height: 10),
              _buildRoundedDropdown(
                _selectedUyruk,
                uyrukOptions,
                'Uyruk',
                (newValue) {
                  setState(() {
                    _selectedUyruk = newValue;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Bu alan boş bırakılamaz';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              _buildRoundedDropdown(
                _selectedDogumSirasiNo,
                dogumSirasiNoOptions,
                'Doğum Sırası No',
                (newValue) {
                  setState(() {
                    _selectedDogumSirasiNo = newValue;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Bu alan boş bırakılamaz';
                  }
                  return null;
                },
              ),
              Divider(height: 30, thickness: 2),

              // Aile Bilgileri Bölümü
              Text('Aile Bilgileri',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              _buildRoundedTextField(_anneAdiController, 'Anne Adı',
                  validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Bu alan boş bırakılamaz';
                }
                return null;
              }),
              SizedBox(height: 10),
              _buildRoundedTextField(_babaAdiController, 'Baba Adı',
                  validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Bu alan boş bırakılamaz';
                }
                return null;
              }),
              SizedBox(height: 10),
              _buildRoundedTextField(_anneKimlikNoController, 'Anne Kimlik No',
                  validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Bu alan boş bırakılamaz';
                }
                return null;
              }),
              Divider(height: 30, thickness: 2),

              // İletişim Bilgileri Bölümü
              Text('İletişim Bilgileri',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              _buildRoundedTextField(_evTelController, 'Ev Telefonu',
                  validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Bu alan boş bırakılamaz';
                }
                return null;
              }),
              SizedBox(height: 10),
              _buildRoundedTextField(_isTelController, 'İş Telefonu',
                  validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Bu alan boş bırakılamaz';
                }
                return null;
              }),
              SizedBox(height: 10),
              _buildRoundedTextField(_cepTelController, 'Cep Telefonu',
                  validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Bu alan boş bırakılamaz';
                }
                return null;
              }),
              SizedBox(height: 10),
              _buildRoundedTextField(_faxNoController, 'Fax Numarası',
                  validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Bu alan boş bırakılamaz';
                }
                return null;
              }),
              SizedBox(height: 10),
              _buildRoundedTextField(_emailController, 'E-posta',
                  validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Bu alan boş bırakılamaz';
                }
                if (!RegExp(r"^[a-zA-Z0-9]+@[a-zA-Z]+\.[a-zA-Z]+")
                    .hasMatch(value)) {
                  return 'Geçerli bir e-posta adresi girin';
                }
                return null;
              }),
              Divider(height: 30, thickness: 2),

              // Diğer Bilgiler Bölümü
              Text('Diğer Bilgiler',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              _buildRoundedDropdown(
                _selectedSGK,
                sgkOptions,
                'SGK Durumu',
                (newValue) {
                  setState(() {
                    _selectedSGK = newValue;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Bu alan boş bırakılamaz';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              _buildRoundedDropdown(
                _selectedMedeniHal,
                medeniHalOptions,
                'Medeni Hal',
                (newValue) {
                  setState(() {
                    _selectedMedeniHal = newValue;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Bu alan boş bırakılamaz';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              _buildRoundedDropdown(
                _selectedCinsiyet,
                cinsiyetOptions,
                'Cinsiyet',
                (newValue) {
                  setState(() {
                    _selectedCinsiyet = newValue;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Bu alan boş bırakılamaz';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              _buildRoundedDropdown(
                _selectedKayitDurumu,
                kayitDurumuOptions,
                'Kayıt Durumu',
                (newValue) {
                  setState(() {
                    _selectedKayitDurumu = newValue;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Bu alan boş bırakılamaz';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              _buildRoundedDropdown(
                _selectedOncelikDurumu,
                oncelikDurumuOptions,
                'Öncelik Durumu',
                (newValue) {
                  setState(() {
                    _selectedOncelikDurumu = newValue;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Bu alan boş bırakılamaz';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              _buildRoundedDropdown(
                _selectedKanGrubu,
                kanGrubuOptions,
                'Kan Grubu',
                (newValue) {
                  setState(() {
                    _selectedKanGrubu = newValue;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Bu alan boş bırakılamaz';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submit,
                child: Text('Kaydet'),
              ),
            ],
          ),
        ),
      ),
    );
  }
*/