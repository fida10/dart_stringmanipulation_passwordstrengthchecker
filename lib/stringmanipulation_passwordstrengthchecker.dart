/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/stringmanipulation_passwordstrengthchecker_base.dart';

/*
Create a function in Dart to check the strength of a password. 
The password is considered strong if it meets the following criteria:

At least 8 characters long

Contains at least one uppercase letter

Contains at least one lowercase letter

Contains at least one number

Contains at least one special character (like !@#$%^&*)

Use regular expressions to validate the password.
*/

bool isValidPassword(String input){

  return input.contains(RegExp(r'^(?![^]*\s)(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#$%^&*]).{8,}$'));
}
