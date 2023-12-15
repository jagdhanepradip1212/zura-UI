SizedBox(
  height = 220, // Adjust the height as necessary
  child = GridView.builder(
    physics: const NeverScrollableScrollPhysics(), // to disable GridView's scrolling
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 4, // Number of columns
      crossAxisSpacing: 6, // Horizontal space between items
      mainAxisSpacing: 6, // Vertical space between items
    ),
    itemCount: 8, // Number of items in the grid
    itemBuilder: (BuildContext context, int index) {
      // List of texts for each grid item
      List<String> gridTexts = [
        'Text 1', 'Text 2', 'Text 3', 'Text 4',
        'Text 5', 'Text 6', 'Text 7', 'Text 8'
      ];

      return Column(
        mainAxisSize: MainAxisSize.min, // To wrap the content in the column
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[300], // Example color for grid items
              borderRadius: BorderRadius.circular(8),
            ),
            height: 70, // Height for the grid box
            width: double.infinity, // Make the container take full width in the grid cell
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4), // Space between the container and text
            child: Text(
              gridTexts[index], // Displaying text from the list
            ),
          ),
        ],
      );
    },
  ),
),
