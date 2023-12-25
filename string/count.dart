int countSubstringOccurrences(String mainString, String substring) {
  int count = 0;
  int index = 0;

  while ((index = mainString.indexOf(substring, index)) != -1) {
    count++;
    index += substring.length;
  }

  return count;
}

void main() {
  String mainString = 'bromybbro';
  String substring = 'bro';

  int occurrences = countSubstringOccurrences(mainString, substring);

  print("The substring '$substring' appears $occurrences times in the string.");
}


