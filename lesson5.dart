//Task 1 
// void main() { 
//   Set<int> set1 = {1, 2, 3}; 
//   Set<int> set2 = {2, 3, 4, 5}; 
 
//   bool isSubset = set1.every((element) => set2.contains(element)); 
 
//   if (isSubset) { 
//     print('set1 is a subset of set2'); 
//   } else { 
//     print('set1 is not a subset of set2'); 
//   } 
// } 
 
//Task 2 
// void main (){ 
//     var set = {"aruzhan", "dana", "merey", "dina", "aizhan"}; 
//     set.removeAll({"aruzhan", "dana", "merey", "dina", "aizhan"}); 
//     print(set);  
// } 
 
//Task 3 
// void main() { 
//   var numbers = {34, 76, 36, 90, 11, 5}; 
//   int max = numbers.first; 
//   int min = numbers.first; 
   
//   numbers.forEach((element) { 
//     if (element > max) { 
//       max = element; 
//     } 
//     if (element < min) { 
//       min = element; 
//     } 
//   }); 
 
//   print("Max: $max"); 
//   print("Min: $min"); 
// } 
 
//Task 4 
// void main() { 
//   var students = {"alnur", "ulbosh", "madi", "yuki", "aizhan"}; 
 
//   int length = students.length; 
 
//   print("The length of the set: $length"); 
// } 
 
// //Task 5 
// void main() { 
//   var numbers = {95, 50, 70, 75, 80}; 
//   int checkNumbers = 100;  
 
//   if (numbers.contains(checkNumbers)) { 
//     print("$checkNumbers in the set."); 
//   } else { 
//     print("$checkNumbers is not."); 
//   } 
// } 
 
//Task 6 
// void main() { 
//   var set1 = {1, 2, 3, 4, 5}; 
//   var set2 = {6, 7, 8, 9, 10}; 
   
//   var intersection = set1.intersection(set2); 
 
//   if (intersection.isEmpty) { 
//     print("No common elements."); 
//   } else { 
//     print("There are common elements."); 
//   } 
// } 
 
//Task 7 
// void main() { 
//   var set1 = {1, 2, 3, 4, 5}; 
//   var set2 = {5, 7, 8, 3, 1}; 
   
//   Set<int> difference = set1.difference(set2); 
 
//   print("Elements in set1 that are not in set2: $difference"); 
// } 
 
//Task 8 
// void main() { 
//   var set1 = {1, 2, 3, 4, 5};
//   var set2 = {5, 7, 8, 3, 1}; 
//   Set<int> intersection = set1.intersection(set2); 
//   set1.removeAll(intersection); 
 
//   print(set1); 


// }// 9
// Write a Dart program to find all the unique words and count the frequency 
//of occurrence from a given list of strings. Use Dart set data type.

// void main() {
//   List<String> strings = [
//     "apple",
//     "qwerty",
//     "cherry",
//     "apple",
//     "qwerty"
//   ];

//   Set<String> uniqueWords = Set<String>();

//   for (String string in strings) {
//     List<String> words = string.split(" ");
//     uniqueWords.addAll(words); // Add all words to the set of unique words
//   }

//   // Iterate through unique words and count their frequencies
//   for (String word in uniqueWords) {
//     int count = 0;
//     for (String string in strings) {
//       List<String> words = string.split(" ");
//       count += words.where((w) => w == word).length; // Count occurrences of the word in each string
//     }
//     print("$word: $count times");
//   }
// }


// 10
// Write a Dart program that finds all pairs of elements in a list
// whose sum is equal to a given value.

// void findPairs(List<int> numbers, int targetSum) {
//   for (int i = 0; i < numbers.length - 1; i++) {
//     for (int j = i + 1; j < numbers.length; j++) {
//       if (numbers[i] + numbers[j] == targetSum) {
//         print("Pair: (${numbers[i]}, ${numbers[j]})");
//       }
//     }
//   }
// }

// void main() {
//   List<int> numbers = [1, 2, 3, 4, 5, 6, 7];
//   int targetSum = 9;

//   findPairs(numbers, targetSum);
// }



// 11
// Write a Dart program to find the longest common prefix of all strings. 
// Use the Dart set.

// String findLong(List<String> strings) {
//   if (strings.isEmpty) {
//     return ""; 
//   }

//   if (strings.length == 1) {
//     return strings[0];
//   }

//   String shortString = strings.reduce((a, b) => a.length < b.length ? a : b);

//   for (int i = 0; i < shortString.length; i++) {
//     String char = shortString[i];

//     for (String str in strings) {
//       if (str[i] != char) {
//         return shortString.substring(0, i); 
//       }
//     }
//   }

//   return shortString; 
// }

// void main() {
//   List<String> strings = ["flower", "flow", "flight"];
//   String commonPrefix = findLong(strings);

//   print("Longest: $commonPrefix");
// } 


