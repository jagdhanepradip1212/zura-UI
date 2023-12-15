import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: const Row(
          children: <Widget>[
            Icon(
              Icons.location_on,
              color: Colors.white,
              size: 18.0,
            ),
            SizedBox(width: 4),
            Text(
              'Vasant Baug',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
        actions: <Widget>[
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
            ),
            child: IconButton(
              icon: const Icon(
                Icons.person,
                color: Colors.white,
              ),
              onPressed: () {
                // Add your profile icon tap action here
              },
            ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 300,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 0, 0, 0),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0), // Add padding here
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 121, 116, 116),
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    child: const TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Colors.white),
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.search_sharp,
                          color: Color.fromARGB(162, 59, 204, 61),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: <Widget>[
              Expanded(
                  child: Container(
                margin: const EdgeInsets.only(right: 10.0),
                child: const Divider(
                  color: Colors.grey,
                  height: 36,
                ),
              )),
              const Text(
                "WHAT'S ON ZURA",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
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
          const SizedBox(height: 12),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 5,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  height: 50,
                  child: const Center(
                    child: Text(
                      'REWARDS',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2), // Shadow color
                        blurRadius: 5, // Add blur radius
                        spreadRadius: 2, // Add spread radius
                      ),
                    ],
                  ),
                  height: 50,
                  child: const Center(
                    child: Text(
                      'EXPLORE',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const SizedBox(height: 16),
          Row(
            children: <Widget>[
              Expanded(
                  child: Container(
                margin: const EdgeInsets.only(right: 10.0),
                child: const Divider(
                  color: Colors.grey,
                  height: 36,
                ),
              )),
              const Text(
                "REWARDS",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
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
          const SizedBox(height: 12),
          Container(
            height: 150,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 5,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: const Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      '100',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Positioned(
                  top:
                      30, // Adjust this value as needed to position the text below '100'
                  left: 0,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Rewards Earned Worth',
                      style: TextStyle(
                          fontSize: 14, // Customize your text style here
                          color: Colors.black,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
                // Add other widgets here if needed
              ],
            ),
          ),
        ],
      ),
    );
  }
}
