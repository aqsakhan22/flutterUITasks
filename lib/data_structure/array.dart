import 'package:flutter/material.dart';
// https://www.geeksforgeeks.org/array-data-structure-guide/

class ArraySample extends StatelessWidget {
  const ArraySample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List numbers=[1,2,3, 9808,4,];
    int isFound=0;
    int searchNumbers(int findNo){

      for(int i=0;i < numbers.length; i++)
      {
        if(numbers[i] == findNo){
          //numbers[0] == findNo -> 1 == 6 -> false
          //numbers[1] == findNo -> 2 == 6 -> false
          //numbers[2] == findNo -> 3 == 6 -> false
          //numbers[3] == findNo -> 4 == 6 -> false
          //numbers[4] == findNo -> 5 == 6 -> false
          // numbers[5] == findNo -> 6 == 6 -> true
          // numbers[6] == findNo -> 6 == 6 -> true
          // numbers[7] == findNo -> 9 == 6 -> false

          isFound=numbers[i];
          return isFound;
        }
        // return isFound;
      }
      // return isFound;
      return isFound;
    }
    int LargestNumbers(int findNo){
int max=numbers[0];

      for(int i=0;i < numbers.length; i++)
      {
        print("i is ${numbers[i]} max is ${max}");
       if(numbers[i] > max){
         // 1 > 0 - > true save into max var
         // 2 > 1 -> max =2
         // 3 > 2 -> max=3
         // 9808 > 3 -> max= 9808
         // 4 > 9808 => return  max 9808
         max=numbers[i];
       }
        // return isFound;
      }
      // return isFound;
      return max;
    }

    int SecondLargestNumbers () {
      int firstMax=numbers[0];
      int secondMax=numbers[1];
      if (numbers.length < 2) {

        throw ArgumentError("Array must contain at least two distinct elements");

      }

      // if (secondMax > firstMax) {
      //   int temp = firstMax; // temporary
      //   firstMax = secondMax;
      //   secondMax = temp;
      // }
      for(int i=0; i < numbers.length; i++)
      {
        // print("i is ${numbers[i]} max is ${firstMax} second max is ${secondMax}");
       if(numbers[i] > firstMax) {
         secondMax = firstMax;
         firstMax = numbers[i];
         // secondMax=firstMax;
         // 1 > 1 firstMax= 1
         // 2 > 1 firstMax=2
         // 3 > 2
       }
       else if (numbers[i] > secondMax) {
         secondMax = numbers[i];
       }


       // if(secondMax < firstMax){
       //
       // }
        // return isFound;
      }
      print("first max is ${firstMax} ${secondMax}");
      // return isFound;
      return secondMax;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Array Practice"),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            print("found no is ${searchNumbers(12)}");

          }, child: Text("Linear Search Array")),
          ElevatedButton(onPressed: (){
            print("Greatest no is ${LargestNumbers(12)}");

          }, child: Text("Search Greatest Element")),
          ElevatedButton(onPressed: (){
            print("Greatest no is ${SecondLargestNumbers()}");

          }, child: Text("2nd Greatest Element")),

        ],
      ),
    );
  }
}
