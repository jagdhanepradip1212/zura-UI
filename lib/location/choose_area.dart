import 'package:flutter/material.dart';
import 'package:zura/home_page.dart';

class ChooseAreaPage extends StatefulWidget {
  const ChooseAreaPage({Key? key}) : super(key: key);

  @override
  _ChooseAreaState createState() => _ChooseAreaState();
}

class _ChooseAreaState extends State<ChooseAreaPage> {
  final TextEditingController _nameController = TextEditingController();

  void _showCitySelection() async {
    final List<String> cities = [
      'Katraj',
      'Swargate',
      'Loni'
    ]; // Dummy city names
    final String? selectedCity = await showModalBottomSheet<String>(
      context: context,
      builder: (BuildContext context) {
        return ListView.builder(
          itemCount: cities.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(cities[index]),
              onTap: () => Navigator.of(context).pop(cities[index]),
            );
          },
        );
      },
    );

    if (selectedCity != null) {
      _nameController.text = selectedCity;
      // Navigate to the next page here
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 50),
            const Text(
              'Enter your area name',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            GestureDetector(
              onTap: _showCitySelection,
              child: AbsorbPointer(
                child: TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.grey[200],
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  'Use current location',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xff54d27f),
                  ),
                ),
                Icon(
                  Icons.location_on,
                  color: Color(0xff54d27f),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
