import 'package:assignments/utils/validators.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Email Validator', () {
    test('returns true for valid email', () {
      expect(isValidEmail('test@example.com'), true);
    });

    test('returns false for invalid email', () {
      expect(isValidEmail('test@'), false);
      expect(isValidEmail('test.com'), false);
      expect(isValidEmail(''), false);
    });
  });
}
