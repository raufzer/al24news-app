// future with delay example 
import 'dart:async';

void main() async{
  print('Fetching data...');
  await Future.delayed(const Duration(seconds: 2));
  print('Data fetched.');
}