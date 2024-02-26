void main() {
  List<String> days = ['sunday', 'monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday'];

  for (int i = 0; i < days.length - 1; i++) {
    for (int j = 0; j < days.length - 1; j++) {
      if (days[j].compareTo(days[j + 1]) > 0) {
        String temp = days[j];
        days[j] = days[j + 1];
        days[j + 1] = temp;
      }
    }
  }


  print(days);
}
