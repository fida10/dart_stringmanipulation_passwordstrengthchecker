import 'package:stringmanipulation_passwordstrengthchecker/stringmanipulation_passwordstrengthchecker.dart';
import 'package:test/test.dart';

void main() {
  group('Password Validation Tests', () {
    // At least 8 characters long
    test('Positive: Password with 8 characters', () {
      expect(isValidPassword('Ab1!cdef'), true);
    });
    test('Positive: Password with more than 8 characters', () {
      expect(isValidPassword('Ab1!cdefg'), true);
    });
    test('Positive: Long Password', () {
      expect(isValidPassword('Ab1!cdefghijkl'), true);
    });
    test('Positive: Very Long Password', () {
      expect(isValidPassword('Ab1!cdefghijklmnop'), true);
    });
    test('Negative: Password with 7 characters', () {
      expect(isValidPassword('Ab1!cd'), false);
    });
    test('Negative: Short Password', () {
      expect(isValidPassword('A1!b'), false);
    });
    test('Negative: Very Short Password', () {
      expect(isValidPassword('A!b'), false);
    });
    test('Negative: Empty Password', () {
      expect(isValidPassword(''), false);
    });

    // Contains at least one uppercase letter
    test('Positive: Password with one uppercase', () {
      expect(isValidPassword('ab1!cdefG'), true);
    });
    test('Positive: Password with multiple uppercase', () {
      expect(isValidPassword('aB1!cDeFg'), true);
    });
    test('Positive: Password starting with uppercase', () {
      expect(isValidPassword('Ab1!cdefg'), true);
    });
    test('Positive: Password with uppercase in middle', () {
      expect(isValidPassword('ab1!cdEfgh'), true);
    });
    test('Negative: Password without uppercase', () {
      expect(isValidPassword('ab1!cdefgh'), false);
    });
    test('Negative: All lowercase password', () {
      expect(isValidPassword('abc!defgh'), false);
    });
    test('Negative: Lowercase with numbers and special', () {
      expect(isValidPassword('ab1!cdef'), false);
    });
    test('Negative: Lowercase only', () {
      expect(isValidPassword('abcdefgh'), false);
    });

    // Contains at least one lowercase letter
    test('Positive: Password with one lowercase', () {
      expect(isValidPassword('AB1!CDEfG'), true);
    });
    test('Positive: Password with multiple lowercase', () {
      expect(isValidPassword('AB1!cDeFg'), true);
    });
    test('Positive: Password starting with lowercase', () {
      expect(isValidPassword('ab1!CDEFG'), true);
    });
    test('Positive: Password with lowercase in middle', () {
      expect(isValidPassword('AB1!CDefGH'), true);
    });
    test('Negative: Password without lowercase', () {
      expect(isValidPassword('AB1!CDEFG'), false);
    });
    test('Negative: All uppercase password', () {
      expect(isValidPassword('ABC!DEFGH'), false);
    });
    test('Negative: Uppercase with numbers and special', () {
      expect(isValidPassword('AB1!CDEF'), false);
    });
    test('Negative: Uppercase only', () {
      expect(isValidPassword('ABCDEFGH'), false);
    });

    // Contains at least one number
    test('Positive: Password with one number', () {
      expect(isValidPassword('Abc!defG1'), true);
    });
    test('Positive: Password with multiple numbers', () {
      expect(isValidPassword('Ab1!cD2eFg'), true);
    });
    test('Positive: Password starting with number', () {
      expect(isValidPassword('1Ab!cdefg'), true);
    });
    test('Positive: Password with number in middle', () {
      expect(isValidPassword('Ab!cd1Efgh'), true);
    });
    test('Negative: Password without number', () {
      expect(isValidPassword('Abc!defGh'), false);
    });
    test('Negative: All letters and special char password', () {
      expect(isValidPassword('Abc!defGh'), false);
    });
    test('Negative: Letters and special char only', () {
      expect(isValidPassword('Abc!defg'), false);
    });
    test('Negative: Letters only', () {
      expect(isValidPassword('Abcdefgh'), false);
    });

    // Contains at least one special character
    test('Positive: Password with one special character', () {
      expect(isValidPassword('Ab1cdefG!'), true);
    });
    test('Positive: Password with multiple special characters', () {
      expect(isValidPassword('Ab1!cD#eFg'), true);
    });
    test('Positive: Password starting with special character', () {
      expect(isValidPassword('!Ab1cdefg'), true);
    });
    test('Positive: Password with special character in middle', () {
      expect(isValidPassword('Ab1cd\$Efgh'), true);
    });
    test('Negative: Password without special character', () {
      expect(isValidPassword('Ab1cdefGh'), false);
    });
    test('Negative: All letters and number password', () {
      expect(isValidPassword('Ab1cdefGh'), false);
    });
    test('Negative: Letters and number only', () {
      expect(isValidPassword('Ab1cdefg'), false);
    });
    test('Negative: Letters only', () {
      expect(isValidPassword('Abcdefgh'), false);
    });
  });

}
