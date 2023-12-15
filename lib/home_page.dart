import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:zura/profile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> carouselImages = [
      'assets/carousel1.jpg',
      'assets/carousel2.jpg',
      'assets/carousel3.jpg',
      'assets/carousel4.jpg',
    ];
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: 100,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(251, 232, 225, 98),
                  Color.fromARGB(232, 178, 158, 24),
                  // Add more colors if you like
                ],
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfilePage()),
                      );
                    },
                    child: const Icon(
                      Icons.account_circle_sharp,
                      color: Color.fromARGB(255, 0, 0, 0),
                      size: 40,
                    ),
                  ),
                ),

                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Text(
                      'Saved till date',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '₹1000',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  // Takes up remaining space
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 90,
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(9.0),
                      margin: const EdgeInsets.only(right: 10),

                      child: const Text(
                        "Rewards",
                        textAlign: TextAlign.center,
                      ),
                      // You can add child widgets to this container
                    ),
                  ),
                ),

                // Add any other widgets you want inside the container
              ],
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(12.0), // Circular border radius
                  borderSide: BorderSide.none, // No border
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(12.0), // Circular border radius
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(12.0), // Circular border radius
                  borderSide: const BorderSide(width: 2, color: Colors.grey),
                ),
                filled: true,
                fillColor: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
          const SizedBox(height: 14),
          const Padding(
            padding: EdgeInsets.only(left: 10.0), // Adjust the value as needed
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Shop by Store",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 230, // Adjust the height as necessary
            child: GridView.builder(
              physics:
                  const NeverScrollableScrollPhysics(), // to disable GridView's scrolling
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, // Number of columns
                crossAxisSpacing: 6, // Horizontal space between items
                mainAxisSpacing: 6, // Vertical space between items
              ),
              itemCount: 8, // Number of items in the grid
              itemBuilder: (BuildContext context, int index) {
                // List of texts for each grid item
                List<String> gridTexts = [
                  'Text 1',
                  'Text 2',
                  'Text 3',
                  'Text 4',
                  'Text 5',
                  'Text 6',
                  'Text 7',
                  'Text 8'
                ];

                List<String> assetImages = [
                  'assets/image1.png',
                  'assets/image2.png',
                  'assets/image3.png',
                  'assets/image4.png',
                  'assets/image5.png',
                  'assets/image6.png',
                  'assets/image7.png',
                  'assets/image8.png',
                ];

                return Column(
                  mainAxisSize:
                      MainAxisSize.min, // To wrap the content in the column
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300], // Example color for grid items
                        borderRadius: BorderRadius.circular(8),
                      ),
                      height: 65, // Height for the grid box
                      width: double.infinity,
                      child: Image.asset(
                        assetImages[index],
                        fit: BoxFit.cover,
                      ), // Make the container take full width in the grid cell
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 4), // Space between the container and text
                      child: Text(
                        gridTexts[index], // Displaying text from the list
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: 200.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
            items: carouselImages.map((imagePath) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                    ),
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
