import 'dart:io';

void main(List<String> arguments) {
  print('Enter the captital of the country to win this Quiz :\n');
  var countries=['India','Australia','Usa','Canada'];
  var list=countries.map((element)=>element).toList();
  var capitals=['Delhi','Canberra','Washington DC','Ottawa'];
  var f=0;
  list.shuffle();
  for(var i=0;i<4;i++){
    print('Capital of ${list[i]} is ?');
    var answer= stdin.readLineSync();
    print('list[i] ${list[i]}');
    var index=countries.indexOf(list[i]);
    if(capitals[index]==answer){
      print('Correct Answer !\n');
    }
    else{
      print('InCorrect Answer !\n');
      f=1;
      break;
    }  
  }
  if(f==0){
    print('Congratulations! You Won the Quiz');
  }
  else{
    print('You Lost the Quiz! Better Luck next time!');
  }
}
