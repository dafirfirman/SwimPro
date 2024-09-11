import 'package:flutter/material.dart';

class FreestyleSwimmingLearning extends StatefulWidget {
  const FreestyleSwimmingLearning({Key? key}) : super(key: key);

  @override
  _FreestyleSwimmingLearningState createState() => _FreestyleSwimmingLearningState();
}

class _FreestyleSwimmingLearningState extends State<FreestyleSwimmingLearning> {
  bool _switchValue = false;
  String _selectedCategory = 'Pembelajaran Renang Gaya Bebas';
  List<String> _items = [
    'Teknik Pengambilan Nafas',
    'Teknik Gerakan Tangan',
    'Teknik Gerakan Kaki',
    'Koordinasi Gerakan',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 225, 255), // Warna latar belakang AppBar
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Image.asset(
              'assets/img/logo.png', // Ganti dengan path logo Anda
              width: 40,
              height: 40,
            ),
            const SizedBox(width: 10),
            const Text(
              'SwimPro',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          Switch(
            value: _switchValue,
            onChanged: (value) {
              setState(() {
                _switchValue = value;
              });
            },
            activeColor: Colors.red,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // DropdownButton untuk kategori (hanya sebagai placeholder)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5),
              ),
              child: DropdownButton<String>(
                value: _selectedCategory,
                icon: const Icon(Icons.arrow_drop_down),
                iconSize: 24,
                isExpanded: true,
                underline: SizedBox(),
                style: const TextStyle(color: Colors.black, fontSize: 16),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedCategory = newValue!;
                  });
                },
                items: <String>[
                  'Pembelajaran Renang Gaya Bebas',
                  // Tambahkan kategori lain jika diperlukan
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 20),
            // Daftar item
            Expanded(
              child: ListView(
                children: _items.map((item) {
                  return Container(
                    padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                    margin: const EdgeInsets.only(bottom: 8.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
