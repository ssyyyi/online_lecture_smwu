import 'collections/collections.dart';
import 'oop/person.dart';
import 'oop/product.dart';

void main() {
  //Collections collections = Collections();
  //collections.mapPractice();
  //collections.setPractice();

  Person person1 = Person("신희정", 25, 46.0);
  print('person1: $person1');

  String talk1 = person1.talk("임유리");
  print(talk1);

  List<Person> personList = [];
  personList.addAll([
    Person("강휘혈", 25, 72.4),
    Person("방지민", 21, 43.5),
    Person("김채현", 28, 45.6),
  ]);
  var talk2 = personList[1].talk(personList[0].name);
  print(talk2);

  Product(name: "아메리카노", company: "스타벅스", price: 3000);

  //var product = Product("아메리카노", "스타벅스");
  //print(product);
  //product.sale();
  //product.sale();
  //print(product);
}

void variableTest() {
  //타입  변수명 할당  값
  String name = "신희정";
  print(name);

  double weight = 36;
  print(weight);

  int age = 25;
  print(age);

  bool b = true;
  print(b);

  var name2 = "신희정";
  //name2 = 2; 는 안됨(name2를 string으로 인식하기 때문에)
  dynamic name3 = "신희정";
  name3 = 2;
  name3 = false;
  print(name3);

  // 상수를 final, const로 입력
  const name5 = "시니정"; //변경 불가

  int? age2 = null;

  age2 = 1;
}
