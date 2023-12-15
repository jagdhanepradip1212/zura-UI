import 'package:flutter/material.dart';
import 'package:zura/otp.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f6fb),
      body: Column(
        children: [
          Container(
            height: 200, // Adjust the height as needed
            decoration: const BoxDecoration(
              color: Colors.black, // Choose any color you like
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: const Center(
              child: Text(
                'Zura', // Replace with your content (like a logo or an image)
                style: TextStyle(
                    fontSize: 24, color: Color.fromARGB(210, 88, 218, 92)),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  // Mobile Number Field
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: Container(
                        child: Container(
                          margin: const EdgeInsets.only(right: 10.0),
                          child: const Divider(
                            color: Colors.grey,
                            height: 36,
                          ),
                        ),
                      )),
                      const Text(
                        'Login or Sign Up',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      Expanded(
                          child: Container(
                        margin: const EdgeInsets.only(left: 10.0),
                        child: const Divider(
                          color: Colors.grey,
                          height: 36,
                        ),
                      ))
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: <Widget>[
                      Container(
                        height: 55, // Adjust the size as needed
                        width: 55, // Adjust the size as needed
                        margin: const EdgeInsets.only(
                            right: 8.0), // Right margin for spacing
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage(
                                'assets/flag.png'), // Flag image asset
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(
                            color: const Color.fromARGB(
                                255, 0, 0, 0), // Border color
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(
                              5.0), // Optional: if you want rounded corners
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: _phoneController,
                          keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
                            labelText: 'Mobile Number',
                            prefixIcon: Icon(Icons.phone),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      )
                    ],
                  ),

                  const SizedBox(height: 20),

                  ElevatedButton(
                    // Within the `FirstRoute` widget
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Otp()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(
                          210, 88, 218, 92), // Background color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8), // Border radius
                      ),
                      fixedSize: const Size(200, 50), // Width and Height
                    ),
                    child: const Text(
                      'Continue',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 20),

                  Row(
                    children: <Widget>[
                      Expanded(
                          child: Container(
                        child: Container(
                          margin: const EdgeInsets.only(right: 10.0),
                          child: const Divider(
                            color: Colors.grey,
                            height: 36,
                          ),
                        ),
                      )),
                      const Text(
                        'or',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      Expanded(
                          child: Container(
                        margin: const EdgeInsets.only(left: 10.0),
                        child: const Divider(
                          color: Colors.grey,
                          height: 36,
                        ),
                      ))
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment
                        .center, // Aligns children to the center
                    children: <Widget>[
                      Container(
                        height: 60, // Height of the container
                        width: 60, // Width of the container
                        decoration: BoxDecoration(
                          color: Colors.black,
                          image: const DecorationImage(
                            image: AssetImage(
                              'assets/google.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius:
                              BorderRadius.circular(10), // Rounded corners
                        ),
                      ),
                      const SizedBox(
                          width: 40), // Spacing between the containers

                      Container(
                        height: 60, // Height of the container
                        width: 60, // Width of the container

                        decoration: BoxDecoration(
                          color: Colors.black,
                          image: const DecorationImage(
                            image: AssetImage(
                                'assets/apple.png'), // Flag image asset
                            fit: BoxFit.cover,
                          ),
                          borderRadius:
                              BorderRadius.circular(10), // Rounded corners
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
