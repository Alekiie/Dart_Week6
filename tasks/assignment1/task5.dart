void main()async{
 await check_Number(20);
}
dynamic check_Number(int num)async{
  if(num%2==0){
    print("Number even...");
  }else{
    print("Number odd...");
  }
}