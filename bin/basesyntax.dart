
String greet(String name) {
  return 'Привет, $name!'; // Обычная функция
}

// Стрелочные функции
String greetArrow(String name) => 'Привет, $name!';
int square(int x) => x * x;
double half(double x) => x / 2;

// Именованные параметры
void describePet({required String name, String species = 'кот', int age = 0}) {
  print('$name – $species, возраст $age');
}

// Необязательный позиционный параметр
String repeat(String text, [int times = 2]) {
  String result = '';
  for (int i = 0; i < times; i++) {
    result += text;
  }
  return result;
}

void main() {

  String name = 'Артём';
  int age = 20;
  double height = 1.75;
  bool isStudent = true;
  
  print('2.1 Переменные');
  print(name); print(age); print(height); print(isStudent);

  print('2.2 Интерполяция');
  print('Привет, $name! Тебе $age лет.');
  print('Через 5 лет тебе будет ${age + 5} лет.');
  print('Рост: ${height} м, студент: $isStudent');

  print('2.3 Вывод типа');
  var score = 95;
  var language = 'Dart';
  print('$language: $score');

  print('2.4 - 2.5');
  const String appName = 'Lab1';
  final int startYear = 2026;
  print('$appName started in $startYear');

  print('2.6');
  String? city = null;
  print(city?.toUpperCase()); // вернет null
  String? nickname = null;
  String display = nickname ?? 'Аноним';
  print(display); // Аноним

  print('2.7 Коллекции');
  List<String> fruits = ['яблоко', 'банан', 'груша'];
  fruits.add('апельсин');
  print(fruits[0]);
  print('Длина списка: ${fruits.length}');

  Map<String, dynamic> person = {'name': 'Артём', 'age': 20};
  person['city'] = 'Волжский';
  print('Имя из Map: ${person['name']}');

  Set<int> ids = {1, 2, 3, 2, 1};
  print('Set без дубликатов: $ids');


  
  print('\n--- 3.1 - 3.5 Вызовы Функций ---');
  print(greet('Артём'));
  print(greetArrow('Мария'));
  describePet(name: 'Барсик', age: 3);
  describePet(name: 'Шарик', species: 'пёс');
  print(repeat('xa'));
  
  // Анонимные функции
  List<int> numbers =;
  numbers.sort((a, b) => b - a);
  print('Сортировка по убыванию: $numbers');



  print('ЧАСТЬ 4. Управляющие конструкци');
  int score2 = 85;
  String grade = score2 >= 90 ? 'A' : (score2 >= 75 ? 'B' : 'C');
  print('Оценка по условию: $grade');

  print('Цикл for:');
  for (int i = 0; i < 3; i++) { print(i); }

  String day = 'Пн';
  switch (day) {
    case 'Сб': case 'Вс': print('Выходной'); break;
    case 'Пн': print('Начало недели'); break;
    default: print('Рабочий день');
  }
}
