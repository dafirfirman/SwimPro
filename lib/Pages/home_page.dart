import 'package:flutter/material.dart';
import 'package:swimpro/Pages/BreaststrokeSwimmingLearning.dart'; 
import 'package:swimpro/Pages/FreestyleSwimmingLearning.dart'; 

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _switchValue = false;
  String _selectedCategory = '----';
  List<String> _categories = [
    '----',
    'Pembelajaran Renang Gaya Dada',
    'Pembelajaran Renang Gaya Bebas',
    'Keselamatan Didalam Air',
    'Catatan Kecil'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 225, 255), 
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Image.asset(
              'assets/img/logo.png', //  path logo 
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
                underline: const SizedBox(),
                style: const TextStyle(color: Colors.black, fontSize: 16),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedCategory = newValue!;
                    _navigateToCategory(newValue);
                  });
                },
                items: _categories.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToCategory(String category) {
    if (category == 'Pembelajaran Renang Gaya Dada') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const BreaststrokeSwimmingLearning(),
        ),
      );
    } else if (category == 'Pembelajaran Renang Gaya Bebas') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const FreestyleSwimmingLearning(),
        ),
      );
    } else if (category == 'Keselamatan Didalam Air') {
    } else if (category == 'Catatan Kecil') {
    }
  }
}
