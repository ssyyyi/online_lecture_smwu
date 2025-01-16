class Collections {
  // List, Map, Set

  void listPractice(){
    List<String> list = [];
    list.addAll(["사자", "강아지", "고양이", "호랑이", "판다"]);
    list.removeAt(1);

    print(list);
  }

  void mapPractice(){
    Map<String, int> nameAge2 = {};
    nameAge2.addAll({"신희정": 25, "유지민": 26, "이여름": 28});

    nameAge2.removeWhere(
        (key, value){
          return key == "유지민";
        },
    );
    print(nameAge2);
    nameAge2["시니정"] = 24;
    nameAge2["배채연"] = 18;
    nameAge2["이연우"] = 32;
    nameAge2.remove("배채연");
    print(nameAge2);
  }
  void setPractice(){
    Set<String> country = {};
    country.add("한국");
    country.add("미국");
    country.add("일본");
    country.add("이탈리아");
    country.add("스위스");
    country.remove("한국");
    print(country);

    country.removeWhere((element) => element == "일본",);
    print(country);
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

  void collectionMap(){
    Map<String, int> nameAgeMap = {};
    nameAgeMap["신희정"] = 25;
    print(nameAgeMap);

    Map<String, dynamic> dynamicMap = {};
    dynamicMap["a"] = true;
    dynamicMap["b"] = 2;
    dynamicMap["c"] = "고양이";
    print(dynamicMap);
    print("get dynamicMap : ${dynamicMap["b"]}");

    dynamicMap.remove("c");
    print("remove dynamicMap: $dynamicMap");
    dynamicMap.length;
    dynamicMap.clear();
  }

  void collectionSet(){
    Set ss = {};
    ss.add("a");
    ss.add(1);
    print("collectionSet 1 : $ss");

    ss.remove("a");
    print("collectionSet 2 : $ss");

  }
}