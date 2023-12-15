import 'package:flutter/material.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  _InputsScreenState createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Makes the AppBar transparent
        elevation: 0, // Removes the shadow
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context)
                .pop(); // This line will navigate back to the previous screen
          },
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            // Remove the SizedBox with height 90, as AppBar provides natural spacing
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Help us to let you know',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 16),
            // ... Rest of your code ...
          ],
        ),
      ),
    );
  }
}
