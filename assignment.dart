import 'dart:io';

// Function for string manipulation
void stringManipulation(String input) {
  print("Concatenated String: ${"Hello, " + input + "!"}");
  print("Interpolated String: ${"Hello, $input!"}");

  // Substring extraction
  String subStr = input.length > 4 ? input.substring(0, 4) : input;
  print("Substring (first 3 chars): $subStr");

  // Case conversion
  print("Upper case: ${input.toUpperCase()}");
  print("Lower case: ${input.toLowerCase()}");

  // Reversed string
  String reversed = input.split('').reversed.join('');
  print("Reversed String: $reversed");

  // Length of string
  print("Length of the string: ${input.length}");
}

// Function for demonstrating collections
void demonstrateCollections() {
  // Using list
  List<String> fruits = ['Apple', 'Banana','Mango', 'Cherry'];
  fruits.add('Date');
  print("Fruits List: $fruits");

  // Removing an item
  fruits.remove('Banana');
  print("After removing Banana: $fruits");

  // Iterating over the list
  print("Iterating over fruits:");
  for (String fruit in fruits) {
    print("Fruit: $fruit");
  }

  // Using set
  Set<String> uniqueFruits = {'Apple', 'Banana', 'Mango', 'Cherry'};
  print("Unique Fruits Set: $uniqueFruits"); // Duplicates are removed

  // Using map
  Map<String, int> fruitQuantity = {
    'Apple': 29,
    'Banana': 7,
    'Mango' : 15,
    'Cherry': 40
  };
  print("Fruit quantities: $fruitQuantity");

  // Modifying map
  fruitQuantity['Banana'] = 8; // Incrementing
  fruitQuantity.remove('Cherry');
  print("Updated Fruit quantities: $fruitQuantity");
}

// Function for file handling
Future<void> fileHandling() async {
  try {
    // Reading from file
    String content = await File('input.txt').readAsString();
    print("File Content:\n$content");

    // Writing to a file
    await File('output.txt').writeAsString("Output written on: ${DateTime.now()}\n$content");
    print("Data written to output.txt");
  } catch (e) {
    print("Error in file handling: $e");
  }
}

// Function for date and time manipulation
void dateTimeUtil() {
  DateTime now = DateTime.now();
  print("Current Date and Time: $now");

  // Adding days
  DateTime futureDate = now.add(Duration(days: 3));
  print("Date after 3 days: $futureDate");

  // Subtracting days
  DateTime pastDate = now.subtract(Duration(days: 3));
  print("Date 3 days ago: $pastDate");

  // Difference between two dates
  Duration difference = futureDate.difference(now);
  print("Difference in days: ${difference.inDays}");
}

// Main function to run the application
Future<void> main() async {
  print("Enter a string for manipulation:");
  String input = stdin.readLineSync() ?? ""; // Safety check for null input

  // String Manipulation
  stringManipulation(input);

  // Collections demonstration
  demonstrateCollections();

  // File handling
  await fileHandling();

  // Date and time utilities
  dateTimeUtil();
}