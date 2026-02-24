import 'dart:io';

void main(List<String> arguments) {
  excercise4();
}

void excercise2() {
  var example = [2, 3, 5, 6, 8, 10, 14];
  var acumulator = 0;
  for (var element in example) {
    if (element % 2 == 0) {
      acumulator += element;
    }
  }
  print("La suma de los numeros pares es: $acumulator");
}

void excercise3() {
  List<String> example = [
    "dart",
    "dart",
    "flutter",
    "codigo",
    "movil",
    "flutter",
  ];
  Set<String> uniqueElements = {};

  for (var element in example) {
    uniqueElements.add(element);
  }
  print("Los elementos unicos son: $uniqueElements");
}

void excercise4() {
  List<String> example = [
    "dart",
    "dart",
    "flutter",
    "codigo",
    "movil",
    "flutter",
  ];
  Map<String, int> frequencyMap = {};
  for (var element in example) {
    if (frequencyMap.containsKey(element)) {
      frequencyMap[element] = frequencyMap[element]! + 1;
    } else {
      frequencyMap[element] = 1;
    }
  }
  print(frequencyMap);
}

void listLoop() {
  List<int> numbers = [1, 6, 12, 2, 5, 9];

  for (var i = 0; i < numbers.length; i++) {
    print("Los numeros con este for son: ${numbers[i]}");
  }

  for (var element in numbers) {
    print("Los numeros con este for son: $element");
  }

  numbers.forEach(print);
}

void setLoop() {
  Set<int> numbers = {1, 2, 3, 16, 10};

  for (var number in numbers) {
    print("Los numeros con este for son: $number");
  }
  numbers.forEach(print);
}

void mapLoop() {
  Map<String, int> people = {"Alice": 30, "Bob": 25, "Charlie": 35};

  //for (var key in people.keys) {
  //  print("Las llaves son: $key");
  //}

  //for (var value in people.values) {
  //  print("Los valores son: $value");
  //}

  //for (var entry in people.entries) {
  //print("Las llaves son ${entry.key}, y los valores son: ${entry.value}");
  //}

  people.forEach((key, value) {
    print("La llave es $key, y el valor es $value");
  });
}

void mapExample() {
  Map<String, int> people = {"Alice": 30, "Bob": 25, "Charlie": 35};
  people.addAll({"David": 28, "Eve": 22});
  //print(people["Alice"]); // Output: 30
  people["David"] = 28;
  //print(people); // Output: {Alice: 30, Bob: 25, Charlie: 35, David: 28}
  people.remove("Bob");
  print(people); // Output: {Alice: 30, Charlie: 35, David: 28}
  print(people.keys);
  print(people.values);

  people.containsKey("Alice");
  people.containsValue(30);
  people.length;
  people.clear();
}

void setExample() {
  Set<String> names = {"Alice", "Bob", "Charlie"};
  Set<String> names2 = {"Alice", "Charlie"};

  //names.removeAll(names2);

  //names.add("Alice");
  //names.add("David");
  //print(names);

  /*if (names.contains("Alice")) {
    print("Alice esta invitada");
  } else {
    print("Alice no esta invitada");
  }*/

  List<String> names3 = ["Alice", "Alice", "Bob"];
  Set<String> mewNames = names3.toSet();
  print(mewNames); // Output: {Alice, Bob}
}

void listExample() {
  List<String> names = ['Alice', 'Bob', 'Charlie'];
  var names2 = ["Carlos", "Juan", "Maria"];

  // print(names.last);
  //print(names.first);
  //print(names[0]); // Output: Alice
  //print(names.length); // Output: 3
  names.add("David");
  //print(names); // Output: [Alice, Bob, Charlie, David]
  names[1] = "Eve";
  names.addAll(names2);
  //print(names); // Output: [Alice, Eve, Charlie, David, Carlos, Juan, Maria]
  names.remove("Charlie");
  names.removeAt(3);
  names.insert(5, "Anna");
  print(names); // Output: [Alice, Eve, David, Carlos, Juan, Anna, Maria]
  names.clear();
}

void examplesBefore() {
  var name = 'Dart';
  var age = 10;

  print(age);
  print(name);

  int numero1 = 10;
  double pi = 3.14;
  num numero2 = 20;
  String name1 = 'Dart';

  bool isTrue = true;

  dynamic variable = "Hello";

  print(variable);

  String toNumber = "1029";
  int number1 = int.parse(toNumber);
  print(number1);

  int a = 20;
  int b = 10;

  int result = a ~/ b;
  print("El resultado es: $result");

  String date = "1993";
  int sdateInt = int.parse(date);
  const int currentDate = 2025;

  int ageFinal = currentDate - sdateInt;

  print("Tienes $ageFinal años");

  double total = 2499.99;
  int propina = 30;

  double finalPrice = (total + (total * propina / 100));
  int people = 4;
  int pricePerson = finalPrice ~/ people;

  print(
    "El precio total a pagar incluyendo propina es: ${finalPrice.toStringAsFixed(2)}",
  );
  print("El precio a pagar por persona es: $pricePerson");

  print("Ingrese un numero:");
  int number3 = int.parse(stdin.readLineSync()!);

  if (number3 > 0) {
    print("El numero es positivo");
  } else if (number3 < 0) {
    print("El numero es negativo");
  } else {
    print("El numero es 0");
  }
}

void excersise() {
  print("Ingrese un numero:");
  int mes = int.parse(stdin.readLineSync()!);

  switch (mes) {
    case 1:
      print("El mes es Enero");
      break;
    case 2:
      print("El mes es Febrero");
      break;
    case 3:
      print("El mes es Marzo");
      break;
    case 4:
      print("EL mes es Abril");
      break;
    case 5:
      print("El mes es Mayo");
      break;
    case 6:
      print("El mes es Junio");
      break;
    case 7:
      print("El mes es Julio");
      break;
    case 8:
      print("El mes es Agosto");
      break;
    case 9:
      print("El mes es Septiembre");
      break;
    case 10:
      print("El mes es Octubre");
      break;
    case 11:
      print("El mes es Noviembre");
      break;
    case 12:
      print("El mes es Diciembre");
      break;
    default:
      print("Numero de mes no valido");
  }
}