// 12
// Write a Dart program to find the two numbers whose product is maximum among 
// all the pairs in a given list of numbers. Use the Dart set.

// void findMaxPair(List<int> nums) {
//   if (nums.length < 2) {
//     print("Insufficient number of elements to find a pair.");
//     return;
//   }

//   int maxP = nums[0] * nums[1];
//   int firstN = nums[0];
//   int secondN = nums[1];

//   for (int i = 0; i < nums.length - 1; i++) {
//     for (int j = i + 1; j < nums.length; j++) {
//       int product = nums[i] * nums[j];
//       if (product > maxP) {
//         maxP = product;
//         firstN = nums[i];
//         secondN = nums[j];
//       }
//     }
//   }
//   print("numbers with the maximum product are: $firstN and $secondN");
//   print("Max: $maxP");
// }
// void main() {
//   List<int> nums = [1, 3, 2, 4, 5, 6];
//   findMaxPair(nums);
// }


// 13
// Given two sets of numbers, write a Dart program to find the missing 
// numbers in the second set as compared to the first and vice versa. 
// Use the Dart set.

// void findNumbers(Set<int> set1, Set<int> set2) {
//   Set<int> missingSet1 = set2.difference(set1);
//   Set<int> missingSet2 = set1.difference(set2);

//   print("Missing numbers in Set1 compared to Set2: $missingSet1");
//   print("Missing numbers in Set2 compared to Set1: $missingSet2");
// }

// void main() {
//   Set<int> set1 = {1, 2, 3, 4, 5};
//   Set<int> set2 = {3, 4, 6, 7, 8};

//   findNumbers(set1, set2);
// }


// 14
// Write a Dart program to find all the anagrams and group them together from 
// a given list of strings. Use the Dart data type.

// void groupAnagrams(List<String> words) {
//   final anagramGroups = <Set<String>>[];

//   for (final word in words) {
//     final wordSet = word.split('').toSet();
//     final group = anagramGroups.firstWhere(
//       (group) => group.length == wordSet.length && group.containsAll(wordSet),
//       orElse: () {
//         final newGroup = <String>{};
//         anagramGroups.add(newGroup);
//         return newGroup;
//       },
//     );
//     group.add(word);
//   }
//   anagramGroups.removeWhere((group) => group.length == 1);
//   for (final group in anagramGroups) {
//     print("Anagrams: ${group.join(', ')}");
//   }
// }
// void main() {
//   final words = ["listen", "hello", "world",  "cat", "dog"];
//   groupAnagrams(words);
// }


// 15
// Write a Dart program to find all the unique combinations of 3 numbers from 
// a given list of numbers, adding up to a target number.
// void findCombs(List<int> numbers, int targetSum) {
//   Set<List<int>> combs = Set<List<int>>();

//   for (int i = 0; i < numbers.length - 2; i++) {
//     for (int j = i + 1; j < numbers.length - 1; j++) {
//       for (int k = j + 1; k < numbers.length; k++) {
//         int sum = numbers[i] + numbers[j] + numbers[k];
//         if (sum == targetSum) {
//           combs.add([numbers[i], numbers[j], numbers[k]]);
//         }
//       }
//     }
//   }
//   if (combs.isEmpty) {
//     print("No combinations");
//   } else {
//     print("Unique combinations of 3 numbers that add up to $targetSum:");
//     combs.forEach((combination) {
//       print(combination);
//     });
//   }
// }
// void main() {
//   List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
//   int targetSum = 15;

//   findCombs(numbers, targetSum);
// }


// 16
// Write a Dart program to remove all duplicates from a given list of strings 
//and return a list of unique strings. Use the Dart set data type.

// List<String> removeDuplicates(List<String> inputList) {
//   Set<String> uniqueSet = Set<String>.from(inputList);
//   return uniqueSet.toList();
// }

// void main() {
//   List<String> inputList = ["apple", "banana", "apple", "cherry", "banana"];
//   List<String> uniqueList = removeDuplicates(inputList);

//   print("Original List: $inputList");
//   print("Unique List: $uniqueList");
// }


// 17
// Given two integer sets a  and b, write a program to calculate the set of the 
// elements that belong to either a or b, but not both.

// void main() {
//   const a = {2, 7};
//   const b = {7, 4};
//   Set<int> result = symmetricDifference(a, b);

//   print("Elements that belong to either a or b, but not both: $result");

  
//   int sum = result.fold(0, (int prev, int element) => prev + element);

//   print("Sum of all items in the resulting set: $sum");
// }

// Set<int> symmetricDifference(Set<int> set1, Set<int> set2) {
//   Set<int> result = Set<int>.from(set1);
  
//   for (int element in set2) {
//     if (result.contains(element)) {
//       result.remove(element);
//     } else {
//       result.add(element);
//     }
//   }
//   return result;
// }