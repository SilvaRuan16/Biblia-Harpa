import 'package:biblia_e_harpa/src/config.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class VersionSelected extends StatefulWidget {
  const VersionSelected({super.key});

  @override
  State<VersionSelected> createState() => _VersionSelectedState();
}

class _VersionSelectedState extends State<VersionSelected> {
  String? _selectedVersion;
  final Map<String, String> _versions = {
    'ACF': 'acf.json',
    'NVI': 'nvi.json',
    'AA': 'aa.json'
  };

  @override
  void initState() {
    super.initState();
    _loadSelectedVersion();
  }

  Future<void> _loadSelectedVersion() async {
    final prefs = await SharedPreferences.getInstance();
    String savedVersion = prefs.getString("selectedVersion") ?? "acf.json";

    setState(() {
      _selectedVersion = _versions.entries
          .firstWhere((entry) => entry.value == savedVersion, orElse: () => _versions.entries.first)
          .key;
    });
  }

  Future<void> _saveSelectedVersion(String versionKey) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString("selectedVersion", _versions[versionKey]!);
    setState(() {
      _selectedVersion = versionKey;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Escolha a versão da Bíblia:", style: TextStyle(fontSize: 18)),
          const SizedBox(height: 20),
          Container(
            width: sizeBtnOptions[0],
            height: sizeBtnOptions[1],
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: mainColor, width: 2)
            ),
            child: Center(
              child: DropdownButton<String>(
                value: _selectedVersion,
                icon: const Icon(Icons.arrow_drop_down, color: Colors.black),
                dropdownColor: Colors.white,
                borderRadius: BorderRadius.circular(10),
                style: const TextStyle(fontSize: 16, color: Colors.black),
                onChanged: (String? newValue) {
                  if (newValue != null) {
                    _saveSelectedVersion(newValue);
                  }
                },
                items: _versions.keys.map<DropdownMenuItem<String>>((String key) {
                  return DropdownMenuItem(
                    value: key,
                    child: Text(key), 
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
