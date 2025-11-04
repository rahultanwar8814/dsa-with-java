main(){
  var arr = [1,2,9,4,5,6,7,8,19,10];
  var max = 0 ;
  var secondMax = 0 ; 
  for(int i = 0 ; i < arr.length ;i++){

    if(arr[i]>max){
      secondMax = max ;
      max = arr[i];
    }
  }
  print("Max:$max ");
  print("Max:$secondMax ");
}