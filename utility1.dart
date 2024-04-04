// Utilities are programs created to provide additions to the capabilities given by an operating system.
// They may include arithmetic computations to time,Dates

// Dates and time
void main(){
  DateTime now =DateTime.now();
  print("Now:  $now");

  // Calculate future date
  // We use .add() method to add a Duration
  // Example is 7 days from now
  DateTime future=now.add(Duration(days: 8));
  // parsedfuture=future.pa
  print("Future: $future");
}