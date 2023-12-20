main(){
    fibfin(int x, {int a=0, int b=1}){
     if(x<0){
      return;
     }
     print('$a ');
     fibfin(x-1, a: b,  b: a+b );
  }

  fibfin(5);

}

// //   print(facto(3));

//   String name = 'Sugith';

//   name = name.split('').reversed.join().toString();

//   print(name);

//   int number = 134;
//   String newNumber = number.toString();
//   newNumber = newNumber.split('').reversed.join().toString();

//   List<String> f = newNumber.split(' ');
//   print(f);
// }





// main(){
//   List<int> numbers = [10,23,45,54,67,98,110,124,170];
  
//   int binarySerach(List<int> numbers, target){
//     int l=0,h=numbers.length-1,mid=0;

//     while(l<=h){
//       mid = (l+h) ~/2;
//       if(target == numbers[mid]){
//         return mid;
//       }else if(target < numbers[mid]){
//         h = mid-1;
//         l=l;
//       }else{
//         l = mid + 1;
//         h = h;
//       }
//     }
//     return -1;
//   }

//   binarySerach(numbers, 23);
// }

// main() {
//   List<int> numbers = [10, 23, 45, 54, 67, 98, 110, 124, 170];

//   int binarySearch(List<int> numbers, target) {
//     int l = 0, h = numbers.length - 1, mid = 0;

//     while (l <= h) { 
//       mid = (l + h) ~/ 2;
//       if (target == numbers[mid]) {
//         return mid;
//       } else if (target < numbers[mid]) {
//         h = mid - 1;
//       } else {
//         l = mid + 1;
//       }
//     }
//     return -1;
//   }

//   print( binarySearch(numbers, 20));

 
// }

// main(){
//   List<int> numbers = [10,20,30,40,50,54,59];
//   print(binarySearch(numbers, 40));
// }

// int binarySearch(List<int> nums, int t){
//   int low = 0, high = nums.length-1, mid =0;
//   while(low<=high){
//     mid = (low+high)~/2;
//     if(t == nums[mid]){
//       return mid;
//     }else if(t > nums[mid]){
//       low = mid+1;
//     }else{
//       high = mid-1;
//     }
//   }
//   return -1;
// }




















// int binarySearch(List<int> nums, int t){
//   int low = 0, high = nums.length-1, mid = 0;
//   while(low<=high){
//     mid = (high + low) ~/ 2;
//     if(nums[mid] == t){
//       return mid;
//     }else if(t > nums[mid]){
//       low = mid+1;
//     }else{
//       high = mid-1;
//     }
//   }
//   return -1;
// }




// int binarySearch(List<int> nums, int f){
//   int low=0, high = nums.length-1, mid=0;
//   while(low<=high){
//     mid = (high+low) ~/ 2;
//     if(nums[mid] == f){
//       return mid;
//     }else if(f > nums[mid]){
//       low = mid +1;
//     }else{
//       high = mid -1;
//     }
//   }

//   return -1;
// }