
void main()async{
 int response = await operation(12,80);
 print(response);
}
 operation(int a,int b) async{
 return a+b;
}