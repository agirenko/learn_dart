main(List<String> arguments) {
  // Error is a program failure
  // Exception - can be handled

  int age;
  int dogYears = 7;
  try {
    print(age * dogYears);
  } catch (ex) {
    print(ex.toString());
  } finally {
    print('complete 1');
  }

  try {
    if(age == null) throw NullThrownError();
    print(age * dogYears);
  } on NullThrownError {
    print('Variable "age" is null');
  }
  on NoSuchMethodError {
    print('No such method error.');
  } catch (ex) {
    print(ex.toString());
  } finally {
    print('complete 2');
  }
}
