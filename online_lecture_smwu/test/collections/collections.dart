class Collections {
  // List, Map, Set

  void listPractice(){
    List<String> list = [];
    list.addAll(["사자", "강아지", "고양이", "호랑이", "판다"]);
    list.removeAt(1);

    print(list);
  }


  void listAdd() {
    int age = 25;

    List<int> ageList = [];
    ageList.add(age);
    print("add 1 : $ageList");
    ageList.add(age);
    print("add 2 : $ageList");

    ageList.addAll([1, 3, 4, 5, 7]);
    print("add 3 : $ageList");

    ageList.insert(0, 100);
    print("add 4 : $ageList");
  }

  void listRemove() {
    List<String> nameList = [];
    nameList.addAll(["김진한", "신희정", "홍길동", "배채연"]);

    nameList.removeLast();
    nameList.removeAt(1);
    print("listRemove : $nameList");
    nameList.remove("홍길동");
    print("listRemove2 : $nameList");
    nameList.clear();
    print("listRemove3 : $nameList");
  }

  void listController(){
    List<int> ageList = [1,2,3,4,5,6,7,8,9,10];
    ageList.length;
    print("listController 1: ${ageList.length}");

    int ageFirst = ageList.first;
    int ageLast = ageList.last;
    print("ageFirst : $ageFirst, ageLast: $ageLast");

    int ageFour = ageList[3];
    print("ageFour : $ageFour");
  }
}