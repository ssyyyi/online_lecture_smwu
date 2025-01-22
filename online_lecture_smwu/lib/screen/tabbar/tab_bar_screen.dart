import 'package:flutter/material.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController = TabController(length: 8, vsync: this);
  String selectedTab = "none";
  List<String> labelList = ["강아지", "고양이", "호랑이", "사슴", "코끼리", "사자", "뱀", "원숭이"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("TabBar"),
      ),
      body: Column(
        children: [
          Text(selectedTab),
          TabBar(
              controller: tabController,
              onTap: (value) {
                selectedTab = labelList[value];
                setState(() {});
                print(value);
              },
              isScrollable: true,
              labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              unselectedLabelStyle:
                  TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              overlayColor: WidgetStateProperty.all(Colors.blue.shade100),
              splashBorderRadius: BorderRadius.circular(10),
              // indicatorColor: Colors.purple,
              indicatorSize: TabBarIndicatorSize.tab,
              // indicatorWeight: 10,
              indicator: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 3, color: Colors.green),
              ),
              dividerHeight: 10,
              dividerColor: Colors.red[400],
              padding: EdgeInsets.all(30),
              labelPadding: EdgeInsets.symmetric(horizontal: 10),
              tabs: [
                ...List.generate(
                  labelList.length,
                  (index) {
                    return Tab(
                      text: labelList[index],
                    );
                  },
                ),
              ]),
        ],
      ),
    );
  }
}
