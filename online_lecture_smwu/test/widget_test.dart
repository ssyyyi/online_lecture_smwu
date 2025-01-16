

import 'collections/collections.dart';

void main() {
  Collections collections = Collections();
  collections.mapPractice();
  collections.setPractice();
}

void variableTest(){
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