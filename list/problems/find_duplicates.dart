//method 1 : complexity -> space: log(n), time: log(n^2)
// main(){
//   List<int> numbers = [10,22,12,15,12,33,22,10,19,22,19];
//   Set<int> dup = {};
//   for(int i = 0; i<numbers.length; i++){
//     for(int j=0; j<numbers.length; j++){
//       if(i != j && numbers[i] == numbers[j]){
//         dup.add(numbers[i]);
//       }
//     }
//   }

//   print('Duplicate elements are: $dup');
// }


//method 2 : complexity -> space: O(1), time: O(n^2)
main(){
  List<int> numbers = [10,22,12,15,12,33,22,10,19,22,19];
print('duplciates');
  for(int i = 0; i<numbers.length; i++){
    for(int j=0; j<numbers.length; j++){
      if(i != j && numbers[i] == numbers[j]){
       if(j<i){
        break;
       }
       print(numbers[i]);
       break;
      }
    }
  } 
}